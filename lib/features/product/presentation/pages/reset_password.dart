import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:megamall/core/router/app_router.dart';
import 'package:megamall/features/product/presentation/widgets/custom_button.dart';
import 'package:megamall/features/product/presentation/widgets/custom_textfiel.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, size: 24.sp, color: const Color(0xff161616)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Enter your email address to reset your password',
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
              SizedBox(height: 30.h),
              Center(
                child: CustomButton(
                  text: "Reset Password",
                  onPressed: () {
                    context.push(AppRouter.verification);
                    // Navigate to verification or show success
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
