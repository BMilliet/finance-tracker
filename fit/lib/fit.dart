import 'package:args/command_runner.dart';
import 'package:fit/commands/new_item.dart';
import 'package:fit/config/config_helper.dart';
import 'package:fit/utils/file_helper/file_helper_impl.dart';

run(List<String> args) {
  final fileHelper = FileHelperImpl();

  ConfigHelper(fileHelper).check();

  var runner = CommandRunner("add", "Add new item")
    ..addCommand(NewItemCommand());

  runner.run(args);
}
