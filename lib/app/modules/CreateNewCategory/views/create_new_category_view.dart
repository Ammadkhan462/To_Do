import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_home_tile.dart';
import 'package:todo_ui/commons/common_searchbar.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/constant/colors.dart';

import '../controllers/create_new_category_controller.dart';

class CreateNewCategoryView extends GetView<CreateNewCategoryController> {
  const CreateNewCategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<CreateNewCategoryController>(
            init: CreateNewCategoryController(),
            builder: (_) {
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonTextWidget(
                      text: 'Create new category',
                      fontSize: 20,
                    ).marginOnly(left: 18, top: 40),
                    CommonTextWidget(
                      color: Colors.grey[400],
                      text: 'Category name :',
                      fontSize: 15,
                    ).marginOnly(left: 18, top: 20),
                    CustomSearchBar(
                      title: 'Category name',
                    ),
                    CommonTextWidget(
                      color: Colors.grey[400],
                      text: 'Category icon : ',
                      fontSize: 15,
                    ).marginOnly(left: 18, top: 20, bottom: 15),
                    CommonButton(
                      Width: 200,
                      action: () => Get.defaultDialog(
                        title: 'Choose Icon',
                        titleStyle: TextStyle(fontSize: 18),
                        backgroundColor: Colors.grey[900],
                        radius: 8,
                        content: Container(
                          width: double.infinity,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 15.0, // spacing between the chips
                            runSpacing: 15.0, // spacing between the rows
                            children: <Widget>[
                              Divider(
                                thickness: 2,
                              ),
                              CategoryChip(
                                iconData: _.selectedIconData.value ??
                                    Icons.shopping_cart,
                                colors: Colors.grey,
                                onTap: _.selectIconData,
                              ),
                              CategoryChip(
                                  onTap: _.selectIconData,
                                  iconData:
                                      _.selectedIconData.value ?? Icons.work,
                                  colors: Colors.grey),
                              CategoryChip(
                                  iconData: _.selectedIconData.value ??
                                      Icons.sports_esports,
                                  onTap: _.selectIconData,
                                  colors: Colors.grey),
                              CategoryChip(
                                  onTap: _.selectIconData,
                                  iconData:
                                      _.selectedIconData.value ?? Icons.brush,
                                  colors: Colors.grey),
                              CategoryChip(
                                  onTap: _.selectIconData,
                                  iconData:
                                      _.selectedIconData.value ?? Icons.school,
                                  colors: Colors.grey),
                              CategoryChip(
                                  onTap: _.selectIconData,
                                  iconData:
                                      _.selectedIconData.value ?? Icons.group,
                                  colors: Colors.grey),
                              CategoryChip(
                                  onTap: _.selectIconData,
                                  iconData: _.selectedIconData.value ??
                                      Icons.music_note,
                                  colors: Color(0xFF9E9E9E)),
                              CategoryChip(
                                onTap: _.selectIconData,
                                iconData: _.selectedIconData.value ??
                                    Icons.health_and_safety,
                                colors: Colors.grey,
                              ),
                              CategoryChip(
                                onTap: _.selectIconData,
                                iconData:
                                    _.selectedIconData.value ?? Icons.movie,
                                colors: Colors.grey,
                              ),
                              CategoryChip(
                                onTap: _.selectIconData,
                                iconData:
                                    _.selectedIconData.value ?? Icons.home,
                                colors: Colors.grey,
                              ),
                              // Add more CategoryChip widgets here
                            ],
                          ),
                        ),
                      ),
                      primary: Colors.grey[700],
                      isborder: true,
                      borderradius: 7,
                      fontsizee: 15,
                      selectedIconData: _.selectedIconData,
                    ).marginOnly(left: 18),
                    CommonTextWidget(
                      color: Colors.grey[400],
                      text: 'Category color : ',
                      fontSize: 15,
                    ).marginOnly(left: 18, top: 20, bottom: 15),
                    Container(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: CreateNewCategoryController
                                    .getRandomColor()),
                            // color: Colors.amber,
                          ).marginAll(3);
                        },
                        itemCount: 20,
                      ),
                    ).marginOnly(bottom: 320),
                    Row(
                      children: [
                        CommonButton(
                          text: 'Cancel',
                          action: () => Get.back(),
                          height: 40,
                          fontsizee: 16,
                          Width: 140,
                          isborder: true,
                          textColor: DarkThemeColors.buttonprimaryColor,
                          primary: Colors.transparent,
                        ),
                        CommonButton(
                          text: 'Create Category',
                          action: () {},
                          height: 40,
                          fontsizee: 16,
                          Width: 140,
                          borderradius: 4,
                          primary: DarkThemeColors.buttonprimaryColor,
                        ).marginOnly(left: 50)
                      ],
                    )
                  ]).paddingAll(10);
            }));
  }
}
