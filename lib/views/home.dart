import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../components/typography.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1611204413957-a0073999cf8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
      'https://images.unsplash.com/photo-1527383214149-cb7be04ae387?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
      'https://images.unsplash.com/photo-1586216583645-bf798306a3d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2688&q=80',
      'https://images.unsplash.com/photo-1562838095-8ff19b380189?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${imgList.indexOf(item)} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: true,
      ),
      items: imageSliders,
    ));

    //var size = MediaQuery.of(context).size;
    // return Stack(
    //   children: [
    //     Container(
    //       decoration: const BoxDecoration(
    //           image: DecorationImage(
    //         image: AssetImage('assets/image/sew.jpg'),
    //         fit: BoxFit.cover,
    //       )),
    //       child: ClipRRect(
    //           child: new BackdropFilter(
    //         filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
    //         child: new Container(
    //           decoration:
    //               new BoxDecoration(color: Colors.white.withOpacity(0.5)),
    //         ),
    //       )),
    //     ),
    //     Row(
    //       children: [
    //         Flexible(
    //           child: Container(),
    //           flex: 1,
    //         ),
    //         Flexible(
    //             flex: 2,
    //             child: Container(
    //               alignment: Alignment.centerLeft,
    //               child: Padding(
    //                   padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text('We Craft Handmade Goods',
    //                           textAlign: TextAlign.center,
    //                           style: headlineTextStyle),
    //                       SizedBox(
    //                         height: 10,
    //                       ),
    //                       Text(
    //                         subtitle,
    //                         style: subtitleTextStyle,
    //                       ),
    //                     ],
    //                   )),
    //             )),
    //         Flexible(
    //           child: Container(),
    //           flex: 1,
    //         )
    //       ],
    //     )
    //   ],
    // );

    //   Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   children: [
    //     Flexible(
    //         flex: 1,
    //         child: Container(
    //           alignment: Alignment.centerLeft,
    //           child: Padding(
    //               padding: EdgeInsets.symmetric(
    //                   horizontal: size.width * 0.08, vertical: 20),
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text('We Craft Handmade Goods',
    //                       textAlign: TextAlign.center,
    //                       style: headlineTextStyle),
    //                   SizedBox(
    //                     height: 10,
    //                   ),
    //                   Text(
    //                     subtitle,
    //                     style: subtitleTextStyle,
    //                   ),
    //                 ],
    //               )),
    //         )),
    //     Flexible(
    //         flex: 1,
    //         //child: Image.asset('assets/image/sewing.jpg'),
    //
    //         child: Container(
    //           alignment: Alignment.topRight,
    //           decoration: const BoxDecoration(
    //               image: DecorationImage(
    //             image: AssetImage('assets/image/sewing.jpg'),
    //             fit: BoxFit.cover,
    //           )),
    //         ))
    //   ],
    // );
  }
}
