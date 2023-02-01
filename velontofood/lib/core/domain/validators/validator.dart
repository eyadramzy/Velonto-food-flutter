
import 'package:velontofood/core/error/failure.dart';

abstract class Validator{
  void validate(Function() success, Function(List<Failure>) errors);
}