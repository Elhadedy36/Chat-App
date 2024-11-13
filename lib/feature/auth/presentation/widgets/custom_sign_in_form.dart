import 'package:chat_app/core/functions/custom_toast.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/widgets/custom_button.dart';
import 'package:chat_app/core/widgets/custom_text_form_field.dart';
import 'package:chat_app/feature/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          showToast('login success');
        } else if (state is SignInError) {
          showToast(state.error);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().SignInKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  labelText: 'Email',
                  controller: context.read<AuthCubit>().email_in),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  labelText: 'Password',
                  controller: context.read<AuthCubit>().password_in),
              const SizedBox(
                height: 20,
              ),
              state is SignInLoading
                  ? CircularProgressIndicator()
                  : CustomBtn(
                      text: AppStrings.SignIn,
                      textcolor: Colors.white,
                      color: Colors.lightBlue,
                      onPressed: () {
                        if (context
                            .read<AuthCubit>()
                            .SignInKey
                            .currentState!
                            .validate()) {
                          context
                              .read<AuthCubit>()
                              .SignInWithEmailAndPassword();
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
