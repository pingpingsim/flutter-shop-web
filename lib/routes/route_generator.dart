import 'package:chuchuzakka/routes/routes_name.dart';
import 'package:chuchuzakka/views/about.dart';
import 'package:chuchuzakka/views/contact.dart';
import 'package:chuchuzakka/views/custom_order.dart';
import 'package:chuchuzakka/views/home.dart';
import 'package:chuchuzakka/views/products.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_PRODUCTS:
        return _GeneratePageRoute(
            widget: const Products(), routeName: ROUTE_PRODUCTS);
      case ROUTE_ABOUT:
        return _GeneratePageRoute(
            widget: const About(), routeName: ROUTE_ABOUT);
      case ROUTE_CONTACT:
        return _GeneratePageRoute(
            widget: const Contact(), routeName: ROUTE_CONTACT);
      case ROUTE_CUSTOM_ORDER:
        return _GeneratePageRoute(
            widget: const CustomOrder(), routeName: ROUTE_CUSTOM_ORDER);
      default:
        return _GeneratePageRoute(widget: const Home(), routeName: ROUTE_HOME);
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;

  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: Duration(milliseconds: 0),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
