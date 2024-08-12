import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_ui/app/routes/app_pages.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/constant/colors.dart';
import 'package:todo_ui/constant/font.dart';

class CommonTaskTile extends StatelessWidget {
  final String title;
  final String time;
  final String category;
  final int priority;
  final Color? categoryColor;
  final String? CategoryText;
  final IconData? CatgoryIcon;

  const CommonTaskTile(
      {Key? key,
      required this.title,
      required this.time,
      required this.category,
      required this.priority,
      this.categoryColor,
      this.CategoryText,
      this.CatgoryIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.TASK_SCREEN),
      child: Container(
        margin: EdgeInsets.only(bottom: 10), // Add some space between the tiles
        padding: EdgeInsets.all(10), // Padding inside the tile
        decoration: BoxDecoration(
          color: Colors.grey[800], // Tile background color
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
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: FontConstants.fontFamilyLato,
                  color: Colors.white,
                ),
              ),
            ]),

            // Category and Priority
            CategoryText != null && categoryColor != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 6), // Spacing between the title and the time

                      Text(
                        time,
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ).marginOnly(right: 25),

                      CommonButton(
                        action: () {
                          Get.defaultDialog(
                            title: "Choose Category",
                            titleStyle: TextStyle(fontSize: 18),
                            backgroundColor: Colors.grey[900],
                            radius: 8,
                            content: Container(
                              width: double.infinity,
                              child: const Wrap(
                                alignment: WrapAlignment.center,
                                spacing: 15.0, // spacing between the chips
                                runSpacing: 15.0, // spacing between the rows
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
                                  // Add more CategoryChip widgets here
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              CommonButton(
                                action: () {
                                  Get.toNamed(Routes.CREATE_NEW_CATEGORY);
                                },
                                text: 'Add Category',
                                height: 40,
                                borderradius: 5,
                                Width: 250,
                                primary: DarkThemeColors.buttonprimaryColor,
                              )
                            ],
                          );
                        },
                        primary:
                            categoryColor ?? DarkThemeColors.buttonprimaryColor,
                        height: 40,
                        text: CategoryText,
                        fontsizee: 15,
                        bordercolors:
                            categoryColor ?? DarkThemeColors.buttonprimaryColor,
                        borderradius: 5,
                        iconData: CatgoryIcon,
                        textColor: Colors.white,
                        Width: 107,
                      ),
                      SizedBox(
                          width:
                              8), // Spacing between the category and the priority
                      CommonButton(
                        height: 40,
                        borderradius: 5,
                        text: '1',
                        iconData: Icons.flag,
                        textColor: Colors.white,
                        Width: 50,
                      )
                    ],
                  )
                : Text(
                    time,
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ).marginOnly(right: 158),
          ],
        ),
      ).marginOnly(right: 15, left: 15, bottom: 5),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final IconData? iconData;
  final String? label;
  final Color colors;
  final Function(IconData)? onTap;

  const CategoryChip({
    Key? key,
    required this.colors,
    this.iconData,
    this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(iconData as IconData),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              color: colors, borderRadius: BorderRadius.circular(5)),
          width: 60,
          height: label != null ? 55 : 50,
          child: Column(
            children: [
              SizedBox(height: 10),
              Icon(iconData as IconData?, color: Colors.white),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        if (label != null)
          Text(
            label!,
            style: TextStyle(fontSize: 13),
          ),
      ]),
    );
  }
}
