extension IntEx on int? {
  DateTime? toDate() {
    if (this == null) return null;
    try {
      return DateTime.fromMillisecondsSinceEpoch(this!);
    } on FormatException {
      // todo: Report this exception
      return null;
    }
  }
}
