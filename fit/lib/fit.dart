import 'package:args/command_runner.dart';
import 'package:fit/commands/account_command/account_command.dart';
import 'package:fit/fit_container.dart';
import 'package:fit/utils/ui/ui_impl.dart';

run(List<String> args) {
  _configIfNeeded();

  final ui = UIImpl();

  var runner = CommandRunner("add", "Add new item")
    ..addCommand(AccountCommand());

  runner.run(args).catchError((error) {
    if (error is UsageException) {
      ui.error(
          "Command not supported.\nCheck for spelling error or try running -h option");
    }
  });
}

_configIfNeeded() {
  final container = FitContainer().makeConfigContainer();
  final configHelper = container.makeConfigHelper();
  configHelper.check();
}
