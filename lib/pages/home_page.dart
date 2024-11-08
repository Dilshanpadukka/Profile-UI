import 'package:flutter/material.dart';
import 'package:profile_ui/constants/colors.dart';
import 'package:profile_ui/constants/nav_items.dart';
import 'package:profile_ui/styles/styles.dart';
import 'package:profile_ui/widgets/drawer_mobile.dart';
import 'package:profile_ui/widgets/header_dekstop.dart';
import 'package:profile_ui/widgets/header_mobile.dart';
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
    return Scaffold(
      key: ScaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: const DrawerMobile(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Main Header
          // HeaderDekstop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              ScaffoldKey.currentState?.openEndDrawer();
            },
          ),

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
  }
}
