import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/ui/app_button.dart';
import 'package:tharad/core/ui/app_image.dart';
import 'package:tharad/core/ui/app_input.dart';
import 'package:tharad/views/widgets/dotted_select_image.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          'الملف الشخصي',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          AppImage(image: 'notification.svg'),
          SizedBox(width: 20.w),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff5CC7A3), Color(0xff265355)],
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h),
                Text('اسم المستخدم'),
                SizedBox(height: 6.h),
                AppInput(hintText: 'thar22'),

                SizedBox(height: 12.h),
                Text('البريد الالكتروني'),
                SizedBox(height: 6.h),
                AppInput(hintText: 'Tharad@gmail.com'),
                SizedBox(height: 12.h),
                Text('الصورة الشخصية'),
                SizedBox(height: 6.h),
                DottedSelectImage(),
                SizedBox(height: 12.h),

                Text('كلمة المرور القديمة'),
                SizedBox(height: 6.h),
                AppInput(
                  hintText: '***********',
                  isSuffix: true,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 12.h),
                Text('كلمة المرور الجديدة'),
                SizedBox(height: 6.h),
                AppInput(
                  hintText: '***********',
                  isSuffix: true,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 12.h),
                Text('تأكيد كلمة المرور الجديدة'),
                SizedBox(height: 6.h),
                AppInput(
                  hintText: '***********',
                  isSuffix: true,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 54.h),
                AppButton(isGradient: true, text: 'إنشاء حساب جديد'),
                SizedBox(height: 16.h),
                TextButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'تسجيل الخروج',
                      style: TextStyle(
                        color: Color(0xffFF1020),
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
      ),
    );
  }
}
