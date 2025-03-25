import 'package:flutter_test/flutter_test.dart';
import 'package:shift_software_adp/models/utils/vin_validator.dart';

void main() {
  List<Map<String, Object>> testItems = [
    {"vin": "2FMZA51412BA68470", "expected": true},
    {"vin": "2FMZA51412BA68430", "expected": false},
    {"vin": "2FMZA51412BA68420", "expected": false}
  ];

  test('Test VIN validation', () {
    testItems.forEach((testItem) {
      String vin = testItem["vin"] as String;
      bool expected = testItem["expected"] as bool;

      bool result = VINValidator.isVinValid(vin);
      print(result);
      expect(result, expected);
    });
  });
}
