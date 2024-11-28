import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                Text(
                  'Тут можно сделать статистику(рейтинг таблица) среди тех кто бросил курить через приложение, по городам, странам, континетам',
                ),
                Text("добавить разные статьи, парсить где-то",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11.sp)),
                Text("добавить бест кейсы разных людй",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11.sp)),
              ],
            )),
      ),
    );
  }
}
