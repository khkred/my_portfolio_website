import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size_constants.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';

import '../widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: _scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= SizeConstants.maxMobileWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (constraints.maxWidth >= SizeConstants.maxMobileWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraints.maxWidth >= SizeConstants.maxMobileWidth)
            const MainDesktop()
            else
            MainMobile(screenHeight: screenHeight, screenWidth: screenWidth),

            // SKILLS
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.blueGrey,
            ),
            // PROJECTS
            Container(
              height: 500,
              width: double.infinity,
            ),
            // CONTACT
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.blueGrey,
            ),
            // FOOTER SECTION
          ],
        ),
      );
    });
  }
}

