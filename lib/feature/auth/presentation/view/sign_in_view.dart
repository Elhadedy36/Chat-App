import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          AppStrings.SignIn,
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
            customSliverSizedBox(30),
            SliverToBoxAdapter(
              child: CustomTextFormField(labelText: 'Email'),
            ),
            customSliverSizedBox(30),
            SliverToBoxAdapter(
              child: CustomTextFormField(labelText: 'Password'),
            ),
            customSliverSizedBox(30),
            SliverToBoxAdapter
            (
              child: CustomBtn(text: AppStrings.SignIn, color: Colors.lightBlue,onPressed: () 
              {

              } ,),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
   CustomBtn(
      {super.key, this.onPressed, required this.text, required this.color});
  final void Function()? onPressed;
  final String text;
   Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ) , 
      onPressed: onPressed,
     
      onHover: (value) {
        if (value) {
          color = Colors.black;
        }
      },
     child: Text(text)
     );
  }
}

SliverToBoxAdapter customSliverSizedBox(double height) {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: height,
    ),
  );
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.onChanged,
      this.obscureText,
      this.suffixIcon,
      this.prefixIcon});
  final String labelText;
  final Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelText: labelText,
          border: getBorderStyle(10, Colors.black),
          focusedBorder: getBorderStyle(10, Colors.blue),
          errorBorder: getBorderStyle(10, Colors.red),
          enabledBorder: getBorderStyle(10, Colors.black)),
    );
  }
}

OutlineInputBorder getBorderStyle(double borderradius, Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderradius),
    borderSide: BorderSide(color: color, width: 2),
  );
}
