import 'package:chuchuzakka/widgets/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatefulWidget {
  final Widget child;

  const AppLayout({required this.child});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[const NavigationMenuBar(),
          Expanded(child: widget.child

          // CustomScrollView(
          //   slivers: [
          //
          //     SliverFillRemaining(
          //       hasScrollBody: true,
          //       child: Center(child: widget.child),
          //     ),
          //   ],
          // )
          ),
        ],
      ),
    );
  }
}
