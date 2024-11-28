import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/core/theme/color.dart';
import 'package:fresh_start/data/models/profile.dart';
import 'package:fresh_start/presentation/feature/home/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale =
        EasyLocalization.of(context)?.currentLocale?.languageCode;
    return ValueListenableBuilder<Box<Profile>>(
        valueListenable: Hive.box<Profile>('Profile').listenable(),
        builder: (context, box3, _) {
          Profile? profile = box3.get('Profile');
          return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('тут будут графики и аналитика'),
                      SizedBox(
                        height: 16.h,
                      ),
                      if (profile != null)
                        Text(
                            'С момента регистрации ${DateFormat('dd MMM yyyy', currentLocale).format(profile.registrationDate)} вы выкурили уже ${profile.smokeInfoList.length} сигарет',
                            style: TextStyle(fontSize: 14.sp)),
                      SizedBox(
                        height: 16.h,
                      ),
                      if (profile != null)
                        ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => Container(
                                  padding: EdgeInsets.all(16.r),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.B58D8D,
                                  ),
                                  child: Column(
                                    children: [
                                      if (index - 1 >= 0)
                                        Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 4.0.h),
                                          child: Text(
                                              'С предыдущего раза прошло ${formatDuration(profile.smokeInfoList[index].smokeDate.difference(profile.smokeInfoList[index - 1].smokeDate))}',
                                              style:
                                                  TextStyle(fontSize: 14.sp)),
                                        ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.smoking_rooms,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Flexible(
                                            child: Text(
                                                'Я её выкурил в это время \n  ${formatDateTime(profile.smokeInfoList[index].smokeDate, currentLocale ?? '')}'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 8.h,
                                ),
                            itemCount: profile.smokeInfoList.length),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}

String formatDateTime(DateTime dateTime, String locale) {
  print(locale);
  bool is24HourFormat = !locale.startsWith('en') || !locale.endsWith('_US');

  String timePattern = is24HourFormat ? 'HH:mm' : 'hh:mm a'; // 24 ч или 12ч
  String datePattern = 'dd MMM yyyy';

  DateFormat formatter = DateFormat('$datePattern $timePattern', locale);

  // Форматируем дату
  return formatter.format(dateTime);
}
