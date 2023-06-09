# Flutter with GetX
This is a Flutter application that fetches user data from the JSONPlaceholder API and displays their posts. The app utilizes the GetX package for state management.

## Demo


  
https://github.com/rifaturrana/flutter_getx/assets/82287698/696ae9d2-033b-4ff4-aa09-61f64f627cd4
  



## Installation
Clone the repository:

```bash
git clone https://github.com/rifaturrana/flutter_getx.git
```

## Install the dependencies:

```bash
flutter pub get
```
## Run the app:

```
flutter run
```

## Configuration
To make API calls, the app is already configured to use the JSONPlaceholder API. No additional configuration is required.

## Usage
The app demonstrates a simple flow where user data is fetched from the JSONPlaceholder API, and for each user, their posts are fetched and displayed.

On app launch, the user data is fetched from the JSONPlaceholder API and displayed on the home screen.

Tap on a user to view their posts. The app will make another API call to fetch the posts for that user.

The posts are displayed on the screen, and you can navigate back to the home screen to select another user.

## State Management with GetX

GetX is a powerful state management solution for Flutter that simplifies reactive programming and makes it easy to handle state changes. In this app, GetX is used to manage the app's state and update the UI when necessary.

The core concepts used in GetX are:

Controllers: Controllers are responsible for managing the state and business logic of specific parts of the app. In this app, we have a UserController and a PostController to manage the user and post data, respectively.

GetXBuilder: The GetXBuilder widget is used to observe changes in the controller's state and update the UI accordingly. It allows you to listen to specific variables or the entire controller, triggering a rebuild whenever the observed values change.

Dependency Injection: GetX provides a built-in dependency injection system that makes it easy to inject dependencies into controllers. In this app, the controllers are injected into the respective screens using GetX's Get.put() method.

## API Integration
The app integrates with the JSONPlaceholder API to fetch user data and their posts. The API endpoints used are:

Users API: https://jsonplaceholder.typicode.com/users

This endpoint provides a list of users and their details.

Posts API: https://jsonplaceholder.typicode.com/posts?userId={userId}

This endpoint provides a list of posts for a specific user. Replace {userId} with the ID of the selected user.

## Conclusion
This Flutter app demonstrates how to fetch user data from the JSONPlaceholder API and display their posts using the GetX package for state management. It
