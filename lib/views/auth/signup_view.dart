import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/logic/helper_methods.dart';
import 'package:tharad/core/ui/app_button.dart';
import 'package:tharad/core/ui/app_image.dart';
import 'package:tharad/core/ui/app_input.dart';
import 'package:tharad/views/auth/login_view.dart';
import 'package:tharad/views/widgets/dotted_select_image.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h),
            Center(
              child: AppImage(image: 'logo.png', height: 58.h, width: 178.w),
            ),
            SizedBox(height: 40.h),

            Center(
              child: Text(
                'إنشاء حساب جديد',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 24.h),
            Text('الصورة الشخصية'),

            SizedBox(height: 6.h),
            DottedSelectImage(),
            SizedBox(height: 12.h),
            Text('اسم المستخدم'),
            SizedBox(height: 6.h),
            AppInput(hintText: 'thar22'),
            SizedBox(height: 12.h),
            Text('البريد الالكتروني'),
            SizedBox(height: 6.h),
            AppInput(hintText: 'Tharad@gmail.com'),
            SizedBox(height: 12.h),
            Text('كلمة المرور'),
            SizedBox(height: 6.h),
            AppInput(
              hintText: '***********',
              isSuffix: true,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 12.h),
            Text('تأكيد كلمة المرور'),
            SizedBox(height: 6.h),
            AppInput(
              hintText: '***********',
              isSuffix: true,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 40.h),
            AppButton(isGradient: true, text: 'إنشاء حساب جديد'),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لديك حساب؟',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontSize: 12.sp),
                ),
                TextButton(
                  onPressed: () {
                    navigateTo(LoginView());
                  },
                  child: Text('تسجيل الدخول'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
