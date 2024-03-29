class ChatModel {
  final String name;
  final String message;
  final String time;
  final String profileUrl;
  final String msgNo;
  final bool isOnline;
  final bool isSendByMe;
  final String messagetype;
  final bool ismessageSeen;
  final String position;
  final String location;
  ChatModel(
    this.name,
    this.message,
    this.time,
    this.profileUrl,
    this.msgNo,
    this.isOnline,
    this.isSendByMe,
    this.messagetype,
    this.ismessageSeen,
    this.position,
    this.location,
  );
}

List<ChatModel> dummyData = [
  ChatModel(
      'Daniel Santio',
      'Good luck and take care',
      '11:20 AM',
      'https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '3',
      true,
      false,
      'text',
      true,
      "Manager",
      '1517 South Centelella'),
  ChatModel(
      'Oscar Meinholf',
      'Ok, Got it!',
      'Yesterday',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '1',
      false,
      true,
      'text',
      false,
      "Supervisor",
      '1517 South Centelella'),
  ChatModel(
      'Satria Moonwalk',
      'Could you help protect my child...',
      'Tuesday',
      'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '0',
      false,
      true,
      'photo',
      true,
      "Guard Post Duties",
      '1517 South Centelella'),
  ChatModel(
      'Richard Moors',
      'GYes, please!',
      'Monday',
      'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '0',
      false,
      true,
      'text',
      true,
      "Manager",
      '1517 South Centelella'),
  ChatModel(
      'Ahzim Nakula',
      'You are a very good man',
      '4/25/18',
      'https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '0',
      false,
      true,
      'not_send',
      false,
      "Property Owner",
      '1517 South Centelella'),
  ChatModel(
      'Gerard Fabiano',
      'Photo',
      '4/20/18',
      'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '0',
      true,
      true,
      'video',
      true,
      "Guard Post Duties",
      '1517 South Centelella'),
  ChatModel(
      'Edward Janowski',
      'I am good',
      '4/19/18',
      'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '0',
      false,
      true,
      'text',
      true,
      "Guard Post Duties",
      '1517 South Centelella'),
  ChatModel(
      'Mark Rafael',
      'When will you go to my home?',
      '4/17/18',
      'https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '0',
      true,
      false,
      'text',
      true,
      "Guard Post Duties",
      '1517 South Centelella'),
  ChatModel(
      'Edward Janowski',
      'When will you go to my home?',
      '4/17/18',
      'https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      '0',
      false,
      false,
      'text',
      true,
      "Guard Post Duties",
      '1517 South Centelella'),
];
