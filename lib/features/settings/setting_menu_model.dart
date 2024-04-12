import 'package:flutter/material.dart';

class MenuOption {
  final String name;
  final IconData icon;
  final String navigateTo;

  MenuOption(
      {required this.name, required this.icon, required this.navigateTo});

  static List<MenuOption> menus = [
    // PROFILE INFO
    MenuOption(name: "Personal Info", icon: Icons.person_rounded, navigateTo: ""),
    // MY QR CODE
    MenuOption(name: "My QR Code", icon: Icons.qr_code_scanner_rounded, navigateTo: ""),
    // BANKS AND CARDS
    MenuOption(name: "Banks and Cards", icon: Icons.business, navigateTo: ""),
    // PAYMENT PREFERENCES
    MenuOption(name: "Payment Preferences", icon: Icons.payments_rounded, navigateTo: ""),
    // AUTOMATIC PAYMENTS
    MenuOption(name: "Automatic Payments", icon: Icons.rotate_right_rounded, navigateTo: ""),
    // LOGIN AND SECURITY
    MenuOption(name: "Login and Security", icon: Icons.login_rounded, navigateTo: ""),
    // NOTIFICATIONS
    MenuOption(name: "Notifications", icon: Icons.notifications_rounded, navigateTo: ""),
  ];
}
