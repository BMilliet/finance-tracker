import 'package:args/command_runner.dart';
import 'package:fit/commands/account_command/add/add_account_command.dart';

class AccountCommand extends Command {
  @override
  String name = "acc";

  @override
  String description = "account related commands";

  AccountCommand() {
    addSubcommand(AddAccountCommand());
  }
}
