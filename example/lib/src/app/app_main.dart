import 'package:example/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sa_flutter_flavor/sa_flutter_flavor.dart';

/// The main Material app loads (with init) the current flavor making it accessible to the rest of the app
/// and displays a banner if NOT running in production mode
class App extends ConsumerWidget {
  final FlavorConfig flavor;
  const App({super.key, required this.flavor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(appProvider).init(flavor);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlavorBanner(
          bannerConfig: ref.read(appProvider).flavorBanner,
          child: const AppMain()),
    );
  }
}

class AppMain extends ConsumerWidget {
  const AppMain({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar:
          AppBar(title: Text(ref.read(appProvider).flavorAttribute('title'))),
    );
  }
}
