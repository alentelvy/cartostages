
#########################################################################
# This script collects information from 2 informatics pages of DUMAS db #
#########################################################################
import scrapy
from scrapy.crawler import CrawlerProcess
import requests
import csv

class Info(scrapy.Spider):
    
    name = 'quotes'  
    

    def start_requests(self):
        
        urls = ['https://dumas.ccsd.cnrs.fr/search/index/?q=%2A&domain_t=info.info-tt',
                'https://dumas.ccsd.cnrs.fr/search/index/?q=%2A&domain_t=info.info-cl'
            ]

         #ignore redirection
        handle_httpstatus_list = [302], [200]

        self.sujetlist = []
        self.authorlist = []  
        self.organismelist = []
        self.yearlist = []
        self.linklist =[]

        for url in urls:
            yield scrapy.Request(url = url, dont_filter=True, callback=self.parse)
    
    #parse initial page
    def parse(self, res):

        #extract links to the next page 
        links = res.css('div.media-body').css('a.ref-halid::attr(href)').getall()
        
        #follow links recursively
        for link in links:
            yield res.follow(url=link, callback=self.parse_link)
                        

    #parse thesis page
    def parse_link(self, res):
        
        #get the links
        response = str(res)[5:-1]
        self.linklist.append(response)
        
        #get the year 
        year = res.css('div.widget-content.ref-biblio ::text').getall()
        year = ''.join(year)
        year = year.split('.')[-2]
        self.yearlist.append(year) 
         
               
        #get the thesis title
        sujet = res.css('h1.title ::text').get()
        sujet = sujet.strip()
        self.sujetlist.append(sujet)

        #get the author     
        author = res.css('span.author a::text').get()
        author = author.strip()
        self.authorlist.append(author)
        
        #get the university and company name 
        for i in res.css('div.authors').css('div.structs'):              
            organisme = i.css('div.struct a::text').getall()
            organisme = list(map(lambda s: s.strip(), organisme))
            self.organismelist.append(organisme)

    
    #get the value of all variables after the code execution, write it down into csv file      
    def closed(self, reason): 
        self.cpt = len(self.yearlist)
        fieldnames = ["id", "year", "sujet", "author", "organisme", "link"]
        
        with open('./informatics.csv', 'w') as file:
            writer = csv.DictWriter(file, fieldnames=fieldnames)
            writer.writeheader()    
            for i in range(len(self.yearlist)):
                writer.writerow({
                    'id': i,
                    'year': self.yearlist[i],
                    'sujet': ''.join(self.sujetlist[i]),
                    'author': self.authorlist[i],
                    'organisme': ' ,'.join(self.organismelist[i]),
                    'link': self.linklist[i]
                })

# main driver
if __name__ == '__main__':
    # run scraper
    process = CrawlerProcess()
    process.crawl(Info)
    process.start() 

