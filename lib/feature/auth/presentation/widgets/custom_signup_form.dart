import 'package:chat_app/core/functions/custom_toast.dart';
import 'package:chat_app/core/functions/navigation.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/widgets/custom_button.dart';
import 'package:chat_app/core/widgets/custom_text_form_field.dart';
import 'package:chat_app/feature/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:chat_app/feature/auth/presentation/widgets/dont_have_acc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          showToast('Account successfully created');
        } else if (state is SignUpError) {
          showToast(state.error);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().SignUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                  labelText: 'Frist Name',
                  controller: context.read<AuthCubit>().fristname),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                  labelText: 'Last Name',
                  controller: context.read<AuthCubit>().lastname),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                  labelText: 'Email',
                  controller: context.read<AuthCubit>().email_up),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                  labelText: 'Password',
                  controller: context.read<AuthCubit>().password_up),
              SizedBox(
                height: 30,
              ),
              State is SignUpLoading
                  ? CircularProgressIndicator()
                  : CustomBtn(
                      text: AppStrings.SignUp,
                      color: Colors.lightBlue,
                      textcolor: Colors.white,
                      onPressed: () {
                        if (context
                            .read<AuthCubit>()
                            .SignUpFormKey
                            .currentState!
                            .validate()) {
                          context
                              .read<AuthCubit>()
                              .SignUpWithEmailAndPassword();
                          customNavigate(context, path: '/signIn');
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
