class Friend {
  final String name;
  final String image;

  Friend(this.name, this.image);
}

const String prefix = "https://picsum.photos/id";

List<Friend> friends = [
  Friend("พี่สาว", '$prefix/65/4912/3264'),//0
  Friend("แม่", '$prefix/64/4326/2884'),//1
  Friend("พ่อ", '$prefix/103/2592/1936'),//2
  Friend("เพื่อน1", '$prefix/117/1544/1024'),//3
  Friend("เพื่อน2", '$prefix/129/4910/3252'),//4
  Friend("แฟน1", '$prefix/177/2515/1830'),//5
  Friend("แฟน2", '$prefix/203/4032/3024'),//6
  Friend("คนคุย1", '$prefix/209/1920/1280'),//7
  Friend("หมา", '$prefix/237/3500/2095'),//8
  Friend("คนคุย2", '$prefix/319/5000/2542'),//9
  Friend("คนคุย3", '$prefix/331/3648/2432'),//10

  Friend("ป้า", '$prefix/342/2896/1944'),//11
  Friend("น้า", '$prefix/349/3264/2176'),//12
  Friend("ลุงข้างบ้าน", '$prefix/473/5000/3333'),//13
  Friend("นายกรัฐมนตรี", '$prefix/375/5000/3333'),//14
  Friend("หมี", '$prefix/433/4752/3168'),//15
  Friend("รถแท็กซี่", '$prefix/376/5000/3324'),//16
  Friend("เวลา", '$prefix/175/2896/1944'),//17
];
