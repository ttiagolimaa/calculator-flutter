class Memory {
  String _value = '0';

  String get value => _value;

  _allClear() {
    _value = '0';
  }

  void appyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else {
      _value += command;
    }
  }
}
