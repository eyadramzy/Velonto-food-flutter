extension StringEx on String? {
  DateTime? toDate() {
    if (this == null) return null;
      return DateTime.tryParse(this!);
  }
}