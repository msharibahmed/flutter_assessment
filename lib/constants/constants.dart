//packages
import 'package:flutter/material.dart';

//models
import '../model/grid_view_model.dart';

// top profile image
const profile_img =
    "https://wgntv.com/wp-content/uploads/sites/5/2014/06/wgn-leshockmarcus-2250x2850.jpg";

List<GridViewModel> gridViewItem = [
  GridViewModel(
      lightColor: Color(0xffffebee),
      darkColor: Colors.red[300],
      iconColor: Colors.red,
      title: 'Bill Pay',
      subTitle: 'Due on May 14th',
      icon: Icons.history_edu),
  GridViewModel(
      lightColor: Color(0xffede7f6),
      darkColor: Colors.indigo[300],
      iconColor: Colors.indigo,
      title: 'Rewards',
      subTitle: '12,324 Points',
      icon: Icons.loyalty),
  GridViewModel(
      lightColor: Color(0xffc8e6c9),
      darkColor: Colors.green[300],
      iconColor: Colors.green,
      title: 'Statement',
      subTitle: 'June 2020\nAvailable',
      icon: Icons.account_balance),
  GridViewModel(
      lightColor: Color(0xffe1f5fe),
      darkColor: Colors.blue[300],
      iconColor: Colors.blue,
      title: 'Transfer',
      subTitle: 'Send & Request\nFunds',
      icon: Icons.compare_arrows),
];

// bottom_navbar name & icon
// ignore: non_constant_identifier_names
Map<IconData, String> bottom_navbar_name = {
  Icons.dashboard: 'Dashboard',
  Icons.qr_code_scanner: 'Scan Reciept',
  Icons.payments: 'Send & Request',
  Icons.account_circle_sharp: 'Settings'
};
