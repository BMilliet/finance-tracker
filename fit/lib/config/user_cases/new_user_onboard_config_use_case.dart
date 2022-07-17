import 'package:fit/utils/file_helper/file_helper.dart';
import 'package:fit/utils/ui/ui.dart';

class NewUserOnboardConfigUseCase {
  final FileHelper _fileHelper;
  final UI _ui;

  NewUserOnboardConfigUseCase(this._fileHelper, this._ui);

  start() {
    _ui.echo("Welcome to fit: Finance Tracker!", Color.cyan);
  }
}
