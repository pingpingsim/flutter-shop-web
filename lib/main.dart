import 'package:chuchuzakka/layout.dart';
import 'package:chuchuzakka/routes/route_generator.dart';
import 'package:chuchuzakka/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'bloc/cart_bloc.dart';

void main() {
  runApp(const ChuChuZakkaApp());
}

class ChuChuZakkaApp extends StatelessWidget {
  const ChuChuZakkaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CartBloc>(
            create: (BuildContext context) => CartBloc(),
          ),
        ],
        child: MaterialApp(
          // builder: (_, child) => AppLayout(
          //   child: child!,
          // ),
          builder: (context, child) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(
                  context,
                  AppLayout(
                    child: child!,
                  )),
              // maxWidth: 1200,
              // minWidth: 450,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(450, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
              ],
              background: Container(color: const Color(0xFFFFFF))),
          debugShowCheckedModeBanner: false,
          title: 'ChuChu Zakka Store',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          navigatorKey: navKey,
          initialRoute: ROUTE_HOME,
          onGenerateRoute: RouteGenerator.generateRoute,
        ));
  }
}
