import 'package:fit/utils/db_helper/db_helper.dart';
import 'package:fit/utils/ui/ui.dart';

class NewUserOnboardConfigUseCase {
  final DBHelper _db;
  final UI _ui;

  NewUserOnboardConfigUseCase(this._db, this._ui);

  start() {
    _ui.echo("Welcome to fit: Finance Tracker!");
    _db.createDB();
    _ui.echo("All set! now try:");
    _ui.echo("fit -h", color: Color.green);
    _ui.success("And start using fit", true);
  }
}
