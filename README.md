Original App Design Project
===

# My Weather Tracker

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

- [ ] [Launch Screen]
* Weather themed background image
* App title
- [ ] [Home Screen]
* User can view the current temperature
* user can view the current city name
* user can view the weather icon
- [ ] [Search Screen]
* user can search for a specific city

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Tap a magnifying glass icon to jump to the search screen
* Tap the input text field to enter city name
* Tap weather icon to play sound

**Flow Navigation** (Screen to Screen)
There will be 2 screens in total excluding the launch screen.

- [ ] [Home Screen]
* => Search Screen
- [ ] [Search Screen]
* => Home Screen
**Note**: Once the user enters the city name in the search bar, the app will move back to the home screen but instead of displaying its current city's weather information it will display the searched city's weather information.

## Wireframes

[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]