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
      backgroundColor: Colors.white,

      body: navigationShell,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          fontFamily: "Peyda"
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10.0,
          backgroundColor: Colors.white,
          selectedItemColor: DSColors.black,
          unselectedItemColor: DSColors.textGrey,
            showSelectedLabels: true,  // Show label for the selected item
            showUnselectedLabels: false,
          selectedLabelStyle:  TextStyle(
            color: Color(0xFF0D111B),
            fontSize: 12,
            fontFamily: 'Peyda',
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle:   TextStyle(
            color: DSColors.iconGrey,
            fontSize: 12,
            fontFamily: 'Peyda',
            fontWeight: FontWeight.w500,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/search.svg",
                    colorFilter: const ColorFilter.mode(DSColors.black, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/search.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label:  "جستجو"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/calendar.svg",
                    colorFilter: const ColorFilter.mode(DSColors.black, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/calendar.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label: "تقویم"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/home_folder.svg",
                    colorFilter: const ColorFilter.mode(DSColors.black, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/home_folder.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label: "فایل"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/home_bell.svg",
                    colorFilter: const ColorFilter.mode(DSColors.black, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/home_bell.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label: "اطلاع رسانی"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset("assets/svgs/home_avatar.svg",
                    colorFilter: const ColorFilter.mode(DSColors.black, BlendMode.srcIn),
                    width: 25, height: 25),
                icon: SvgPicture.asset("assets/svgs/home_avatar.svg",
                    colorFilter: const ColorFilter.mode(DSColors.iconGrey, BlendMode.srcIn),
                    width: 25,
                    height: 25),
                label: "پروفایل",
            ),




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
