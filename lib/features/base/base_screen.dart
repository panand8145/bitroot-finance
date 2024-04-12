import 'package:bitroot_finance/features/dashboard/dashboard_screen.dart';
import 'package:bitroot_finance/features/scan_receipt/scan_receipt_screen.dart';
import 'package:bitroot_finance/features/scan_request/scan_request_screen.dart';
import 'package:bitroot_finance/features/settings/setting_screen.dart';
import 'package:flutter/material.dart';
import '../../resource/theme_colors.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.transparent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.dashboard_rounded,
              color: primaryColor,
            ),
            icon: Icon(
              Icons.dashboard_rounded,
            ),
            label: 'Dashboard',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.qr_code_scanner_rounded,
              color: primaryColor,
            ),
            icon: Icon(Icons.qr_code_scanner_rounded),
            label: 'Scan Receipt',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.payments_rounded,
              color: primaryColor,
            ),
            icon: Icon(
              Icons.payments_rounded,
            ),
            label: 'Send & Request',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.account_circle_rounded,
              color: primaryColor,
            ),
            icon: Icon(
              Icons.account_circle_rounded,
            ),
            label: 'Settings',
          ),
        ],
      ),
      body: <Widget>[
        // DASHBOARD
        const DashboardScreen(),
        // SCAN & RECEIPT
        const ScanReceiptScreen(),
        // SCAN & REQUEST
        const ScanRequestScreen(),
        // SETTING
        const SettingScreen()
      ][currentPageIndex],
    );
  }
}
/*

body: <Widget>[
/// Home page
Card(
shadowColor: Colors.transparent,
margin: const EdgeInsets.all(8.0),
child: SizedBox.expand(
child: Center(
child: Text(
'Home page',
style: theme.textTheme.titleLarge,
),
),
),
),

Card(
shadowColor: Colors.transparent,
margin: const EdgeInsets.all(8.0),
child: SizedBox.expand(
child: Center(
child: Text(
'Home page',
style: theme.textTheme.titleLarge,
),
),
),
),

/// Notifications page
const Padding(
padding: EdgeInsets.all(8.0),
child: Column(
children: <Widget>[
Card(
child: ListTile(
leading: Icon(Icons.notifications_sharp),
title: Text('Notification 1'),
subtitle: Text('This is a notification'),
),
),
Card(
child: ListTile(
leading: Icon(Icons.notifications_sharp),
title: Text('Notification 2'),
subtitle: Text('This is a notification'),
),
),
],
),
),

/// Messages page
ListView.builder(
reverse: true,
itemCount: 2,
itemBuilder: (BuildContext context, int index) {
if (index == 0) {
return Align(
alignment: Alignment.centerRight,
child: Container(
margin: const EdgeInsets.all(8.0),
padding: const EdgeInsets.all(8.0),
decoration: BoxDecoration(
color: theme.colorScheme.primary,
borderRadius: BorderRadius.circular(8.0),
),
child: Text(
'Hello',
style: theme.textTheme.bodyLarge!
    .copyWith(color: theme.colorScheme.onPrimary),
),
),
);
}
return Align(
alignment: Alignment.centerLeft,
child: Container(
margin: const EdgeInsets.all(8.0),
padding: const EdgeInsets.all(8.0),
decoration: BoxDecoration(
color: theme.colorScheme.primary,
borderRadius: BorderRadius.circular(8.0),
),
child: Text(
'Hi!',
style: theme.textTheme.bodyLarge!
    .copyWith(color: theme.colorScheme.onPrimary),
),
),
);
},
),
][currentPageIndex],*/
