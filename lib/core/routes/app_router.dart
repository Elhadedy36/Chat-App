import 'package:chat_app/feature/auth/presentation/view/sign_in_view.dart';
import 'package:chat_app/feature/splashscreen/presentation/view/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
  GoRoute(path: '/signIn', builder: (context, state) => const SignInView()),
]);
