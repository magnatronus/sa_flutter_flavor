import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sa_flutter_flavor/sa_flutter_flavor.dart';

enum AppStatus { initial, loading, loaded, error }

class AppNotifier extends StateNotifier<AppStatus> {
  late FlavorConfig _flavor;
  AppNotifier(super.state);

  /// Initialise by loading in the required flavor
  init(FlavorConfig value) {
    _flavor = value;
    state = AppStatus.loaded;
  }

  /// Expose the flavor banner configuration
  FlavorBannerConfig get flavorBanner {
    return _flavor.banner;
  }

  /// Access a flavor based attribute
  dynamic flavorAttribute(String key) {
    return _flavor.attributes[key];
  }
}

final appProvider = StateProvider((ref) => AppNotifier(AppStatus.initial));
