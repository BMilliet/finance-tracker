import 'package:fit/utils/db_helper/db_helper.dart';

class DBHelperMock implements DBHelper {
  List<bool> createDBCallsWithFlag = [];
  List<String> createdAccounts = [];

  @override
  createDB({bool force = false}) {
    createDBCallsWithFlag.add(force);
  }

  @override
  createAccount(String name) {
    createdAccounts.add(name);
  }
}
