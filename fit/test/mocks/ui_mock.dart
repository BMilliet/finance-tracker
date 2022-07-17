import 'package:fit/utils/ui/ui.dart';

class UIMock implements UI {
  List<String> errors = [];
  bool exitedWithSuccess = false;

  @override
  error(String msg) {
    errors.add(msg);
  }

  @override
  success(String msg, bool shouldExit) {
    exitedWithSuccess = shouldExit;
  }

  @override
  echo(String? text, Color color) {}
}
