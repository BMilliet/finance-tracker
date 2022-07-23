abstract class UI {
  error(String msg) {
    throw "Not implemented";
  }

  success(String msg, bool shouldExit) {
    throw "Not implemented";
  }

  echo(String? text, {Color? color}) {
    throw "Not implemented";
  }

  String? input(String msg, {Color? color}) {
    throw "Not implemented";
  }
}

enum Color { red, green, blue, cyan, yellow }
