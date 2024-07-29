import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wirepayx/modules/home/widgets/home_page.dart';
import 'package:wirepayx/shared/assets/colors.dart';
import 'package:wirepayx/shared/assets/icons.dart';

class MainNvBar extends StatefulWidget {
  const MainNvBar({super.key});

  @override
  State<MainNvBar> createState() => _MainNvBarState();
}

class _MainNvBarState extends State<MainNvBar> {
  int currentIndex = 0;

  List<Widget> children = const [
    HomePage(),
    Center(child: Text("Under Construction")),
    Center(child: Text("Under Construction"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: children.elementAt(currentIndex),
      bottomNavigationBar: SizedBox(
        height: 60.h,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 10.sp,
          ),
          selectedItemColor: AppColors.blue,
          unselectedLabelStyle: TextStyle(
            color: AppColors.darkTextLow,
            fontSize: 10.sp,
          ),
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            bottomBarItem(0, "Home", IconAssets.home, IconAssets.homeSelected),
            bottomBarItem(1, "Wirebeam", IconAssets.wireBeam,
                IconAssets.wireBeamSelected),
            bottomBarItem(2, "Cards", IconAssets.creditCard,
                IconAssets.creditCardSelected),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomBarItem(
      int index, String title, String icon, String selectedIcon) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        color: AppColors.grey,
      ),
      activeIcon: SvgPicture.asset(
        selectedIcon,
        color: AppColors.blue,
      ),
      label: title,
      tooltip: "$title page",
    );
  }
}
