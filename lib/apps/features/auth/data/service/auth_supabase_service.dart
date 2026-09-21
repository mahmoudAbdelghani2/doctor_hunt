import 'package:supabase_flutter/supabase_flutter.dart';

class AuthSupabaseService {
  final _supabase = Supabase.instance.client;

  Future<AuthResponse> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {'name': name},
      );
      return response;
    } catch (e) {
      throw Exception("The registration failed: $e");
    }
  }

  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      return response;
    } catch (e) {
      throw Exception("The login failed: $e");
    }
  }

  Future<void> logout() async {
    await _supabase.auth.signOut();
  }
}
