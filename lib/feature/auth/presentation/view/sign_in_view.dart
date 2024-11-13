import 'package:chat_app/core/functions/navigation.dart';
import 'package:chat_app/core/functions/sliver_sized_box.dart';
import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_strings.dart';

import 'package:chat_app/feature/auth/presentation/functions/auth_appbar.dart';
import 'package:chat_app/feature/auth/presentation/widgets/custom_sign_in_form.dart';
import 'package:chat_app/feature/auth/presentation/widgets/dont_have_acc_widget.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Image.asset(Assets.imagesLoginScreen43089243582001),
            ),
            SliverToBoxAdapter(
              child: CustomSignInForm(),
            ),
            SliverSizedBox(10),
            SliverToBoxAdapter(
              child: DontHaveAnnAccountWidget(
                text1: AppStrings.donthaveannaccount,
                text2: AppStrings.SignUp,
                onTap: () => customNavigaeReplacement(context, path: '/signUp'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
