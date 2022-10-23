/// Copyright (c) 2023, Steve Rogers. All rights reserved. Use of this source code
/// is governed by an Apache License 2.0 that can be found in the LICENSE file.
import 'package:flutter/material.dart';
import 'flavor_banner_config.dart';

/// Controls the position of the banner when displayed
enum FlavorBannerPosition { topLeft, topRight, bottomLeft, bottomRight }

/// This displays a Flavor Banner on the main app in the color specified by the flavor
/// This works by overlaying the banner onto the rest of the app [child]
/// The banner can be position in one of the corners of the app and is defined by [position]
/// this defaults to bottomLeft.
/// [bannerConfig] is taken from the current Flavor being used(via the [banner] attribute)
class FlavorBanner extends StatelessWidget {
  /// A child [Widget] the banner is displayed over
  final Widget child;

  /// The [FlavorBannerConfig] ised to determine the banner displayed
  final FlavorBannerConfig bannerConfig;

  /// The[FlavorBannerPosition] used to detrmine the position of any displayed Flavor banner
  final FlavorBannerPosition position;

  const FlavorBanner(
      {super.key,
      required this.child,
      required this.bannerConfig,
      this.position = FlavorBannerPosition.bottomLeft});

  @override
  Widget build(BuildContext context) {
    if (bannerConfig.isProduction) return child;
    return Stack(
      children: <Widget>[child, _positionBanner()],
    );
  }

  /// Position the Flavor banner on the screen
  Widget _positionBanner() {
    switch (position) {
      case FlavorBannerPosition.bottomLeft:
        return Positioned(
            bottom: 0,
            left: 0,
            child: _buildBanner(BannerLocation.bottomStart));
      case FlavorBannerPosition.bottomRight:
        return Positioned(
            bottom: 0, right: 0, child: _buildBanner(BannerLocation.bottomEnd));
      case FlavorBannerPosition.topLeft:
        return Positioned(
            top: 0, left: 0, child: _buildBanner(BannerLocation.topStart));
      case FlavorBannerPosition.topRight:
        return Positioned(
            top: 0, right: 0, child: _buildBanner(BannerLocation.topEnd));
    }
  }

  /// Draw the flavor banner in the [location] specified
  Widget _buildBanner(BannerLocation location) {
    return Banner(
        key: const Key("sa_flavor_banner"),
        message: bannerConfig.name,
        color: bannerConfig.color,
        location: location);
  }
}
