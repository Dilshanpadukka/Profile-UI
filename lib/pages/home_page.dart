import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profile_ui/constants/colors.dart';
import 'package:profile_ui/constants/nav_items.dart';
import 'package:profile_ui/constants/size.dart';
import 'package:profile_ui/styles/styles.dart';
import 'package:profile_ui/widgets/drawer_mobile.dart';
import 'package:profile_ui/widgets/header_dekstop.dart';
import 'package:profile_ui/widgets/header_mobile.dart';
import 'package:profile_ui/widgets/main_dekstop.dart';
import 'package:profile_ui/widgets/main_mobile.dart';
import 'package:profile_ui/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: ScaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Main Header
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDekstop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  ScaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDekstop()
            else
              const MainMobile(),

            // Skills
            Container(
              height: 500,
              width: double.maxFinite,
              color: const Color.fromARGB(255, 214, 230, 238),
            ),
            // Projects
            Container(
              height: 500,
              width: double.maxFinite,
              color: const Color.fromARGB(255, 131, 126, 204),
            ),
            // Contact
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
          ],
        ),
      );
    });
  }
}
