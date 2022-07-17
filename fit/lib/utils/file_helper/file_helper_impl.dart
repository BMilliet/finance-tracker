import 'dart:io';
import 'dart:convert';

import 'package:fit/utils/file_helper/file_helper.dart';

class FileHelperImpl implements FileHelper {
  @override
  bool fileExists(String path) {
    return _getFile(path).existsSync();
  }

  @override
  String read(String path) {
    return _getFile(path).readAsStringSync();
  }

  @override
  Map<String, dynamic> readAsJson(String path) {
    return json.decode(read(path));
  }

  File _getFile(String path) {
    return File(path);
  }
}
