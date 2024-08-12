import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_home_tile.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/commons/commontasktile.dart';
import 'package:todo_ui/constant/colors.dart';
import 'package:todo_ui/constant/font.dart';

import '../controllers/task_screen_controller.dart';

class TaskScreenView extends GetView<TaskScreenController> {
  const TaskScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TaskScreenController>(
        init: TaskScreenController(),
        builder: (_) {
          return Scaffold(
              body: Column(
            children: [
              Row(
                children: [
                  CommonButton(
                          isborder: false,
                          Width: 32,
                          height: 36,
                          primary: Colors.grey[800],
                          bordercolors: Colors.transparent,
                          iconData: Icons.close,
                          action: () {})
                      .marginOnly(top: 50, left: 20),
                  CommonButton(
                          isborder: false,
                          Width: 32,
                          height: 36,
                          primary: Colors.grey[800],
                          bordercolors: Colors.transparent,
                          iconData: Icons.refresh,
                          action: () {})
                      .marginOnly(top: 50, left: 260),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    bottom: 10), // Add some space between the tiles
                padding: const EdgeInsets.all(10), // Padding inside the tile
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), // Rounded corners
                ),
                child: Column(
                  children: <Widget>[
                    Row(children: [
                      Container(
                        height: 15,
                        width: 18,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          shape: BoxShape.circle,
                        ),
                      ).marginOnly(top: 25),
                      const SizedBox(width: 10),
                      const Text(
                        'Do Math Homework',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontConstants.fontFamilyLato,
                          color: Colors.white,
                        ),
                      ).marginOnly(right: 80),
                      const Icon(Icons.edit)
                    ]),

                    // Category and Priority
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                            height:
                                6), // Spacing between the title and the time

                        const Text(
                          'Do chapter 2 to 5 for next week',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ).marginOnly(right: 80),

                        const SizedBox(
                            width:
                                8), // Spacing between the category and the priority
                      ],
                    )
                  ],
                ),
              ).marginOnly(right: 15, left: 15, bottom: 5),
              CommonSelectionTile(
                icon: Icons.access_time,
                title: 'Task Time',
                buttonText: 'Today At 16:45',
                onButtonPressed: () {
                  // Do something when the button is pressed
                },
              ),
              CommonSelectionTile(
                icon: Icons.category,
                title: 'Task Category',
                iconbutton: Icons.school_outlined,
                buttonText: 'University',
                onButtonPressed: () {
                  // Do something when the button is pressed
                },
              ),
              CommonSelectionTile(
                icon: Icons.flag,
                title: 'Task Priority',
                buttonText: 'Default',
                onButtonPressed: () {
                  // Do something when the button is pressed
                },
              ),
              InkWell(
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delete Task',
                    titleStyle: const TextStyle(color: Colors.white),
                    backgroundColor: Colors.grey[900],
                    content: Column(
                      children: [
                        const CommonTextWidget(
                                textAlign: TextAlign.center,
                                text:
                                    'Are You sure you want to delete this task? Task title : Do math homework ')
                            .marginOnly(left: 5, top: 16, bottom: 30),
                        Row(
                          children: [
                            CommonButton(
                              text: 'cancel',
                              textColor: Colors.white,
                              height: 40,
                              Width: 100,
                            ).paddingOnly(right: 57),
                            const SizedBox(
                              height: 10,
                            ),
                            CommonButton(
                              action: () => Get.back(),
                              primary: DarkThemeColors.buttonprimaryColor,
                              text: 'Save',
                              height: 40,
                              textColor: Colors.white,
                              Width: 100,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Icon(Icons.delete, color: Colors.red),
                    SizedBox(width: 10),
                    CommonTextWidget(
                        text: 'Delete Task',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.red),
                    Spacer(),
                  ],
                ).marginOnly(left: 12, top: 16, bottom: 300),
              ),
              CommonButton(
                isborder: true,
                Width: 320,
                primary: DarkThemeColors.buttonprimaryColor,
                action: () {
                  Get.defaultDialog(
                    title: 'Edit Task Title',
                    titleStyle: const TextStyle(color: Colors.white),
                    backgroundColor: Colors.grey[900],
                    content: Column(
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
                            hintText: 'Do chapter 2 to 5 for next week',
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
                            CommonButton(
                                isborder: true,
                                Width: 120,
                                textColor: DarkThemeColors.buttonprimaryColor,
                                primary: Colors.transparent,
                                height: 40,
                                text: 'Cancel'),
                            CommonButton(
                                isborder: false,
                                Width: 120,
                                action: () {
                                  Get.defaultDialog(
                                    title: "Choose Category",
                                    titleStyle: const TextStyle(fontSize: 18),
                                    backgroundColor: Colors.grey[900],
                                    radius: 8,
                                    content: const SizedBox(
                                      width: double.infinity,
                                      child: Wrap(
                                        alignment: WrapAlignment.center,
                                        spacing:
                                            15.0, // spacing between the chips
                                        runSpacing:
                                            15.0, // spacing between the rows
                                        children: <Widget>[
                                          Divider(),
                                          CategoryChip(
                                            iconData: Icons.shopping_cart,
                                            label: "Grocery",
                                            colors: Colors.pink,
                                          ),
                                          CategoryChip(
                                              iconData: Icons.work,
                                              label: "Work",
                                              colors: Colors.orange),
                                          CategoryChip(
                                              iconData: Icons.sports_esports,
                                              label: "Sport",
                                              colors: Colors.yellow),
                                          CategoryChip(
                                              iconData: Icons.brush,
                                              label: "Design",
                                              colors: Colors.purple),
                                          CategoryChip(
                                              iconData: Icons.school,
                                              label: "University",
                                              colors: Colors.pink),
                                          CategoryChip(
                                              iconData: Icons.group,
                                              label: "Social",
                                              colors: Colors.green),
                                          CategoryChip(
                                              iconData: Icons.music_note,
                                              label: "Music",
                                              colors: Colors.yellow),
                                          CategoryChip(
                                              iconData: Icons.health_and_safety,
                                              colors: Colors.pink,
                                              label: "Health"),
                                          CategoryChip(
                                            iconData: Icons.movie,
                                            label: "Movie",
                                            colors: Colors.pink,
                                          ),
                                          CategoryChip(
                                            iconData: Icons.home,
                                            label: "Home",
                                            colors: Colors.pink,
                                          ),
                                          CategoryChip(
                                            iconData: Icons.add,
                                            label: "Create New",
                                            colors: Colors.pinkAccent,
                                          ),
                                          // Add more CategoryChip widgets here
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        children: [
                                          CommonButton(
                                                  isborder: true,
                                                  Width: 120,
                                                  textColor: DarkThemeColors
                                                      .buttonprimaryColor,
                                                  primary: Colors.grey[600],
                                                  height: 40,
                                                  text: 'Cancel')
                                              .marginOnly(right: 10),
                                          CommonButton(
                                              isborder: true,
                                              Width: 120,
                                              action: () {
                                                Get.defaultDialog(
                                                  title: 'Task Priority',
                                                  titleStyle: const TextStyle(
                                                      color: Colors.white),
                                                  backgroundColor:
                                                      Colors.grey[850],
                                                  content: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Divider(
                                                        thickness: 2,
                                                      ),
                                                      GridView.count(
                                                        shrinkWrap: true,
                                                        crossAxisCount: 4,
                                                        mainAxisSpacing: 4,
                                                        crossAxisSpacing: 4,
                                                        children: List.generate(
                                                            10, (index) {
                                                          return Obx(() {
                                                            bool isSelected =
                                                                _.selectedPriority
                                                                        .value ==
                                                                    index + 1;
                                                            return GestureDetector(
                                                              onTap: () {
                                                                _.selectPriority(
                                                                    index + 1);
                                                              },
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: isSelected
                                                                      ? Colors
                                                                          .blue
                                                                      : Colors.grey[
                                                                          900],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4),
                                                                ),
                                                                child: Column(
                                                                  children: [
                                                                    const Icon(Icons
                                                                            .flag_outlined)
                                                                        .marginAll(
                                                                            10),
                                                                    Center(
                                                                        child:
                                                                            Text(
                                                                      "${index + 1}",
                                                                      style: const TextStyle(
                                                                          color:
                                                                              Colors.white),
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
                                                            textColor:
                                                                Colors.white,
                                                            Width: 100,
                                                          ).paddingOnly(
                                                              right: 57),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          CommonButton(
                                                            action: () =>
                                                                Get.back(),
                                                            primary: DarkThemeColors
                                                                .buttonprimaryColor,
                                                            text: 'Save',
                                                            textColor:
                                                                Colors.white,
                                                            Width: 100,
                                                          ),
                                                        ],
                                                      )
                                                      // ... Cancel and Save buttons
                                                    ],
                                                  ),
                                                );
                                              },
                                              primary: DarkThemeColors
                                                  .buttonprimaryColor,
                                              height: 40,
                                              text: 'Edit')
                                        ],
                                      )
                                    ],
                                  );
                                },
                                primary: DarkThemeColors.buttonprimaryColor,
                                height: 40,
                                text: 'Edit'),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                height: 50,
                text: 'Edit Task',
              )
            ],
          ));
        });
  }
}
