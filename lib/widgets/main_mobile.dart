import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/path_constants.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 30,),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar Image
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              PathConstants.dashImage,
              width: screenWidth,
            ),
          ),

          const SizedBox(height: 30),
          // Intro Text
          const Text(
            'Hi,\nThis is Harish\nA Flutter Developer',
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Get In Touch'),
            ),
          ),
        ],
      ),
    );
  }
}
