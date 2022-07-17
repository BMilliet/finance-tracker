import 'package:fit/constants/constants.dart' as constants;
import 'package:fit/utils/file_helper/file_helper.dart';

class ConfigHelper {
  final FileHelper _fileHelper;

  ConfigHelper(this._fileHelper);

  check() {
    _newUser();
    if (_haveConfig()) {
      _newUser();
    }
  }

  bool _haveConfig() {
    return _fileHelper.fileExists(constants.fitDir);
  }

  _newUser() {}
}
