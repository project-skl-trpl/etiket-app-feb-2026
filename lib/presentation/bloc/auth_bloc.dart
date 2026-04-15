import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../domain/usecases/login_usecase.dart';
// import '../../domain/usecases/logout_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  // final LogoutUseCase logoutUseCase;
  final AuthLocalDatasource authLocalDatasource;

  AuthBloc(this.loginUseCase, this.authLocalDatasource) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        final result = await loginUseCase(event.email, event.password);
        await authLocalDatasource.saveToken(result['token']);
        emit(AuthSuccess(result['user'], result['token']));
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    // on<LogoutEvent>((event, emit) async {
    //   emit(AuthLoading());
    //   try {
    //     await logoutUseCase();
    //     emit(AuthLogout());
    //   } catch (e) {
    //     emit(AuthFailure(e.toString()));
    //   }
    // });
  }
}
