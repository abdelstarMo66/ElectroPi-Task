class ChatDTO {
  ChatDTO({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.imageUrl,
    this.unreadCount = 0,
  });

  final String name;
  final String lastMessage;
  final String time;
  final String imageUrl;
  final int unreadCount;
}

final List<ChatDTO> chatData = [
  ChatDTO(
    name: 'Ahmed Zaki',
    lastMessage: 'Is the watch still available?',
    time: '12:30 PM',
    imageUrl: 'https://i.pravatar.cc/150?u=1',
    unreadCount: 2,
  ),
  ChatDTO(
    name: 'Sara M.',
    lastMessage: 'I accepted your bid. Check your mail.',
    time: 'Yesterday',
    imageUrl: 'https://i.pravatar.cc/150?u=2',
  ),
  ChatDTO(
    name: 'Support Team',
    lastMessage: 'Your account is now verified.',
    time: '2 days ago',
    imageUrl: 'https://i.pravatar.cc/150?u=3',
  ),
];
