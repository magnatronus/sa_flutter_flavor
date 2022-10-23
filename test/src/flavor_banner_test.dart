import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sa_flutter_flavor/sa_flutter_flavor.dart';

void main() {
  testWidgets(
      "FlavorBanner should display with specified text and color when non production",
      (WidgetTester tester) async {
    const bannerColor = Colors.pink;
    const bannerText = "ABCD";
    await tester.pumpWidget(MaterialApp(
      home: Material(
        child: FlavorBanner(
            bannerConfig: FlavorBannerConfig(bannerText, color: bannerColor),
            child: const Scaffold()),
      ),
    ));

    final banner = find.byKey(const Key("sa_flavor_banner"));
    expect(banner, findsOneWidget);

    Banner bannerWidget = tester.widget(banner);
    expect(bannerWidget.message, bannerText);
    expect(bannerWidget.color, bannerColor);
  });

  testWidgets("FlavorBanner should not display when isProduction set to true",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Material(
        child: FlavorBanner(
            bannerConfig: FlavorBannerConfig("PROD", isProduction: true),
            child: const Scaffold()),
      ),
    ));

    final banner = find.byKey(const Key("sa_flavor_banner"));
    expect(banner, findsNothing);
  });
}
