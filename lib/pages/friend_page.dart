import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_study/models/friend.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          "หน้าหลัก",
          style: GoogleFonts.anuphan(color:Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FaIcon(
              FontAwesomeIcons.search,
              size: 24,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FaIcon(
              FontAwesomeIcons.qrcode,
              size: 24,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FaIcon(
              FontAwesomeIcons.cog,
              size: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildMyProfile(),
            const Divider(
              height: 20,
              thickness: 1,
              color: Colors.blueGrey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  const Text("เพื่อน"),
                  const SizedBox(width: 5),
                  Text(
                    friends.length.toString(),
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            _buildFriendList(),
          ],
        ),
      ),
    );
  }

  ListView _buildFriendList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: friends.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // Handle tapping on friend
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  friends[index].image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                friends[index].name,
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
        );
      },
    );
  }

  ListTile _buildMyProfile() {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/image.jpg',
          width: 50,
          height: 50,
          fit: BoxFit.fill,
        ),
      ),
      title: const Text(
        "ฉัน",
        style: TextStyle(color: Colors.black87),
      ),
    );
  }
}
