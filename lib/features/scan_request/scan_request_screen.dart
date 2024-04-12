import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../dashboard/dashboard_controller.dart';

class ScanRequestScreen extends StatefulWidget {
  const ScanRequestScreen({super.key});

  @override
  State<ScanRequestScreen> createState() => _ScanRequestScreenState();
}

class _ScanRequestScreenState extends State<ScanRequestScreen> {
  final DashboardController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Obx(
          () {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: _controller.recentTransContact.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 54,
                      width: 54,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                          _controller.recentTransContact[index].url!,
                          width: 54.0,
                          height: 54.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        (_controller.recentTransContact[index].name!)
                            .replaceAll(" ", "\n"),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
