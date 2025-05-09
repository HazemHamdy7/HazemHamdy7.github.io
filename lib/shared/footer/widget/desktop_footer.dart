import 'package:flutter/material.dart';
import 'package:my_prtofolio/shared/appbar/widget/app_logo.dart';
import 'package:my_prtofolio/shared/appbar/drawer/large_menus.dart';
 import 'package:my_prtofolio/shared/footer/widget/footer_links.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogo(),
        //
        Spacer(),
        LargeMenus(),
        Spacer(),
        FooterLinks(),
      ],
    );
  }
}
