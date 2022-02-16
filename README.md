
# Covid Update Feed

Covid Update Feed is a single screen app that fetches data from the UK government's 
API for coronavirus announcements.

It was my first experience of creating
my own app from scratch. 

Before this, I had only ever followed tutorials from
Hacking with Swift or various YouTube channels.

This app features a few core principles of iOS development I knew that I would
use frequently in the future, and it was from working with these principles
and the fun I had implementing them, that fuelled my decision to change careers


## Features

- MVVM Architecture
- API Call (*@escaping closure syntax*)
- SwiftUI 
    - Navigation View
    - ScrollView
    - LazyVGrid



## Screenshots

![App Screenshot](https://i.imgur.com/dKSkfVK.png)


## Tech Stack

**Language:** Swift

**User Interface:** SwiftUI 


## API Reference
#### Base URL
```http
https://api.coronavirus.data.gov.uk/generic/
```
#### Retrieve all Announcements
```http
GET /annoucements

