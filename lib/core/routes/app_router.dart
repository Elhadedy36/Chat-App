import 'package:chat_app/feature/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:chat_app/feature/auth/presentation/view/sign_in_view.dart';
import 'package:chat_app/feature/auth/presentation/view/sign_up_view.dart';
import 'package:chat_app/feature/splashscreen/presentation/view/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
  GoRoute(
      path: '/signIn',
      builder: (context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignInView(),
          )),
  GoRoute(
      path: '/signUp',
      builder: (context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpView(),
          )),
]);
