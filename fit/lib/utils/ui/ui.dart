abstract class UI {
  error(String msg) {
    throw "Not implemented";
  }

  echo(String? text, Color color) {
    throw "Not implemented";
  }
}

enum Color { red, green, blue, cyan, yellow }
