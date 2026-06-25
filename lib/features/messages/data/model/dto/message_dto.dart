class MessageModel {
  MessageModel({required this.text, required this.time, required this.isMe});

  final String text;
  final String time;
  final bool isMe;
}

final List<MessageModel> demoMessages = [
  MessageModel(
    text: 'Is the iPhone still available for bidding?',
    time: '10:00 AM',
    isMe: false,
  ),
  MessageModel(
    text: 'Yes, the auction ends in 2 hours!',
    time: '10:01 AM',
    isMe: true,
  ),
  MessageModel(
    text: 'Great! I will place my bid now.',
    time: '10:05 AM',
    isMe: false,
  ),
  MessageModel(
    text: 'Good luck! Let me know if you need any details.',
    time: '10:06 AM',
    isMe: true,
  ),
];
