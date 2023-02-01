import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeEX on DateTime? {
  String? toStringFormat(String format) {
    if (this == null) return null;
    try {
      return DateFormat(format).format(this!);
    } on FormatException {
      // todo: Report this exception
      return null;
    }
  }

  DateTime get withoutTime => DateTime(this!.year, this!.month, this!.day);

  bool isToday() {
    if (this == null) return false;
    final now = DateTime.now();
    return now.year == this!.year &&
        now.month == this!.month &&
        now.day == this!.day;
  }
}

extension DateTimeCopyEx on DateTime {
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }
}
