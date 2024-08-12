import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_ui/app/modules/HomeNotEmpty/controllers/home_not_empty_controller.dart';
import 'package:todo_ui/app/routes/app_pages.dart';
import 'package:todo_ui/commons/common_bottombar.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_home_tile.dart';
import 'package:todo_ui/commons/common_searchbar.dart';
import 'package:todo_ui/commons/common_statusbutton.dart';

import 'package:todo_ui/constant/colors.dart';

class HomeNotEmpty extends GetView<HomeNotEmptyController> {
  const HomeNotEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeNotEmptyController>(
        init: HomeNotEmptyController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              shadowColor: Colors.transparent,
              title: Title(
                  color: Colors.white,
                  child: const Center(child: Text('Index'))),
              backgroundColor: Colors.transparent,
              actions: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jgp'),
                  ),
                )
              ],
              leading: InkWell(
                child: const Icon(Icons.keyboard_double_arrow_down_rounded),
                onTap: () {
                  //Get.toNamed(Routes.REGISTER);
                },
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 1.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Common_ButtonBar(
                        Iconss: const Icon(Icons.home), names: 'Home'),
                    Common_ButtonBar(
                        Iconss: const Icon(Icons.calendar_month),
                        names: 'Calender'),
                    Common_ButtonBar(
                        Iconss: const Icon(Icons.timelapse),
                        names: 'Focus',
                        onTap: () => Get.toNamed(Routes.FOCUS_MOOD)),
                    Common_ButtonBar(
                        onTap: () => Get.toNamed(Routes.PROFILE),
                        Iconss: const Icon(Icons.perm_identity_rounded),
                        names: 'Profile'),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: DarkThemeColors.buttonprimaryColor,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                Get.defaultDialog(
                  title: 'Add Task',
                  titleStyle: const TextStyle(color: Colors.white),
                  backgroundColor: Colors.grey[900],
                  content: Container(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1)),
                            hintText: 'Do math homework',
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.5)),
                            // focusedBorder: UnderlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.white),
                            // ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Description',
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.5)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1)),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.access_time,
                                  color: Colors.white),
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.attachment,
                                  color: Colors.white),
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.flag_outlined,
                                  color: Colors.white),
                              onPressed: () {
                                Get.defaultDialog(
                                  title: 'Task Priority',
                                  titleStyle:
                                      const TextStyle(color: Colors.white),
                                  backgroundColor: Colors.grey[850],
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Divider(
                                        thickness: 2,
                                      ),
                                      GridView.count(
                                        shrinkWrap: true,
                                        crossAxisCount: 4,
                                        mainAxisSpacing: 4,
                                        crossAxisSpacing: 4,
                                        children: List.generate(10, (index) {
                                          return Obx(() {
                                            bool isSelected =
                                                _.selectedPriority.value ==
                                                    index + 1;
                                            return GestureDetector(
                                              onTap: () {
                                                _.selectPriority(index + 1);
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: isSelected
                                                      ? Colors.blue
                                                      : Colors.grey[900],
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Column(
                                                  children: [
                                                    const Icon(
                                                            Icons.flag_outlined)
                                                        .marginAll(10),
                                                    Center(
                                                        child: Text(
                                                      "${index + 1}",
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                        }),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          CommonButton(
                                            text: 'cancel',
                                            textColor: Colors.white,
                                            Width: 100,
                                          ).paddingOnly(right: 57),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CommonButton(
                                            action: () => Get.back(),
                                            primary: DarkThemeColors
                                                .buttonprimaryColor,
                                            text: 'Save',
                                            textColor: Colors.white,
                                            Width: 100,
                                          ),
                                        ],
                                      )
                                      // ... Cancel and Save buttons
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            body: const SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSearchBar(
                      title: 'Search for your task...',
                      icon: Icons.search,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: CustomDropdownButton(title: 'Today'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CommonTaskTile(
                        CategoryText: 'University',
                        CatgoryIcon: Icons.school_outlined,
                        title: 'Do Math Homework',
                        time: 'Today At 16:45',
                        category: 'wqwq',
                        priority: 1,
                        categoryColor: DarkThemeColors.buttonprimaryColor),
                    CommonTaskTile(
                        CategoryText: 'Home',
                        CatgoryIcon: Icons.home_max_outlined,
                        title: 'Tack out dogs',
                        time: 'Today At 18:20',
                        category: 'wqwq',
                        priority: 2,
                        categoryColor: Colors.orange),
                    CommonTaskTile(
                        CategoryText: 'Work',
                        CatgoryIcon: Icons.work_outline_rounded,
                        title: 'Business meeting with CEO',
                        time: 'Today At 08:15',
                        category: 'wqwq',
                        priority: 3,
                        categoryColor: Colors.yellow),
                    Padding(
                      padding: EdgeInsets.only(right: 3),
                      child: CustomDropdownButton(title: 'Completed'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CommonTaskTile(
                        title: 'Buy Grocery',
                        time: 'Today At 08:15',
                        category: 'wqwq',
                        priority: 3,
                        categoryColor: Colors.yellow),
                  ]),
            ),
          );
        });
  }
}
