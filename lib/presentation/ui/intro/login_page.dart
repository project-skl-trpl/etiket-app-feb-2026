import 'package:etiket_app/core/components/custom_text_field.dart';
import 'package:etiket_app/core/core.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          SizedBox(
            height: 260.0,
            child: Center(
              child: Assets.images.logoWhite.image(width: 200, height: 200),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                child: Container(
                  color: AppColors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.0,
                    vertical: 44.0,
                  ),
                  child: Column(
                    children: [
                      // TextField(
                      //   controller: emailController,
                      //   decoration: InputDecoration(
                      //     labelText: 'Email',
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(8.0),
                      //     ),
                      //   ),
                      // ),
                      CustomTextField(
                        controller: emailController,
                        label: 'Email',
                        showLabel: false,
                      ),
                      SpaceHeight(height: 36.0),
                      // TextField(
                      //   controller: passwordController,
                      //   obscureText: true,
                      //   decoration: InputDecoration(labelText: 'Password'),
                      // ),
                      CustomTextField(
                        controller: passwordController,
                        label: 'Password',
                        showLabel: false,
                        obscureText: true,
                      ),
                      SpaceHeight(height: 86.0),
                      SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {
                            // print('Email: ${emailController.text}');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.white,
                          ),
                          child: Text('Login'),
                        ),
                      ),
                      SpaceHeight(height: 86.0),
                      Center(
                        child: Assets.images.logoIdn.image(
                          width: 100,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
