import 'package:args/command_runner.dart';

class NewItemCommand extends Command {
  @override
  String description = "adds new finance item to db";

  @override
  String name = "add";

  NewItemCommand() {
	// something
  }

  @override
  run() {
	print("something");
  }
}
