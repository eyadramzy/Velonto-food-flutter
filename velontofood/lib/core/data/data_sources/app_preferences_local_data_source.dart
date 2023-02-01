import 'package:shared_preferences/shared_preferences.dart';

abstract class AppPreferencesLocalDataSource {
  bool isFirstLaunchEver();
}

class AppPreferencesLocalDataSourceImpl
    implements AppPreferencesLocalDataSource {
  SharedPreferences sharedPreferences;

  AppPreferencesLocalDataSourceImpl(this.sharedPreferences);

  @override
  bool isFirstLaunchEver() {
    bool isFirstLaunch = sharedPreferences.getBool('firstLaunch') ?? true;
    if (isFirstLaunch) {
      _setIsNotFirstLaunch();
    }
    return isFirstLaunch;
  }

  void _setIsNotFirstLaunch() async {
    sharedPreferences.setBool('firstLaunch', false);
  }
}
