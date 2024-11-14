import 'package:chat_app/core/functions/navigation.dart';
import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      
      customNavigaeReplacement(context, path: '/signIn');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(Assets.imagesChat)),
          Text(
            AppStrings.appName,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 16, 96, 162)),
          )
        ],
      ),
    );
  }
}
