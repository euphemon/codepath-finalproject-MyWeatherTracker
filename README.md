Original App Design Project
===

# My Weather Tracker
** Make sure you open the Weather.xcworkspace file to start the Xcode application **

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

[An app that uses location GPS tracker to display the weather information at where the user is currently at. It also has a search option so that the user can search for the weather information of any specific city they want.]

### App Evaluation

[Evaluation of your app across the following attributes]
- **Category:** Weather
- **Mobile:** Mobile platform makes it easy for users to look up weather information. The app tracks the user's phone's GPS location and return the real-time weather data. 
- **Story:** Benefit all users that want to know the weather information of their lcoation. In addition to that, they can also be benefited from searching for other city's weather information.
- **Market:** Any individual could utilize this app.
- **Habit:** Users can use this app many times in the day. Everytime they open the app it will display the real-time weather information from the API.
- **Scope:** The previous weather app we have implemnted in the lab does not feature location tracker or the search options. This new weather app will become more practical but harder to implement at the same time. However, it should still be doable since we have already learned on how to parse JSON data and use navigation controls.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can view the current temperature based on their precise location
* User can check the day's forecast (minimum and maximum temperature) for their current city
* user can see the weather icon for their current city
* User can search for their desired city and get its current temperature

**Optional Nice-to-have Stories**

* User can view other relevant weather info such as humidity and wind speed
* User can hear background music when viewing the weather information

### 2. Screen Archetypes

- [X] [Launch Screen]
* Weather themed background image
* App title
- [X] [Home Screen]
* User can view the current temperature
* user can view the current city name
* user can view the weather icon
- [X] [Search Screen]
* user can search for a specific city

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Tap a magnifying glass icon to jump to the search screen
* Tap the input text field to enter city name
* Tap weather icon to play sound

**Flow Navigation** (Screen to Screen)
There will be 2 screens in total excluding the launch screen.

- [X] [Home Screen]
* => Search Screen
- [X] [Search Screen]
* => Home Screen
**Note**: Once the user enters the city name in the search bar, the app will move back to the home screen but instead of displaying its current city's weather information it will display the searched city's weather information.

## Wireframes
![app_wireframe](https://github.com/euphemon/codepath-finalproject-MyWeatherTracker/assets/60558886/041b1c92-b638-4f44-9686-c02be3091ee2)


## Sprint
- [X] Sprint 1: Set up the project and complete the initial storybaord design
- [X] Sprint 2: Add view controller and complete the functionaility of the GPS tracking
- [X] Sprint 3: Complete the search functionlity of the search page
- [X] Sprint 4: Finalize the storyboard design

## Week 8 Video Demo
<div>
    <a href="https://www.loom.com/share/7a1959312fc243d29a6fec4460e2ddf2">
    </a>
    <a href="https://www.loom.com/share/7a1959312fc243d29a6fec4460e2ddf2">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/7a1959312fc243d29a6fec4460e2ddf2-with-play.gif">
    </a>
  </div>
  
## User Feature Completed
- [X] Launch Screen Design
- [X] Home Screen Design
- [X] Search Screen Design 

## Week 8 Reflection On Progress
I was able to create a basic storyboard for the project. I completed the launch screen, home screen, and the search screen. 
The challenges that I have faced with using the right constraints for auto layout. Sometimes when I add my constraints I would see the yellow lines on the screen which means the system is telling me something is off. I was able to fix all the issues and made sure the constrains worked for all other iphone types.
Next will be adding the GPS and search functionaility to different screens. 
If time allows, I'd like to make the storyboard look better, like changing the colors and fonts. 

## Week 9 Video Demo
<div>
    <a href="https://www.loom.com/share/0b16ee3ab4554f36810de150d1709c11">
    </a>
    <a href="https://www.loom.com/share/0b16ee3ab4554f36810de150d1709c11">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/0b16ee3ab4554f36810de150d1709c11-with-play.gif">
    </a>
  </div>

## Week 10 Final Video Demo
<div>
    <a href="https://www.loom.com/share/f68f8bd223be4193a082f38a3d563350">
      <p>Final Demo</p>
    </a>
    <a href="https://www.loom.com/share/f68f8bd223be4193a082f38a3d563350">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/f68f8bd223be4193a082f38a3d563350-with-play.gif">
    </a>
  </div>

## Schema 

### Models

WeatherData.swift
**
class Weather {
    var temp = " "
    var city = " "
    var tempMin = " "
    var tempMax = " "
    var description = " "
}
**

### Networking

- Current weather API from OpenWeather
- https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&units=imperial&appid=\(apiKey)
