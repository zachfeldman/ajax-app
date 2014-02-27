##An AJAX Request Test App

This Sinatra app has one purpose: to try testing different kinds of AJAX requests. There are several routes that each return a different kind of information. These include:

###/state

Takes a state_code, returns information about a state. 

Example Data: 
{state_code: NY} 
Returns: 
Object {type: "state", name: "New York"}

###/geolocate

Takes an ip_address, returns information on that IP address. 

Example Data: 
{ip_address: "192.76.2.114"} 
Returns: 
"{"ip":"192.76.2.114","country_code":"US","country_name":"United States","region_code":"CA","region_name":"California","city":"Van Nuys","zipcode":"91411","latitude":34.1792,"longitude":-118.4616,"metro_code":"803","areacode":"818"}"