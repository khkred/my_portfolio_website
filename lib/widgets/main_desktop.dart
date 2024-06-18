import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/path_constants.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //TODO: GET THE REACT AUTOMATIC TYPING ANIMATION IN FLUTTER
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hi,\nThis is Harish\nA Flutter Developer',
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get In Touch'),
                ),
              ),
            ],
          ),

          Image.asset(
            PathConstants.dashImage,
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
