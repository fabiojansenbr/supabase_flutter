import 'package:flutter/material.dart';
import 'package:supabase_flutter/views/home_view.dart';
import 'package:supabase_flutter/views/login_view.dart';
import 'package:supabase_flutter/views/register_view.dart';
import 'package:supabase_flutter/views/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashView(),
        '/login': (_) => const LoginView(),
        '/register': (_) => const RegisterView(),
        '/home': (_) => const HomeView(),
      },
    );
  }
}
