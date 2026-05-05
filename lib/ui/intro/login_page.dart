import 'package:flutter/material.dart';
import 'package:flutter_ticketing/core/components/components.dart';
import 'package:flutter_ticketing/core/constants/colors.dart';
import 'package:flutter_ticketing/core/extensions/build_context_ext.dart';
import 'package:flutter_ticketing/ui/home/pages/mainpage.dart'; 

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
              child: Image.asset('assets/images/logo_white.png', height: 55.0),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
                child: ColoredBox(
                  color: AppColors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 44.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          controller: emailController,
                          label: 'email',
                          isOutlineBorder: false,
                        ),
                        const SpaceHeight(36.0),
                        CustomTextField(
                          controller: emailController,
                          label: 'email',
                          isOutlineBorder: false,
                        ),
                        const SpaceHeight(36.0),
                        CustomTextField(
                          controller: passwordController,
                          label: 'password',
                          isOutlineBorder: false,
                        ),
                        const SpaceHeight(86.0),
                        Button.filled(onPressed: ()  {
                         context.pushReplacement(Mainpage());
                        }, label: "login"),
                        const SpaceHeight(128.0),
                        Center(
                          child: Image.asset(
                            'assets/images/logo_cwb.png',
                            height: 40.0,
                          ),
                        )
                      ],
                    ),
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