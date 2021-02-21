#############################################################################################
#This script gets organization name, finds its coordinates and generates HTML page with map #
#Finding all the coordinates takes some time, so please wait till the complete execution    #
#############################################################################################

from geopy.geocoders import Nominatim
from functools import partial
import csv 
import folium
from folium.plugins import MarkerCluster

#read csv file and extract organization names 
add = ""
addpaires = []         
with open('./map/sep.csv', 'r') as rf:
    reader = csv.reader(rf, delimiter=';')
    for row in reader:
        #normalize text in case like LIFAT / LIFO
        if " / " in row[2]:
            lab1 = row[2].split("/")[0]
            if lab1 not in addpaires: 
                addpaires.append(lab1)
            lab2 = row[2].split("/")[1]
            if lab1 not in addpaires: 
                addpaires.append(lab2)
        #normalize text in case like Airbus & LIPN
        elif " & " in row[2]: 
            lab3 = row[2].split("&")[0]
            if lab3 not in addpaires: 
                addpaires.append(lab3)
            lab4 = row[2].split("&")[1]
            if lab4 not in addpaires: 
                addpaires.append(lab4)
        #write lab + city in other cases 
        else: 
            add = row[2] + " " + row[3]
            if add not in addpaires: 
                addpaires.append(add)
del addpaires[0]
print(addpaires)

#get coordinates for each organization name, use french language 
geolocator = Nominatim(user_agent="alentelvy")
geocode = partial(geolocator.geocode, language="fr")
locations = []
loclist= []
for a in addpaires:
    location = geolocator.geocode(a, country_codes="fr")
    if location is not None:
        locations = [location.raw['display_name'], location.latitude, location.longitude]
        loclist.append(locations)
print(loclist)

#create map, France is an entry point
m = folium.Map(location=['48.857524', '2.294999'],  zoom_start=16)
tooltip = "info"

#for each pair of coordinates point marker on the map with organization info tooltip
for i in range(len(loclist)):
    name = loclist[i][0]
    lat = loclist[i][1]
    long = loclist[i][2]        
    folium.Marker([lat, long], popup="<i>"+ name+ "</i>", tooltip=tooltip).add_to(m)

#generate html page in cartostages folder
m.save("./cartostages/folium_map.html")

