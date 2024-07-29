import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wirepayx/main.dart';
import 'package:wirepayx/modules/home/widgets/sub_widgets/section_title.dart';
import 'package:wirepayx/shared/assets/colors.dart';
import 'package:wirepayx/shared/assets/icons.dart';
import 'package:wirepayx/shared/widgets/button.dart';

class GetStartedSection extends StatelessWidget {
  const GetStartedSection({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const SectionTitle(
          title: 'Get started',
          actionText: 'View all steps',
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Verify your identity, Kate!',
                          style: textTheme.bodyMedium!
                              .copyWith(color: AppColors.darkText),
                        ),
                        5.verticalSpace,
                        Text(
                          'Submit additional information to verify your identity.',
                          style: textTheme.bodySmall!
                              .copyWith(color: AppColors.darkTextLow),
                        ),
                      ],
                    ),
                  ),
                  20.horizontalSpace,
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 48.w,
                        height: 48.w,
                        child: const CircularProgressIndicator(
                          strokeCap: StrokeCap.round,
                          color: AppColors.blue,
                          value: .2,
                          strokeWidth: 4,
                          backgroundColor: AppColors.lightGrey,
                        ),
                      ),
                      Center(
                        child: SvgPicture.asset(IconAssets.verifyUserIcon),
                      ),
                    ],
                  ),
                ],
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    wifth: 122.w,
                    height: 32.h,
                    text: "Verify identity",
                    bgColor: AppColors.blue,
                    textStyle:
                        textTheme.titleMedium!.copyWith(color: Colors.white),
                    onTap: showFeatureNotImplementedSnackbar,
                  ),
                  InkWell(
                    onTap: showFeatureNotImplementedSnackbar,
                    child: Text(
                      "Dismiss",
                      style: textTheme.bodySmall?.copyWith(
                        color: AppColors.darkText,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  void showFeatureNotImplementedSnackbar() {
    ScaffoldMessenger.of(navigationKey.currentContext!).showSnackBar(
      const SnackBar(
        content: Text("Feature not implemented, yet."),
      ),
    );
  }
}
