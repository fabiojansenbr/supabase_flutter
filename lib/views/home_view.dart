import 'package:flutter/material.dart';
import 'package:supabase_flutter/repositories/supabase_repository.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    final repository = SupabaseRepository();
    repository.getCurrentUser();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                _logout();
              },
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }

  _logout() async {
    final repository = SupabaseRepository();

    repository.logout();

    Navigator.pushReplacementNamed(context, '/');
  }
}
