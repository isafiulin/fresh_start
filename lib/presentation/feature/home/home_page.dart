import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/data/models/profile.dart';
import 'package:fresh_start/generated/locale_keys.g.dart';
import 'package:fresh_start/presentation/widgets/motion_tap.dart';
import 'package:fresh_start/service/smoker_service.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Timer? _timer;
  Duration? _elapsedTime;
  DateTime? lastSmokeTime;

  @override
  void initState() {
    super.initState();
  }

  void _startTimer() {
    if (lastSmokeTime == null) {
      return;
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedTime = DateTime.now().difference(lastSmokeTime!);
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<Profile>>(
      valueListenable: Hive.box<Profile>('Profile').listenable(),
      builder: (context, box3, _) {
        Profile? profile = box3.get('Profile');
        if (profile != null &&
            profile.smokeInfoList.isNotEmpty &&
            lastSmokeTime != profile.smokeInfoList.last.smokeDate) {
          lastSmokeTime = profile.smokeInfoList.last.smokeDate;
          _startTimer();
        }
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Text(LocaleKeys.timeFromLastSmoke,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13.sp))
                      .tr(),
                  SizedBox(
                    height: 16.h,
                  ),
                  lastSmokeTime == null && _elapsedTime == null
                      ? EmptyLastTimer()
                      : Text(
                          formatDuration(_elapsedTime ?? Duration()),
                        ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Center(
                    child: MotionTap(
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) =>
                              StatefulBuilder(builder: (context, sett) {
                            return CupertinoAlertDialog(
                              title: Text(
                                LocaleKeys.smokeInfo,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ).tr(),
                              content: Text(LocaleKeys.wantToAddSmokeInfo,
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400))
                                  .tr(),
                              actions: [
                                CupertinoDialogAction(
                                  isDefaultAction: true,
                                  onPressed: () =>
                                      {Navigator.of(context).pop()},
                                  child: Text(
                                    LocaleKeys.cancel,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400),
                                  ).tr(),
                                ),
                                CupertinoDialogAction(
                                  isDefaultAction: false,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    SmokerService.addNewSmokerInfo();
                                  },
                                  child: Text(
                                    LocaleKeys.add,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w600),
                                  ).tr(),
                                ),
                              ],
                            );
                          }),
                        );
                      },
                      child: Container(
                        height: 200.r,
                        width: 200.r,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(Icons.smoking_rooms_sharp,
                              size: 50.r, color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class EmptyLastTimer extends StatelessWidget {
  const EmptyLastTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.noData,
        ).tr(),
      ],
    );
  }
}

String formatDuration(Duration duration) {
  int hours = duration.inHours;
  int minutes = duration.inMinutes % 60;
  int seconds = duration.inSeconds % 60;
  return "${hours.toString().padLeft(2, '0')}:"
      "${minutes.toString().padLeft(2, '0')}:"
      "${seconds.toString().padLeft(2, '0')}";
}
