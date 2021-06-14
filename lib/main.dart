import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/views/home_view.dart';
import 'package:supabase_flutter/views/login_view.dart';
import 'package:supabase_flutter/views/register_view.dart';
import 'package:supabase_flutter/views/splash_view.dart';

void main() {
  GetIt locator = GetIt.instance;
  locator.registerSingleton<SupabaseClient>(SupabaseClient(
      'https://vgtbvdqsajlhxlypvqni.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyMzE3NjMxMiwiZXhwIjoxOTM4NzUyMzEyfQ.Voy2lPelTSTAuKkaONpJgUMbzHl51h0Kvq3_NiiexJc'));

  runApp(
    MyApp(),
  );
}

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
