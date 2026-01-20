import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final bool isPassword;
  final IconData? prefixIcon;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.prefixIcon,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 325.w,
      child: TextField(
        obscureText: _obscureText,
        style: TextStyle(fontSize: 14.sp),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffF5F5F5),
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.black54, fontSize: 14.sp),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
          prefixIcon: widget.prefixIcon != null 
              ? Icon(widget.prefixIcon, color: Colors.black54, size: 20.sp) 
              : null,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black54,
                    size: 20.sp,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}