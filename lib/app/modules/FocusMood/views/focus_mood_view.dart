import 'dart:math';

import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_statusbutton.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/commons/commonsocialtile.dart';

import 'package:todo_ui/constant/colors.dart';

import '../controllers/focus_mood_controller.dart';

class FocusMoodView extends GetView<FocusMoodController> {
  const FocusMoodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<TimeData> timeList = [
      TimeData(domain: DateTime(2023, 8, 26), measure: 3),
      TimeData(domain: DateTime(2023, 8, 27), measure: 5),
      TimeData(domain: DateTime(2023, 8, 29), measure: 9),
      TimeData(domain: DateTime(2023, 9, 1), measure: 6.5),
    ];
    final List ranking = [
      {'class': 'SUN', 'total': 13},
      {'class': 'MON', 'total': 23},
      {'class': 'TUE', 'total': 14},
      {'class': 'WED', 'total': 8},
      {'class': 'THU', 'total': 7},
      {'class': 'FRI', 'total': 21},
      {'class': 'SAT', 'total': 20},
    ];

    List<OrdinalData> ordinalList = [
      OrdinalData(domain: 'Mon', measure: 3),
      OrdinalData(domain: 'Tue', measure: 2),
      OrdinalData(domain: 'Wed', measure: 34),
      OrdinalData(domain: 'Thu', measure: 6.5),
      OrdinalData(domain: 'Mon', measure: 3),
      OrdinalData(domain: 'Tue', measure: 5),
      OrdinalData(domain: 'Wed', measure: 9),
      OrdinalData(domain: 'Thu', measure: 6.5),
    ];

    final timeGroup = [
      TimeGroup(
        id: '1',
        data: timeList,
      ),
    ];

    return GetBuilder<FocusMoodController>(
        init: FocusMoodController(),
        builder: (_) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const CommonTextWidget(
                    text: 'Focus Mode',
                    fontSize: 22,
                  ).marginOnly(top: 60, bottom: 60),
                  NeonCircularTimer(
                    width: 200,
                    duration: 20,
                    autoStart: false,
                    backgroudColor: Colors.transparent,
                    isTimerTextShown: true,
                    neumorphicEffect: true,
                    innerFillGradient: LinearGradient(colors: [
                      DarkThemeColors.buttonprimaryColor,
                      Colors.blueAccent.shade400
                    ]),
                    neonGradient: LinearGradient(colors: [
                      DarkThemeColors.buttonprimaryColor,
                      Colors.blueAccent.shade400
                    ]),
                    controller: _.reset,
                  ),
                  const CommonTextWidget(
                    text:
                        'While your focus mode is on, all of your notifications will be off',
                    textAlign: TextAlign.center,
                  ).marginOnly(top: 20),
                  Obx(
                    () => CommonButton(
                      action: () {
                        _.onpressed();
                      },
                      Width: 200,
                      primary: DarkThemeColors.buttonprimaryColor,
                      text: _.isonTap == false
                          ? 'Start Focusing'
                          : 'Stop Focusing',
                    ).marginOnly(top: 40, bottom: 10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CommonTextWidget(text: 'Overview', fontSize: 22),
                      //    const CustomDropdownButton(title: 'This Week')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: DChartBarCustom(
                      loadingDuration: const Duration(milliseconds: 1500),
                      showLoading: true,
                      valueAlign: Alignment.topCenter,
                      showDomainLine: true,
                      showDomainLabel: true,
                      showMeasureLine: true,
                      showMeasureLabel: true,
                      spaceDomainLabeltoChart: 10,
                      spaceMeasureLabeltoChart: 5,
                      spaceDomainLinetoChart: 15,
                      spaceMeasureLinetoChart: 20,
                      spaceBetweenItem: 16,
                      radiusBar: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      measureLabelStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                      domainLabelStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                      measureLineStyle:
                          const BorderSide(color: Colors.white, width: 2),
                      domainLineStyle:
                          const BorderSide(color: Colors.white, width: 2),
                      max: 25,
                      listData: List.generate(ranking.length, (index) {
                        // Random from 'dart:math'
                        Color currentColor = ranking[index]['class'] == 'SAT'
                            ? DarkThemeColors.buttonprimaryColor
                            : Colors.grey;
                        return DChartBarDataCustom(
                          onTap: () {
                            print(
                              '${ranking[index]['class']} => ${ranking[index]['total']}',
                            );
                          },
                          elevation: 8,
                          value: ranking[index]['total'].toDouble(),
                          label: ranking[index]['class'],
                          color: currentColor.withOpacity(1),
                          splashColor: Colors.blue,
                          showValue:
                              ranking[index]['class'] == 'C' ? false : true,
                          valueStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          valueCustom: ranking[index]['total'] > 20
                              ? Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 2),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : null,
                          valueTooltip: '${ranking[index]['total']} Student',
                        );
                      }),
                    ),
                  ).marginAll(10),
                  SizedBox(
                    height: 25,
                  ),
                  CommonTilesSocialWidget(
                          title: 'Instagram',
                          subtitle: 'You spent 3h on Twitter today',
                          image: 'assets/images/instagram.png')
                      .marginOnly(bottom: 10),
                  CommonTilesSocialWidget(
                          title: 'Google',
                          subtitle: 'You spent 3h on Google today',
                          image: 'assets/images/heygoogle.png')
                      .marginOnly(bottom: 10),
                  CommonTilesSocialWidget(
                          title: 'Twitter',
                          subtitle: 'You spent 3h on Twitter today',
                          image: 'assets/images/twitter.png')
                      .marginOnly(bottom: 10),
                  CommonTilesSocialWidget(
                          title: 'Facebook',
                          subtitle: 'You spent 3h on Facebook today',
                          image: 'assets/images/facebook.png')
                      .marginOnly(bottom: 10),
                  CommonTilesSocialWidget(
                          title: 'Gmail',
                          subtitle: 'You spent 3h on Gmail today',
                          image: 'assets/images/social.png')
                      .marginOnly(bottom: 10),
                ],
              ),
            ),
          );
        });
  }
}
