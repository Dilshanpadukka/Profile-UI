import 'package:flutter/material.dart';
import 'package:profile_ui/constants/colors.dart';
import 'package:profile_ui/constants/nav_items.dart';
import 'package:profile_ui/styles/styles.dart';
import 'package:profile_ui/widgets/site_logo.dart';

class HeaderDekstop extends StatelessWidget {
  const HeaderDekstop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(
        vertical: 10, 
        horizontal: 20),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
