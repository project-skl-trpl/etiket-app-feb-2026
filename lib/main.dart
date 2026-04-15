import 'package:etiket_app/data/datasources/auth_local_datasource.dart';
import 'package:etiket_app/data/datasources/auth_remote_datasource.dart';
import 'package:etiket_app/data/repositories/auth_repository_impl.dart';
import 'package:etiket_app/domain/usecases/login_usecase.dart';
import 'package:etiket_app/presentation/bloc/auth_bloc.dart';
import 'package:etiket_app/presentation/ui/intro/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => AuthBloc(
                LoginUseCase(AuthRepositoryImpl(AuthRemoteDatasource())),
                AuthLocalDatasource(),
              ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
