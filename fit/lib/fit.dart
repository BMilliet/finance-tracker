import 'package:args/command_runner.dart';
import 'package:fit/commands/new_item.dart';

run(List<String> args) {
  var runner = CommandRunner("add", "Add new item")
  ..addCommand(NewItemCommand());

  runner.run(args);
}

