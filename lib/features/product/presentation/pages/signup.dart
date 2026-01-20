import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megamall/features/product/presentation/widgets/custom_button.dart';
import 'package:megamall/features/product/presentation/widgets/custom_textfiel.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new , size: 24.sp, color: const Color(0xff161616)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Text(
              'Welcome back to\nMega Mall',
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Sign up to continue',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20.h),
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
            SizedBox(height: 20.h),
            const CustomTextField(
              label: 'Confirm Password',
              hintText: 'Enter your confirm password',
              isPassword: true,
            ),
            SizedBox(height: 20.h),
            CustomButton(
              text: 'Sign up',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );    
  }
}
