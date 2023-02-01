import 'package:velontofood/core/data/data_sources/app_preferences_local_data_source.dart';
import 'package:velontofood/core/domain/repositories/app_preferences_repository.dart';

class AppPreferencesRepositoryImpl implements AppPreferencesRepository {
  final AppPreferencesLocalDataSource _localDataSource;

  AppPreferencesRepositoryImpl(this._localDataSource);

  @override
  bool isFirstLaunchEver() {
    return _localDataSource.isFirstLaunchEver();
  }
}
