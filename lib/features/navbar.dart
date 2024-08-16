import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../core/utils/colors.dart';

class ScaffoldBottomNavigationBar extends StatelessWidget {
  const ScaffoldBottomNavigationBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldBottomNavigationBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.backgroundColor,

      body: navigationShell,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          fontFamily: "vazirmatn"
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          // backgroundColor: MrzColors.white,
          // selectedItemColor: MrzColors.darkBlue,
          // unselectedItemColor: MrzColors.middleLight,
          backgroundColor: DSColors.languageBackgroundColor,
          selectedItemColor: DSColors.white,
          unselectedItemColor: DSColors.textGrey,
            showSelectedLabels: true,  // Show label for the selected item
            showUnselectedLabels: false,
          // fixedColor: MrzColors.dark,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/search.svg",
                    colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/search.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label:  "جستجو"),

            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/calendar.svg",
                    colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/calendar.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label: "تقویم"),

            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/home_folder.svg",
                    colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/home_folder.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label: "فایل"),

            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/home_bell.svg",
                    colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/home_bell.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label: "اطلاع رسانی"),

            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/home_avatar.svg",
                    colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/home_avatar.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),

                label: "پروفایل"),

          ],
          currentIndex: navigationShell.currentIndex,
          onTap: (int tappedIndex) {
            navigationShell.goBranch(tappedIndex);
          },
        ),
      ),
    );
  }
}
