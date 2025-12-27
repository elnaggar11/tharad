import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/ui/app_button.dart';
import 'package:tharad/core/ui/app_image.dart';
import 'package:tharad/core/ui/app_input.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            SizedBox(height: 120.h),
            AppImage(image: 'logo.png', height: 58.h, width: 178.w),
            SizedBox(height: 100.h),
            Text('تسجيل الدخول', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 24.h),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text('البريد الالكتروني'),
            ),

            SizedBox(height: 6.h),
            AppInput(hintText: 'Tharad@gmail.com'),
            SizedBox(height: 12.h),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text('البريد الالكتروني'),
            ),
            SizedBox(height: 6.h),
            AppInput(
              hintText: '***********',
              isSuffix: true,
              textInputAction: TextInputAction.done,
            ),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text('تذكرني'),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text('هل نسيت كلمة المرور؟'),
                ),
              ],
            ),
            SizedBox(height: 18.h),

            AppButton(isGradient: true, text: 'المتابعه'),
            SizedBox(height: 12.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ليس لديك حساب؟',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontSize: 12.sp),
                ),
                TextButton(onPressed: () {}, child: Text('انشاء حساب جديد')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
