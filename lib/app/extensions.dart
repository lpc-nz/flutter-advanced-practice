// extension on String

import 'package:advanced_flutter/app/constant.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constant.empty;
    } else {
      return this!;
    }
  }
}

// extension on Integer

extension NonNullInterger on int? {
  int orZero() {
    if (this == null) {
      return Constant.zero;
    } else {
      return this!;
    }
  }
}
