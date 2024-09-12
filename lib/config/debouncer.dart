import 'dart:async';

import 'package:flutter/foundation.dart';

class CustomDebouncer {
  Timer? _timer;
  static final CustomDebouncer _customDebouncer = CustomDebouncer._internal();

  factory CustomDebouncer(){
    return _customDebouncer;
  }

  CustomDebouncer._internal();



  void run(VoidCallback action , {int? debouncerTime = 500}) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: debouncerTime!), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}