import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (_) {
            return Scaffold(
              body: Column(
                children: [
                  Center(
                    child: Text(
                      'HomeView is working',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _.increment();
                      },
                      child: Icon(Icons.add)),
                  Text('Counter: ${_.count}', style: TextStyle(fontSize: 20)),
                ],
              ),
            );
          }),
    );
  }
}
