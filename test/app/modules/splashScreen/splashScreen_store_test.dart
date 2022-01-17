import 'package:flutter_test/flutter_test.dart';
import 'package:cuco_health_flutter/app/modules/splashScreen/splashScreen_store.dart';
 
void main() {
  late SplashScreenStore store;

  setUpAll(() {
    store = SplashScreenStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}