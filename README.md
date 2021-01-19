# Homebrew

A  Flutter app for crafting the perfect cup of coffee. Developed utilizing unit, widget, and integration tests.


# Widget Tests

We use unit test to test our pure classes, functions etc. and logic but now to test Widget we use Flutter's Test Widget package it work in the same manner as unit tests but provide tools to interact with Widgets 
like tapping buttons, finding text, entering text, searching the widget tree.

```console
flutter test test/widget_test.dart
```

Or in your IDE

1. Open the test/widget_test.dart file
2. While in the test/widget_test.dart file
3. Select the Debug menu
4. Click the Run Without Debuging option



# Integration Tests

Unit tests and widget tests are handy for testing individual classes, functions, or widgets. While Integration Test test applications as a whole running on a device. It tests UI as well as the flow between screens.

To run the Integration Test you will need a device connected or a simulator running.

Use the following command to run the integration tests

```console
flutter drive --target=test_driver/app.dart
```



## Overview of integration tests

At a highlevel the integration test works like how a user would interact with the app.

It makes sure the user can go from the Main Screen to the Game Screen and play the game. We know the game logic works because of our unit test now we need to test that the UI shows this interactions as the user plays and tries diffrent cases. The integration test runs various cases like inputting correct, wrong, duplicate, invalid guesses. As well as testing the flow from the Game Page to Winning or Losing Page.





