import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_study/models/tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          "เมนู",
          style: GoogleFonts.anuphan(color:Colors.white),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FaIcon(
                FontAwesomeIcons.search,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FaIcon(
                FontAwesomeIcons.qrcode,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FaIcon(
                FontAwesomeIcons.cog,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildTopContainer(),
          _buildGridView(),
          _buildAdImageContainer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "ภาพประจำวัน",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 10),
                ImageSlideshow(
                  width: double.infinity,
                  initialPage: 0,
                  indicatorBackgroundColor: Colors.grey,
                  indicatorColor: Colors.black12,
                  children: [
                    Image.asset('assets/image1.jpg'),
                    Image.asset('assets/image2.jpg'),
                    Image.asset('assets/image3.jpg'),
                  ],
                  autoPlayInterval: 5000,
                  isLoop: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildAdImageContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('assets/image.jpg'),
      ),
    );
  }

  GridView _buildGridView() {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      crossAxisCount: 4,
      children: List.generate(tabs.length, (index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                // Handle tapping on grid item
              },
              child: FaIcon(
                tabs[index].icon,
                size: 30,
                color: Colors.blueGrey[900],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              tabs[index].text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey[900]),
            ),
          ],
        );
      }),
    );
  }

  Container _buildTopContainer() {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    "กระเป๋าสตางค์",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 17),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Handle tapping on shield icon
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.shield, size: 17),
                        Text("ยืนยันตัวตน"),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      // Handle tapping on QR code icon
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.qr_code, size: 17),
                        Text("QR Code ของฉัน"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          _buildTopContainerButton("บันทึกของฉัน"),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  FaIcon(
                    FontAwesomeIcons.comment,
                    size: 17,
                  ),
                  SizedBox(width: 5),
                ],
              ),
              const Text(
                "120,246 บาท",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: () {}, child: const Text("โอนเงิน")),
              InkWell(onTap: () {}, child: const Text("ถอนเงิน")),
              InkWell(
                onTap: () {
                  // Handle tapping on shopping cart icon
                },
                child: Row(
                  children: const [
                    FaIcon(FontAwesomeIcons.shoppingCart, size: 17),
                    Text("ร้านค้า"),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTopContainerButton(String text) {
    return GestureDetector(
      onTap: () {
        // Handle button tap
      },
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "บันทึกของฉัน",
                  style: TextStyle(fontSize: 16),
                ),
                Icon(Icons.arrow_forward_ios, size: 17),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
