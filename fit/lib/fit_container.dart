import 'package:fit/config/config_container.dart';
import 'package:fit/utils/file_helper/file_helper_impl.dart';
import 'package:fit/utils/ui/ui_impl.dart';

class FitContainer {
  final _fileHelper = FileHelperImpl();
  final _ui = UIImpl();

  ConfigContainer makeConfigContainer() {
    return ConfigContainer(_fileHelper, _ui);
  }
}
