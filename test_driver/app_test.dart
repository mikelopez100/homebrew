import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'dart:io';

void main() {
  group('Homebrew App - ', () {
    FlutterDriver driver;
    final timeoutV = Timeout.factor(int.tryParse(Platform.environment["CMTV"] ?? '16'));
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

  group("Acceptance Test", () {

  test('given that I select "french press" and want to make "5" cups then I should see the recommended settings and be taken back home when I am done', () async {
      //expect to see HOMEBREW
      final homebrewTextFinder = find.byValueKey('homebrew-text');

      expect(await driver.getText(homebrewTextFinder), "HOMEBREW");

      //expect to see "What coffee maker are you using?"
      final coffeemakerTextFinder = find.byValueKey('coffeemaker-text');

      expect(await driver.getText(coffeemakerTextFinder), "What coffee maker are you using?");
      
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

      //expect to see "Recommended"
      final recTextFinder = find.byValueKey('rec-text');

      expect(await driver.getText(recTextFinder), "Recommended");
      //expect to see "84 - course ground coffee"
      final reccoffeeTextFinder = find.byValueKey('rec-grounds-text');

      expect(await driver.getText(reccoffeeTextFinder), "84g - coarse ground coffee");


      //expect to see "1183g - water"
      final recwaterTextFinder = find.byValueKey('rec-water-text');

      expect(await driver.getText(recwaterTextFinder), "1183g - water");

      //tap "Done"
      final doneBtnFinder = find.byValueKey('done-btn');

      await driver.tap(doneBtnFinder);
      //expect to see "What coffee maker are you using?"
      expect(await driver.getText(coffeemakerTextFinder), "What coffee maker are you using?");
      

    });
  
  test('given that I select "drip machine" and want to make "5" cups then I should see the recommended settings and be taken back home when I am done',() async{

      //expect to see "What coffee maker are you using?"
      final coffeemakerTextFinder = find.byValueKey('coffeemaker-text');

      expect(await driver.getText(coffeemakerTextFinder), "What coffee maker are you using?");
      
      //tap "french press"
      final frenchpressBtnFinder = find.byValueKey('drip-machine-selector');

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

      //expect to see "Recommended"
      final recTextFinder = find.byValueKey('rec-text');

      expect(await driver.getText(recTextFinder), "Recommended");
      //expect to see "84 - course ground coffee"
      final reccoffeeTextFinder = find.byValueKey('rec-grounds-text');

      expect(await driver.getText(reccoffeeTextFinder), "70g - medium ground coffee");


      //expect to see "1183g - water"
      final recwaterTextFinder = find.byValueKey('rec-water-text');

      expect(await driver.getText(recwaterTextFinder), "1183g - water");

      //tap "Done"
      final doneBtnFinder = find.byValueKey('done-btn');

      await driver.tap(doneBtnFinder);
      //expect to see "What coffee maker are you using?"
      expect(await driver.getText(coffeemakerTextFinder), "What coffee maker are you using?");
  });

  test('given that I make it to the deepest screen I should be able to back myself to the first screen', () async {
    //expect to see "What coffee maker are you using?"
      final coffeemakerTextFinder = find.byValueKey('coffeemaker-text');

      expect(await driver.getText(coffeemakerTextFinder), "What coffee maker are you using?");
      
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

      //expect to see "Recommended"
      final recTextFinder = find.byValueKey('rec-text');

      expect(await driver.getText(recTextFinder), "Recommended");
      //expect to see "84 - course ground coffee"
      final reccoffeeTextFinder = find.byValueKey('rec-grounds-text');

      expect(await driver.getText(reccoffeeTextFinder), "84g - coarse ground coffee");


      //expect to see "1183g - water"
      final recwaterTextFinder = find.byValueKey('rec-water-text');

      expect(await driver.getText(recwaterTextFinder), "1183g - water");

      driver.tap(find.byTooltip('Back'));
      driver.tap(find.byTooltip('Back'));

      expect(await driver.getText(coffeemakerTextFinder), "What coffee maker are you using?");
      
  });

  test('given that Im at the home screen I should not be able to continue without selecting a coffee maker first', () async {
      final frenchpressBtnFinder = find.byValueKey('french-press-selector');

      await driver.tap(frenchpressBtnFinder);

      final continueBtnFinder = find.byValueKey('continue-btn');

      await driver.tap(continueBtnFinder);

      final coffeemakerTextFinder = find.byValueKey('coffeemaker-text');

      expect(await driver.getText(coffeemakerTextFinder), "What coffee maker are you using?");
  });
    test('given that Im at the cups screen I should not be able to continue without entering the amount of cups first', () async {
      final frenchpressBtnFinder = find.byValueKey('french-press-selector');

      await driver.tap(frenchpressBtnFinder);

      final continueBtnFinder = find.byValueKey('continue-btn');

      await driver.tap(continueBtnFinder);

      final cupsTextFinder = find.byValueKey('cups-text');

      expect(await driver.getText(cupsTextFinder), "How many cups would you like?");

      final continuecupsBtnFinder = find.byValueKey('cups-continue-btn');

      await driver.tap(continuecupsBtnFinder);

      expect(await driver.getText(cupsTextFinder), "How many cups would you like?");
    });
    }, timeout: timeoutV);
  });

  
}