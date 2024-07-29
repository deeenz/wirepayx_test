import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wirepayx/main.dart';
import 'package:wirepayx/modules/home/widgets/sub_widgets/account_information_section.dart';
import 'package:wirepayx/modules/home/widgets/sub_widgets/account_section.dart';
import 'package:wirepayx/modules/home/widgets/sub_widgets/get_started_section.dart';
import 'package:wirepayx/modules/home/widgets/sub_widgets/wirepay_ai_section.dart';
import 'package:wirepayx/shared/assets/colors.dart';
import 'package:wirepayx/shared/assets/icons.dart';
import 'package:wirepayx/shared/widgets/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Column(
        children: [
          10.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: const AssetImage(IconAssets.sampleAvater),
                  radius: 16.r,
                ),
                Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(42.r),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Feature not implemented, yet."),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightBlue,
                          borderRadius: BorderRadius.circular(
                            42.r,
                          ),
                        ),
                        width: 102.w,
                        height: 32.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 4.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              IconAssets.gift,
                              width: 24.w,
                              height: 24.h,
                            ),
                            Text(
                              "Earn \$1",
                              style: textTheme.labelMedium!.copyWith(
                                color: AppColors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    15.horizontalSpace,
                    InkWell(
                      onTap: () {
                        showFeatureNotImplementedSnackbar();
                      },
                      child: SvgPicture.asset(IconAssets.scanBarcode),
                    ),
                    15.horizontalSpace,
                    InkWell(
                      onTap: () {
                        showFeatureNotImplementedSnackbar();
                      },
                      child: SvgPicture.asset(IconAssets.bell),
                    ),
                  ],
                )
              ],
            ),
          ),
          30.verticalSpace,
          Expanded(
            child: ListView(
              children: [
                const MyAccountsWidget(),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                        onTap: showFeatureNotImplementedSnackbar,
                        wifth: 140.w,
                        height: 40.h,
                        bgColor: AppColors.blue,
                        text: "Send Money",
                        textStyle: textTheme.labelMedium!
                            .copyWith(color: Colors.white),
                      ),
                      AppButton(
                        onTap: showFeatureNotImplementedSnackbar,
                        wifth: 140.w,
                        height: 40.h,
                        bgColor: AppColors.lightBlue,
                        text: "Add Money",
                        textStyle: textTheme.labelMedium!
                            .copyWith(color: AppColors.blue),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: showFeatureNotImplementedSnackbar,
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: AppColors.lightBlue,
                          child: Icon(
                            Icons.more_horiz_rounded,
                            size: 18.sp,
                            color: AppColors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                const GetStartedSection(),
                20.verticalSpace,
                WirePayAISection(),
                20.verticalSpace,
                const AccountInformationSection(),
                40.verticalSpace
              ],
            ),
          ),
        ],
      ),
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
