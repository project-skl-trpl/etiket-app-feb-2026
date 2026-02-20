import 'package:flutter/material.dart';

import '../../../core/core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
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
