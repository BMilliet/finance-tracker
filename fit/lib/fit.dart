import 'package:args/command_runner.dart';
import 'package:fit/commands/new_item.dart';
import 'package:fit/fit_container.dart';

run(List<String> args) {
  _configIfNeeded();

  var runner = CommandRunner("add", "Add new item")
    ..addCommand(NewItemCommand());

  runner.run(args);
}

_configIfNeeded() {
  final container = FitContainer().makeConfigContainer();
  final configHelper = container.makeConfigHelper();
  configHelper.check();
}
