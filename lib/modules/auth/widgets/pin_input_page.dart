import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wirepayx/shared/assets/colors.dart';
import 'package:wirepayx/shared/assets/icons.dart';
import 'package:wirepayx/shared/assets/images.dart';
import 'package:wirepayx/shared/naviagtor/routes.dart';

class PinInputPage extends StatefulWidget {
  const PinInputPage({super.key});

  @override
  State<PinInputPage> createState() => _PinInputPageState();
}

class _PinInputPageState extends State<PinInputPage> {
  String pin = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Stack(
        children: [
          SvgPicture.asset(ImageAssets.backgroundSplashImage),
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 60.w,
                vertical: 40.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage(IconAssets.sampleAvater),
                        radius: 16.r,
                      ),
                      10.horizontalSpace,
                      Text(
                        'Hi, \$Kate ✨',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  5.verticalSpace,
                  Text(
                    'Input your 4-digit Pin.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white),
                  ),
                  40.verticalSpace,
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.dullBlue,
                      borderRadius: BorderRadius.circular(
                        200.r,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    width: 180.w,
                    height: 52.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) {
                          return CircleAvatar(
                            radius: 6.r,
                            backgroundColor: pin.length > index
                                ? AppColors.blue
                                : Colors.white,
                          );
                        },
                      ),
                    ),
                  ),
                  90.verticalSpace,
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 12,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 40.w,
                      crossAxisSpacing: 50.w,
                    ),
                    itemBuilder: (context, index) {
                      if (index == 9) {
                        return IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Feature not implemented, yet."),
                              ),
                            );
                          },
                          icon: SvgPicture.asset(
                            IconAssets.faceScan,
                            color: Colors.white,
                          ),
                        );
                      } else if (index == 11) {
                        return GestureDetector(
                          onTap: () {
                            if (pin.isNotEmpty) {
                              pin = pin.substring(0, pin.length - 1);
                              setState(() {});
                            }
                          },
                          child: SvgPicture.asset(
                            IconAssets.eraser,
                            width: 32.w,
                            fit: BoxFit.contain,
                          ),
                        );
                      } else {
                        return InkWell(
                          onTap: () {
                            pin += index.toString();
                            setState(() {});

                            if (pin.length == 4) {
                              Navigator.of(context)
                                  .pushReplacementNamed(AppRoutes.homePage);
                            }
                          },
                          borderRadius: BorderRadius.circular(400),
                          overlayColor:
                              WidgetStateProperty.all(AppColors.offWhite),
                          child: CircleAvatar(
                            radius: 26.r,
                            backgroundColor: AppColors.dullBlue,
                            child: Text(
                              index == 10 ? '0' : (index + 1).toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  40.verticalSpace,
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Feature not implemented, yet."),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot PIN code?',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
