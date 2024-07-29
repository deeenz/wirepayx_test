import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wirepayx/modules/home/widgets/sub_widgets/section_title.dart';
import 'package:wirepayx/shared/assets/colors.dart';
import 'package:wirepayx/shared/assets/icons.dart';

class AccountInformationSection extends StatelessWidget {
  const AccountInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: 'Account Information',
          actionText: '',
        ),
        10.verticalSpace,
        SizedBox(
          height: 126.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16.w),
            children: [
              balanceInfoItem(context),
              balanceInfoItem(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget balanceInfoItem(BuildContext context) {
    return Container(
      width: 264.w,
      height: 126.h,
      margin: EdgeInsets.only(right: 15.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        border: Border.all(
          color: AppColors.darkBorder,
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, -1),
            blurRadius: 0,
            spreadRadius: 0,
            color: AppColors.shaddowColor,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 USD == 1,600.00 NGN",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700, color: AppColors.grey10),
                  ),
                  SizedBox(
                    width: 40.w,
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          IconAssets.usaFlag,
                          width: 24.w,
                          height: 24.w,
                        ),
                        Positioned(
                          left: 15.w,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.5.r,
                              ),
                            ),
                            child: SvgPicture.asset(
                              IconAssets.nigeriaFlag,
                              width: 24.w,
                              height: 24.w,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              5.verticalSpace,
              Text(
                "These amounts don’t include fees. Lat updated: Wednesday, July 3, 2024 at 12:15 PM",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.darkTextLow,
                    ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "View rates",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.blue,
                      ),
                ),
                5.horizontalSpace,
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.blue,
                  size: 16.sp,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
