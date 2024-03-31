import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tab {
  final IconData icon;
  final String text;

  Tab({required this.icon, required this.text});
}

List<Tab> tabs = [
  Tab(icon: FontAwesomeIcons.envelope, text: "จดหมาย"),
  Tab(icon: FontAwesomeIcons.calendarAlt, text: "ปฏิทิน"),
  Tab(icon: FontAwesomeIcons.archive, text: "ที่จัดเก็บ"),
  Tab(icon: FontAwesomeIcons.gift, text: "ส่งของขวัญ"),
  Tab(icon: FontAwesomeIcons.laugh, text: "อีโมจิ"),
  Tab(icon: FontAwesomeIcons.shopify, text: "ช็อปปิ้ง"),
  Tab(icon: FontAwesomeIcons.tshirt, text: "ธีม"),
  Tab(icon: FontAwesomeIcons.gamepad, text: "เล่นเกม"),
];
