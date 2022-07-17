import 'package:fit/utils/file_helper/file_helper.dart';

class FileHelperMock implements FileHelper {
  Map<String, bool> mockFiles = {};
  Map<String, bool> created = {};

  @override
  bool fileExists(String path) {
    return mockFiles[path] ?? false;
  }

  @override
  String read(String path) {
    throw "Not implemented";
  }

  @override
  void createFile(String path, bool recursive) {
    created[path] = recursive;
  }

  @override
  Map<String, dynamic> readAsJson(String path) {
    throw "Not implemented";
  }
}
