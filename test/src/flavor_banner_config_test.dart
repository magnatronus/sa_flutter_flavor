import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sa_flutter_flavor/sa_flutter_flavor.dart';

void main() {
  group("FlavorBannerConfig", () {
    test('should only need a name to be created', () {
      final config = FlavorBannerConfig("TEST");
      expect(config, isInstanceOf<FlavorBannerConfig>());
    });
    test('should  set isProduction to false by default', () {
      final config = FlavorBannerConfig("TEST");
      expect(config.isProduction, false);
    });
    test('should  set isProduction to true if set', () {
      final config = FlavorBannerConfig("TEST", isProduction: true);
      expect(config.isProduction, true);
    });
    test('should  allow a banner color to be set', () {
      final config = FlavorBannerConfig("TEST", color: Colors.green);
      expect(config.color, Colors.green);
    });
  });
}
