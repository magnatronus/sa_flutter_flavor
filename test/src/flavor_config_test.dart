import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sa_flutter_flavor/sa_flutter_flavor.dart';

void main() {
  group("FlavorConfig", () {
    test("should only need a name and empty attribute set to be created", () {
      final config = FlavorConfig(name: "TEST", attributes: {});
      expect(config, isInstanceOf<FlavorConfig>());
    });
    test(
        "should set up the banner as a FlavorBannerConfig with the specified attributes",
        () {
      const flavorName = "TEST";
      const flavorColor = Colors.green;
      final config =
          FlavorConfig(name: flavorName, color: flavorColor, attributes: {});
      expect(config.banner, isInstanceOf<FlavorBannerConfig>());
      expect(config.banner.name, flavorName);
      expect(config.banner.color, flavorColor);
    });
  });
}
