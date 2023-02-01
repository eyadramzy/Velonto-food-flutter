import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velontofood/core/presentation/snack_bar.dart';

part 'toast_state.freezed.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required String message,
    MessageType? type,
  }) = _MessageState;
}
