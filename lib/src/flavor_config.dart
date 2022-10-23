/// Copyright (c) 2023, Steve Rogers. All rights reserved. Use of this source code
/// is governed by an Apache License 2.0 that can be found in the LICENSE file.
import 'package:flutter/material.dart';
import 'flavor_banner_config.dart';

/// This is the main class that is used to define the settings for a Flavor
/// [name] is the name of the flavor (i.e. DEV, TEST,PROD)
/// [isProduction] is a flag to determine if the flavor is a production flavor(tis means no banner is displayed)
/// [color] is the color to use for the banner
/// [attributes] one or more attrbutes that are set up for each flavor
class FlavorConfig {
  final FlavorBannerConfig _banner;
  final String name;
  final bool isProduction;
  final Color color;
  final Map<String, dynamic> attributes;

  FlavorConfig(
      {required this.name,
      this.isProduction = false,
      this.color = Colors.brown,
      required this.attributes})
      : _banner =
            FlavorBannerConfig(name, color: color, isProduction: isProduction);

  FlavorBannerConfig get banner {
    return _banner;
  }
}
