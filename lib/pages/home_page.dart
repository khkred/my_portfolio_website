import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size_constants.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: _scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= SizeConstants.minDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (constraints.maxWidth >= SizeConstants.minDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraints.maxWidth >= SizeConstants.minDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),

            // SKILLS
            Container(
              width: screenWidth,
              color: CustomColor.bgLight1,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Title
                  const Text(
                    "What I can do?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),

                  const SizedBox(height: 50),

                  if (constraints.maxWidth >= SizeConstants.medDesktopWidth)
                    const SkillsDesktop()
                  else
                    const SkillsMobile(),
                ],
              ),
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
