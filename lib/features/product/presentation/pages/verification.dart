import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megamall/features/product/presentation/widgets/custom_button.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
                'Verification',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Enter the 4-digit code sent to your email',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) => _otpBox(context)),
              ),
              SizedBox(height: 40.h),
              Center(
                child: CustomButton(
                  text: "Verify",
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _otpBox(BuildContext context) {
    return SizedBox(
      width: 65.w,
      height: 65.h,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: const Color(0xffF5F5F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
