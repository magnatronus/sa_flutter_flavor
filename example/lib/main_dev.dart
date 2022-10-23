import 'package:example/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sa_flutter_flavor/sa_flutter_flavor.dart';

/// This is the DEV version of the app
void main() {
  runApp(ProviderScope(
      child: App(
    flavor: FlavorConfig(
        name: "DEV",
        color: Colors.green,
        attributes: {'title': "Development App"}),
  )));
}
