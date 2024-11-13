import 'package:chat_app/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
              designSize: Size(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height),
              minTextAdapt: true,
              splitScreenMode: true,
              // Use builder only if you need to use library outside ScreenUtilInit context
              builder: (_, child) {
                return MaterialApp.router(
                  theme: ThemeData(),
                  debugShowCheckedModeBanner: false,
                  routerConfig: router,
                );
              });
  }
}