import 'package:fit/config/config_helper.dart';
import 'package:fit/config/use_cases/new_user_onboard_config_use_case.dart';
import 'package:fit/utils/db_helper/db_helper.dart';
import 'package:fit/utils/file_helper/file_helper.dart';
import 'package:fit/utils/ui/ui.dart';

class ConfigContainer {
  final FileHelper _fileHelper;
  final DBHelper _db;
  final UI _ui;

  ConfigContainer(this._db, this._fileHelper, this._ui);

  ConfigHelper makeConfigHelper() {
    return ConfigHelper(_fileHelper, _makeUserOnboardConfigUseCase());
  }

  NewUserOnboardConfigUseCase _makeUserOnboardConfigUseCase() {
    return NewUserOnboardConfigUseCase(_db, _ui);
  }
}
