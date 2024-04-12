import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:get/instance_manager.dart';
import '../../resource/theme_colors.dart';
import 'dashboard_controller.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _controller = Get.put(DashboardController());

  final formatCurrency = NumberFormat.simpleCurrency(
      locale: "en_US", name: "USD", decimalDigits: 2);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backgroundColor,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          Obx(
                            () => SizedBox(
                              height: 54,
                              width: 54,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  _controller.userProfile.value.profilePicture!,
                                  width: 54.0,
                                  height: 54.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Obx(
                                    () => Text(
                                      "Hi ${_controller.userProfile.value.firstName},",
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  const Text(
                                    "Here's your spending dashboard",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 3.0, right: 3.0),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.grey,
                                  size: 32.0,
                                ),
                              ),
                              Container(
                                width: 18.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: const Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      // BALANCE SECTION
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 30.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Obx(
                                    () => Text(
                                      "\$${_controller.userWallet.value.balance}",
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 36.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  const Text(
                                    "Your Balance",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 14.0),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50.0,
                              width: 0.5,
                              color: Colors.grey,
                            ),
                            const Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "30",
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 36.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_rounded,
                                        size: 40.0,
                                        color: Colors.blueAccent,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Last Days",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 14.0),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      // SEND AGAIN
                      const Text(
                        "Send Again",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 100.0,
                        child: Obx(() {
                          return ListView.builder(
                            itemCount: _controller.recentTransContact.length,
                            scrollDirection: Axis.horizontal,
                            primary: false,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: SizedBox(
                                  width: 60.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 54.0,
                                        height: 54.0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50.0),
                                          child: Image.network(
                                            _controller
                                                .recentTransContact[index].url!,
                                            width: 54.0,
                                            height: 54.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Expanded(
                                        child: Text(
                                          _controller
                                              .recentTransContact[index].name!,
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: const TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 12.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Container(
                        height: 50.0,
                        margin: const EdgeInsets.only(top: 20.0),
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
                            Expanded(child: Text("Search Transactions"))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      // YOUR ACTIVITY
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Activity",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.sort,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Obx(
                        () => ListView.builder(
                          itemCount: _controller.transactionRecords.length,
                          primary: false,
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return Container(
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          _controller.transactionRecords[index]
                                              .activityName!,
                                          style: const TextStyle(
                                              color: Colors.black87,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text(
                                        formatCurrency.format(_controller
                                            .transactionRecords[index]
                                            .paidAmount),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    _controller
                                        .transactionRecords[index].merchant!,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    _controller
                                        .transactionRecords[index].address!,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  if (index !=
                                      _controller.transactionRecords.length - 1)
                                    const Divider(
                                      thickness: 0.2,
                                    )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 50.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
