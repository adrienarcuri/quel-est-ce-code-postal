import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing App Performance Tests', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('Scrolling test', () async {});

    // TODO : write it
  });
}
