import 'package:flutter/foundation.dart';

void printIfDebug(Object? message){
  if (kDebugMode) {
    print(message);
  }
}