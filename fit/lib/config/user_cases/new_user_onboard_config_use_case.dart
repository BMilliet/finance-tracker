import 'dart:io';

import 'package:fit/constants/constants.dart' as constants;
import 'package:fit/utils/file_helper/file_helper.dart';
import 'package:fit/utils/ui/ui.dart';

class NewUserOnboardConfigUseCase {
  final FileHelper _fileHelper;
  final UI _ui;

  NewUserOnboardConfigUseCase(this._fileHelper, this._ui);

  start() {
    _ui.echo("Welcome to fit: Finance Tracker!", Color.cyan);
    _createConfigDir();
    _ui.echo("All set! now try:", Color.cyan);
    _ui.echo("fit -h", Color.blue);
    _ui.success("And start using fit", true);
  }

  _createConfigDir() {
    _fileHelper.createFile(constants.db, true);
    _ui.echo("db created at: ${constants.db}", Color.blue);
  }
}
