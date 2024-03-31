import 'package:flutter_study/models/friend.dart';

class Chat {
  final Friend friend;
  final String message;

  Chat(this.friend, this.message);
}

List<Chat> chats = [
  Chat(friends[1], "แม่ขอตังหน่อย"),
  Chat(friends[2], "โอเคลูก"),
  Chat(friends[5], "ฝันดีค่ะ"),
  Chat(friends[4], "ส่งไฟล์แนบแล้ว"),
  Chat(friends[3], "อะเคร"),
  Chat(friends[7], "ค้าบ"),
  Chat(friends[11], "ไม่อยู่ค่ะ"),
  Chat(friends[15], "โฮก"),
  Chat(friends[16], "จอดหน่อย"),
  Chat(friends[17], "ติ๊กตอก"),
  Chat(friends[12], "สบายดีไหมคะ"),
];
