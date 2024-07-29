import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wirepayx/modules/home/widgets/sub_widgets/section_title.dart';
import 'package:wirepayx/shared/assets/colors.dart';
import 'package:wirepayx/shared/assets/icons.dart';

class WirePayAISection extends StatelessWidget {
  const WirePayAISection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: 'Wirepay AI',
          actionText: '',
        ),
        10.verticalSpace,
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconAssets.transactionHistoryIcon,
                        width: 44.w,
                      ),
                      20.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Stash Plan",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: AppColors.darkText,
                                ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Verifying identity",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.yellow,
                                      fontSize: 12.sp,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "-\$67.99",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.darkTextLow,
                            ),
                      ),
                      Text(
                        "Pending",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.yellow,
                              fontSize: 12.sp,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: AppColors.darkBorder,
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconAssets.transactionHistoryIcon,
                        width: 44.w,
                      ),
                      20.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wedding Trip",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: AppColors.darkText,
                                ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "From USD account",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.darkTextLow,
                                      fontSize: 12.sp,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "\$2,400.00",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.green,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
