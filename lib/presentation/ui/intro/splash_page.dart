import 'package:etiket_app/data/datasources/auth_local_datasource.dart';
import 'package:etiket_app/presentation/ui/home/pages/main_page.dart';
import 'package:etiket_app/presentation/ui/intro/login_page.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _local = AuthLocalDatasource();

  @override
  void initState() {
    super.initState();
    _authCheck();
  }

  Future<void> _authCheck() async {
    await Future.delayed(const Duration(seconds: 2));
    final token = await _local.getToken();
    if (!mounted) return;
    if (token != null) {
      context.pushReplacement(const MainPage());
    } else {
      context.pushReplacement(const LoginPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(
    //   const Duration(seconds: 3),
    //   // ignore: use_build_context_synchronously
    //   () => context.pushReplacement(const LoginPage()),
    // );
    return Scaffold(
      body: Center(
        child: Assets.images.logoBlue.image(width: 200, height: 200),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Align(
          alignment: Alignment.center,
          child: Assets.images.logoIdn.image(width: 100, height: 50),
        ),
      ),
    );
  }
}
