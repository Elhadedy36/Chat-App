
import 'package:chat_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyprofilePic extends StatelessWidget {
  const MyprofilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80,
      backgroundImage: AssetImage(Assets.imagesPerson),
    );
  }
}
