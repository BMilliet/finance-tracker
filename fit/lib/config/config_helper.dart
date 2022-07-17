import 'package:fit/config/user_cases/new_user_onboard_config_use_case.dart';
import 'package:fit/constants/constants.dart' as constants;
import 'package:fit/utils/file_helper/file_helper.dart';

class ConfigHelper {
  final FileHelper _fileHelper;
  final NewUserOnboardConfigUseCase _userOnboardConfigUseCase;

  ConfigHelper(this._fileHelper, this._userOnboardConfigUseCase);

  check() {
    if (!_haveConfig()) {
      _newUser();
    }
  }

  bool _haveConfig() {
    return _fileHelper.fileExists(constants.db);
  }

  _newUser() {
    _userOnboardConfigUseCase.start();
  }
}
