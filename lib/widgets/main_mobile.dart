import 'package:flutter/material.dart';
import 'package:profile_ui/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile image without ShaderMask
          Image.asset(
            "assets/profile logo.png",
            width: screenWidth,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Hi,\nI'm Dilshan Padukka...\nFull Stack Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 14, 60, 223),
              ),
              child: const Text(
                "Get in touch",
                style: TextStyle(
                  color: CustomColor.whitePrimary,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
