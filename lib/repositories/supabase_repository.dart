import 'package:flutter/services.dart';
import 'package:supabase/supabase.dart';

class SupabaseRepository {
  static const _supabaseUrl = 'https://vgtbvdqsajlhxlypvqni.supabase.co';
  static const _supabaseannonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyMzE3NjMxMiwiZXhwIjoxOTM4NzUyMzEyfQ.Voy2lPelTSTAuKkaONpJgUMbzHl51h0Kvq3_NiiexJc';

  final client = SupabaseClient(_supabaseUrl, _supabaseannonKey);

  /// Returns Persist Session String
  Future<String> register({
    required String email,
    required String password,
  }) async {
    final res = await client.auth.signUp(email, password);
    final error = res.error;
    if (error != null) {
      throw PlatformException(code: 'signup error', message: error.message);
    }

    return res.data!.persistSessionString;
  }
}
