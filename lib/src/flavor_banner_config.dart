/// Copyright (c) 2023, Steve Rogers. All rights reserved. Use of this source code
/// is governed by an Apache License 2.0 that can be found in the LICENSE file.
import 'package:flutter/material.dart';

/// Utility class that defines the Flavor banner configuration. THis is usually on created indirectly by [FlavorConfig]
/// [name] the name of the flavor
/// [isProduction] a flag to determine if the flavor is a production flavor
/// [color] will be the color of the banner that is shown (if any)
class FlavorBannerConfig {
  final String name;
  final bool isProduction;
  final Color color;

  FlavorBannerConfig(this.name,
      {this.isProduction = false, this.color = Colors.blue});
}
