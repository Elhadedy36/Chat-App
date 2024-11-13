import 'package:chat_app/core/functions/sliver_sized_box.dart';
import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/widgets/custom_button.dart';
import 'package:chat_app/core/widgets/custom_text_form_field.dart';
import 'package:chat_app/feature/auth/presentation/widgets/dont_have_acc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 66, 137, 196),
        centerTitle: true,
        title: Text(
          AppStrings.appName,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Image.asset(Assets.imagesLoginScreen43089243582001),
            ),
            SliverSizedBox(30),
            SliverToBoxAdapter(
              child: CustomTextFormField(labelText: 'Email'),
            ),
            SliverSizedBox(30),
            SliverToBoxAdapter(
              child: CustomTextFormField(labelText: 'Password'),
            ),
            SliverSizedBox(30),
            SliverToBoxAdapter(
              child: CustomBtn(
                text: AppStrings.SignIn,
                textcolor: Colors.white,
                color: Colors.lightBlue,
                onPressed: () {},
              ),
            ),
            SliverSizedBox(5),
            SliverToBoxAdapter(
              child: DontHaveAnnAccountWidget(
                  text1: AppStrings.donthaveannaccount,
                  text2: AppStrings.SignUp),
            )
          ],
        ),
      ),
    );
  }
}
