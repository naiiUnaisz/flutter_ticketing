import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ticketing/core/components/spaces.dart';
import 'package:flutter_ticketing/core/constants/colors.dart';

class NavItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         SizedBox(
          width: 25.0,
          height: 25.0,
          child: SvgPicture.asset(
            iconPath,
            colorFilter: ColorFilter.mode(
              isActive ? AppColors.primary : AppColors.white,
              BlendMode.srcIn,
            ),
          ),
         ),
         const SpaceHeight(4.0),
         Text(
          label,
          style: TextStyle(
            fontSize: 10.0,
            color: isActive ? AppColors.primary : AppColors.white,
          ),
         )
        ],
      )
    );
  }
}