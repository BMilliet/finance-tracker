import 'package:fit/config/config_container.dart';
import 'package:fit/constants/constants.dart' as constants;
import 'package:test/test.dart';

import 'mocks/db_helper_mock.dart';
import 'mocks/file_helper_mock.dart';
import 'mocks/ui_mock.dart';

void main() {
  test("User dont have db file", () {
    final uimock = UIMock();
    final fileHelperMock = FileHelperMock();
    final dbMock = DBHelperMock();

    final container = ConfigContainer(dbMock, fileHelperMock, uimock);

    final sut = container.makeConfigHelper();

    expect(fileHelperMock.mockFiles[constants.db], null);

    sut.check();

    expect(dbMock.createDBCallsWithFlag.length, 1);
    expect(dbMock.createDBCallsWithFlag.first, false);
    expect(uimock.exitedWithSuccess, true);
  });

  test("User have db file", () {
    final uimock = UIMock();
    final dbMock = DBHelperMock();
    final fileHelperMock = FileHelperMock();
    fileHelperMock.mockFiles[constants.db] = true;

    final container = ConfigContainer(dbMock, fileHelperMock, uimock);

    final sut = container.makeConfigHelper();

    expect(fileHelperMock.mockFiles[constants.db], true);

    sut.check();

    expect(dbMock.createDBCallsWithFlag.length, 0);
    expect(uimock.exitedWithSuccess, false);
  });
}
