import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0,
            top: 20,
            bottom: 20,),
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ),
        for (int i = 0; i < navIcons.length; i++)
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 30),
            titleTextStyle: const TextStyle(
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
            leading: Icon(navIcons[i]),
            title: Text(navTitles[i]),
            onTap: () {},
          ),
      ]),
    );
  }
}
