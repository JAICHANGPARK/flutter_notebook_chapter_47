import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String msg,
    required bool isRead,
    required bool isSender,
  }) = _ChatMessage;
}
