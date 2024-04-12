import 'package:bitroot_finance/resource/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dashboard/dashboard_controller.dart';
import 'setting_menu_model.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final DashboardController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 220.0,
            collapsedHeight: 60.0,
            centerTitle: false,
            pinned: true,
            // title:
            //     Obx(() => Text("${_controller.userProfile.value.firstName} ${_controller.userProfile.value.lastName}")),
            elevation: 0,
            backgroundColor: backgroundColor,
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Log Out",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                          _controller.userProfile.value.profilePicture!,
                          width: 74.0,
                          height: 74.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "${_controller.userProfile.value.firstName!} ${_controller.userProfile.value.lastName!}",
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      _controller.userProfile.value.email!,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: MenuOption.menus.length + 1,
              (BuildContext context, int index) {
                if (index == 0) {
                  return Container(
                    height: 50.0,
                    margin: const EdgeInsets.all(20.0),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: backgroundColor),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                            child: Text(
                          "Search Settings",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ))
                      ],
                    ),
                  );
                }
                return Container(
                  margin: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: index == MenuOption.menus.length ? 100.0 : 0),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: index == MenuOption.menus.length
                                ? Colors.transparent
                                : Colors.grey,
                            width: 0.3)),
                  ),
                  child: ListTile(
                    onTap: () =>
                        Get.toNamed(MenuOption.menus[index - 1].navigateTo),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      MenuOption.menus[index - 1].icon,
                      color: Colors.grey,
                    ),
                    title: Text(
                      MenuOption.menus[index - 1].name,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blue,
                      size: 18.0,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
