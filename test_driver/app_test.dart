import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Homebrew App - ', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('given that I select "french press" and want to make "5" cups then I should see the recommended settings and be taken back home when I am done', () async {
      //expect to see HOMEBREW
      final homebrewTextFinder = find.byValueKey('homebrew-text');

      expect(await driver.getText(homebrewTextFinder), "HOMEBREW");

      //expect to see "What coffee maker are you using?"
      final coffeemakerTextFinder = find.byValueKey('coffeemaker-text');

      expect(await driver.getText(homebrewTextFinder), "What coffee maker are you using?");
      
      //tap "french press"
      final frenchpressBtnFinder = find.byValueKey('french-press-selector');

      await driver.tap(frenchpressBtnFinder);
      //tap continue
      final continueBtnFinder = find.byValueKey('continue-btn');

      await driver.tap(continueBtnFinder);
      //expect to see "How many cups would you like?"
      final cupsTextFinder = find.byValueKey('cups-text');

      expect(await driver.getText(cupsTextFinder), "How many cups would you like?");      
      //tap in the text field
      final cupTextField = find.byValueKey('cup-textfield');

      await driver.tap(cupTextField);
      await driver.enterText("5");

      // tap 5
      final continuecupsBtnFinder = find.byValueKey('cups-continue-btn');

      await driver.tap(continuecupsBtnFinder);

      //tap continue
      final lastcontinueBtnFinder = find.byValueKey('continue-btn');

      await driver.tap(lastcontinueBtnFinder);
      //expect to see "Recommended"
      final recTextFinder = find.byValueKey('rec-text');

      expect(await driver.getText(recTextFinder), "Recommended");
      //expect to see "84 - course ground coffee"
      final reccoffeeTextFinder = find.byValueKey('rec-grounds-text');

      expect(await driver.getText(reccoffeeTextFinder), "84g - course ground coffee");


      //expect to see "1183g - water"
      final recwaterTextFinder = find.byValueKey('rec-water-text');

      expect(await driver.getText(recwaterTextFinder), "1183g - water");

      //tap "Done"
      final doneBtnFinder = find.byValueKey('done-btn');

      await driver.tap(doneBtnFinder);
      //expect to see "What coffee maker are you using?"
      expect(await driver.getText(coffeemakerTextFinder), "What coffee maker are you using?");
      

    });

  });
}