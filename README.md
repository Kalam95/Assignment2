# Assignment2
By xebia

This is an assignement asked by xebia to be done by me. i have made this git repo as public.


The project is about the List of newYour times most popular articles.

you need to have xcode 11.3 in order to execute this project or with lower versions you need to change the deployement target of the app. once you get xcode you need to double click the .xcodeproject file and then you can runn it by pressing *cmd + R*
# Initial view controller
* Landing screen for the app where there is card view and user can sither search by city name or visit current city

# Weatherforecast contoller
* This projects contains a view contoller whisch is handling the table view and the listing part of the application it is registered with custom cell which shows:
1. List of cities associated with their forcast if search if fro multiple cities else list of 5 days report for current city
2. each cell contains: name of city or time, wind speed, temperature(min, max), description

#  Network manager
* Then it contains Network manager which is a singleton class used to manage api request it is handling request and its reponses with generic. 
      * you jsut need to make you model to confirm a protococal i.e *parsebale* and rest work will be done by this manager it will take url and and request paramenets and it will resturn you the model type you provide it, provided that model must be having thoses keys which are supposed to be there.

# ViewModel
This project is made with MVVM Pattern, and hence has a file viewMdoel which manageing the processing part like apis responses parsing, data source and delegates items for viiews and assoiacted with dynamic binding with view.

# Models
There are 3 model files 
1. Forecast, which consists of 3 sub model that are: wind, temperature, description of weather.
2. Observable: It is the generic class youf binding purposed in view and view models
3. Parsable: It is used to manage the parsing standar in the projects every this which can come from server and need to be paresed to some data model, then that model must confirm this protocal. And rest is abstraction which is managed by the extensions of inbuilt classes and Network managers

# Uitilies 
Files like constanst, color and theme  are there in this sections. And extensions of [Data, Dictionary, Array, String, etc]

# Uinit Testing 
I have implemented one api test case as uinit testing as i found that that test was enough for the application as this application is  2 screen application and every logic comes under that single test case.

I have written a test case for my json parsing




