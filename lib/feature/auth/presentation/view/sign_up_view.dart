import 'package:chat_app/core/functions/navigation.dart';
import 'package:chat_app/core/functions/sliver_sized_box.dart';
import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/widgets/custom_button.dart';
import 'package:chat_app/core/widgets/custom_text_form_field.dart';
import 'package:chat_app/feature/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:chat_app/feature/auth/presentation/functions/auth_appbar.dart';
import 'package:chat_app/feature/auth/presentation/widgets/custom_signup_form.dart';
import 'package:chat_app/feature/auth/presentation/widgets/dont_have_acc_widget.dart';
import 'package:chat_app/feature/auth/presentation/widgets/my_profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverSizedBox(20),
            const SliverToBoxAdapter(
              child: MyprofilePic(),
            ),
            SliverSizedBox(30),
            const SliverToBoxAdapter(
              child: CustomSignUpForm(),
            ),
            SliverSizedBox(10),
            SliverToBoxAdapter(child:
              DontHaveAnnAccountWidget(
                text1: AppStrings.alreadyhaveannaccount,
                text2: AppStrings.SignIn,
                onTap: () {
                  customNavigaeReplacement(context, path: '/signIn');
                },
              ),),
             
          ],
        ),
      ),
    );
  }
}
