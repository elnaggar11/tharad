import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/ui/app_image.dart';

class DottedSelectImage extends StatelessWidget {
  const DottedSelectImage({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RectDottedBorderOptions(
        dashPattern: [10, 10],
        color: Theme.of(context).primaryColor,
        strokeWidth: 1,
      ),
      child: Container(
        height: 78.w,
        width: 350.w,
        color: Color(0xffEAEDEC),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(image: 'camera.svg'),
            SizedBox(height: 6.h),
            Text("الملفات المسموح بيها :  JPEG , PNG"),
            SizedBox(height: 6.h),
            Text('الحد الاقصي : 5MB'),
          ],
        ),
      ),
    );
  }
}
