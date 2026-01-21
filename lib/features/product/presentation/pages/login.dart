import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megamall/core/router/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:megamall/core/router/app_router.dart';
import 'package:megamall/features/product/presentation/widgets/custom_button.dart';
import 'package:megamall/features/product/presentation/widgets/custom_textfiel.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back to\nMega Mall',
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Log In to continue',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 40.h),
                        const CustomTextField(
                          label: 'Email',
                          hintText: 'Enter your email',
                        ),
                        SizedBox(height: 20.h),
                        const CustomTextField(
                          label: 'Password',
                          hintText: 'Enter your password',
                          isPassword: true,
                        ),
                        SizedBox(height: 30.h),
                        Center(
                          child: CustomButton(
                            text: "Sign Up",
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      context.push(AppRouter.resetPassword);
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.push(AppRouter.signup);
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );    
  }
}
