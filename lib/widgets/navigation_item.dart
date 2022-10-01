import 'package:chuchuzakka/views/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/text.dart';
import '../routes/routes_name.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;

  const NavigationItem(
      {super.key, required this.title, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          navKey.currentState?.pushNamed(routeName, );
        },
        style: menuButtonStyle,
        child: Text(title));
  }
}
