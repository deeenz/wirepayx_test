import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wirepayx/shared/assets/colors.dart';
import 'package:wirepayx/shared/assets/icons.dart';

class MyAccountsWidget extends StatefulWidget {
  const MyAccountsWidget({super.key});

  @override
  State<MyAccountsWidget> createState() => _MyAccountsWidgetState();
}

class _MyAccountsWidgetState extends State<MyAccountsWidget> {
  bool hideBalance = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Accounts',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: AppColors.grey,
                    ),
              ),
              InkWell(
                onTap: () {
                  hideBalance = !hideBalance;
                  setState(() {});
                },
                radius: 10,
                child: Row(
                  children: [
                    Text(
                      hideBalance ? "Show balance" : 'Hide balance',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: AppColors.grey),
                    ),
                    10.horizontalSpace,
                    hideBalance
                        ? SvgPicture.asset(IconAssets.viewOff)
                        : const Icon(Icons.visibility_outlined)
                  ],
                ),
              ),
            ],
          ),
        ),
        20.verticalSpace,
        SizedBox(
          height: 115.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16.w),
            children: [
              balanceCard(
                currency: 'USD',
                amount: '\$200.00',
                flag: IconAssets.usaFlag,
              ),
              balanceCard(
                currency: 'GHS',
                amount: '¢5000.00',
                flag: IconAssets.ghanaFlag,
              ),
              balanceCard(
                currency: 'GHS',
                amount: 'N15,000,000.00',
                flag: IconAssets.nigeriaFlag,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget balanceCard(
      {required String flag,
      required String currency,
      required String amount}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      width: 194.w,
      height: 115.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.only(right: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(flag, width: 30, height: 30),
              10.horizontalSpace,
              Text(currency, style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
          const SizedBox(height: 5),
          Text(hideBalance ? "*****" : amount,
              style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
