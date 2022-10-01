import 'package:badges/badges.dart';
import 'package:chuchuzakka/widgets/navigation_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cart_bloc.dart';
import '../bloc/state/cart_state.dart';
import '../components/app_theme.dart';
import '../models/Product.dart';
import '../routes/routes_name.dart';
import '../views/home.dart';

class NavigationMenuBar extends StatefulWidget {
  const NavigationMenuBar({Key? key}) : super(key: key);

  @override
  State<NavigationMenuBar> createState() => _NavigationMenuBarState();
}

class _NavigationMenuBarState extends State<NavigationMenuBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (_, cartState) {
      List<Product> cartItem = cartState.cartItem.cast<Product>();
      return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/image/logo.png', height: 50),
                  // InkWell(
                  //   highlightColor: Colors.transparent,
                  //   splashColor: Colors.transparent,
                  //   onTap: () => Navigator.popUntil(
                  //       context, ModalRoute.withName(Navigator.defaultRouteName)),
                  //   //Image.asset('assets/icons/twitter.png')
                  //   child: Text(
                  //     "ChuChuZakka",
                  //     style: GoogleFonts.montserrat(
                  //         color: textPrimary,
                  //         fontSize: 30,
                  //         letterSpacing: 3,
                  //         fontWeight: FontWeight.w500),
                  //   ),
                  // ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          children: const <Widget>[
                            NavigationItem(
                                title: "Home", routeName: ROUTE_HOME),
                            NavigationItem(
                                title: "Products", routeName: ROUTE_PRODUCTS),
                            // NavigationItem(title: "Custom Order", routeName: ROUTE_CUSTOM_ORDER),
                            NavigationItem(
                                title: "About", routeName: ROUTE_ABOUT),
                            NavigationItem(
                                title: "Contact Us", routeName: ROUTE_CONTACT),
                          ],
                        ),
                      ))
                ],
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Badge(
                  badgeContent: Text(
                    '${cartItem.length}',
                    style: AppTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                  ),
                  showBadge: true,
                  shape: BadgeShape.circle,
                  badgeColor: AppTheme.of(context).primaryColor,
                  elevation: 4,
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                  toAnimate: true,
                  child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: AppTheme.of(context).secondaryText,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(), // !!CheckoutWidget(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ));
    });
  }
}
