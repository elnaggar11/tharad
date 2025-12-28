import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/logic/helper_methods.dart';
import 'package:tharad/core/ui/app_button.dart';
import 'package:tharad/core/ui/app_image.dart';
import 'package:tharad/core/ui/pin_code_text_field_widget.dart';
import 'package:tharad/views/auth/login_view.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
            Text('رمز التحقق', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 8.h),
            Text(
              ' لاستكمال فتح حسابك ادخل رمز التحقق المرسل عبر البريد الإلكتروني',
            ),

            SizedBox(height: 40.h),
            PinCodeTextFieldWidget(),
            SizedBox(height: 12.h),

            Row(
              children: [
                Text(
                  'Sec 00:59 ',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: Color(0xff998C8C)),
                ),
                Spacer(),
                Text(
                  'لم يصلك رمز ؟ ',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ' اعادة ارسال',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 10.sp,
                      color: Color(0xff42867B),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),

            AppButton(
              isGradient: true,
              text: 'المتابعه',
              onTap: () {
                navigateTo(LoginView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
