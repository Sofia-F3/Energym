import 'package:energymc/presentations/login_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/home', 
    builder: (context, state) => const LoginScreen()),
]);
