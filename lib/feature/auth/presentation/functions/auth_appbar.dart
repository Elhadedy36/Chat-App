
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar authAppbar ()
{
  return  AppBar(
        backgroundColor: const Color.fromARGB(255, 66, 137, 196),
        centerTitle: true,
        title: const Text(
          AppStrings.appName,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      );
}