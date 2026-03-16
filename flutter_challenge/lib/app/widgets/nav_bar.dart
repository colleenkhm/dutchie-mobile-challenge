import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/theme/app_theme.dart';
import 'package:flutter_challenge/app/theme/icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

typedef OnTapTabCallback = Function(int);

class NavBar extends StatelessWidget {
  final int activeIndex;
  final OnTapTabCallback onTapTabCallback;

  const NavBar({
    super.key,
    this.activeIndex = 0,
    required this.onTapTabCallback,
  });

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
    backgroundColor: AppTheme.primaryGreen,
    currentIndex: activeIndex,
    onTap: onTapTabCallback,
    selectedItemColor: AppTheme.green[95],
    unselectedItemColor: AppTheme.green[65],
    selectedLabelStyle: Theme.of(context).textTheme.titleMedium,
    unselectedLabelStyle: Theme.of(context).textTheme.titleSmall,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: 'Read Me',
        icon: SvgPicture.asset(dispensarySvg),
        activeIcon: SvgPicture.asset(
          dispensarySvg,
          colorFilter: ColorFilter.mode(AppTheme.green[95]!, BlendMode.srcIn),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Challenge',
        icon: SvgPicture.asset(challengeSvg),
        activeIcon: SvgPicture.asset(
          challengeSvg,
          colorFilter: ColorFilter.mode(AppTheme.green[95]!, BlendMode.srcIn),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Result',
        icon: SvgPicture.asset(resultSvg),
        activeIcon: SvgPicture.asset(
          resultSvg,
          colorFilter: ColorFilter.mode(AppTheme.green[95]!, BlendMode.srcIn),
        ),
      ),
    ],
  );
}
