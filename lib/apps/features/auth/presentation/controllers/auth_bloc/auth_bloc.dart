import 'package:doctor_hunt/apps/features/auth/data/service/auth_supabase_service.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/controllers/auth_bloc/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthSupabaseService authService;

  AuthBloc(this.authService) : super(AuthInitial()) {
    on<LoginEvent>(_onLogin);
    on<SignUpEvent>(_onSignUp);
    on<LogoutEvent>(_onLogout);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    try {
      await authService.login(email: event.email, password: event.password);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(errorMessage: e.toString()));
    }
  }

  Future<void> _onSignUp(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    try {
      await authService.signUp(
        email: event.email,
        password: event.password,
        name: event.name,
      );
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(errorMessage: e.toString()));
    }
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    try {
      await authService.logout();
      emit(AuthLoggedOut());
    } catch (e) {
      emit(AuthFailure(errorMessage: e.toString()));
    }
  }
}
