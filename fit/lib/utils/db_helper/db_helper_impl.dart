import 'package:fit/utils/db_helper/db_helper.dart';
import 'package:fit/utils/file_helper/file_helper_impl.dart';
import 'package:fit/constants/constants.dart' as constants;
import 'package:fit/utils/ui/ui_impl.dart';

class DBHelperImpl implements DBHelper {
  final _fileHelper = FileHelperImpl();
  final _ui = UIImpl();

  @override
  createDB({bool force = false}) {
    if (_fileHelper.fileExists(constants.db) && !force) {
      _ui.error("Already have a DB, to override run the command again with -f");
    }

    _fileHelper.createFile(constants.db, true);
    _ui.echo("db created at: ${constants.db}");
  }

  @override
  createAccount(String name) {
    throw "Not implemented";
  }
}
