import 'package:fit/config/config_container.dart';
import 'package:fit/constants/constants.dart' as constants;
import 'package:test/test.dart';

import 'mocks/file_helper_mock.dart';
import 'mocks/ui_mock.dart';

void main() {
  test("User dont have db file", () {
    final uimock = UIMock();
    final fileHelperMock = FileHelperMock();
    final container = ConfigContainer(fileHelperMock, uimock);

    final sut = container.makeConfigHelper();

    expect(fileHelperMock.mockFiles[constants.db], null);

    sut.check();

    expect(fileHelperMock.created[constants.db] != null, true);
    expect(fileHelperMock.created[constants.db], true);
    expect(uimock.exitedWithSuccess, true);
  });

  test("User have db file", () {
    final uimock = UIMock();
    final fileHelperMock = FileHelperMock();
    fileHelperMock.mockFiles[constants.db] = true;

    final container = ConfigContainer(fileHelperMock, uimock);

    final sut = container.makeConfigHelper();

    expect(fileHelperMock.mockFiles[constants.db], true);

    sut.check();

    expect(fileHelperMock.created[constants.db], null);
    expect(uimock.exitedWithSuccess, false);
  });
}
