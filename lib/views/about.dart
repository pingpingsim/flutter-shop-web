import 'package:flutter/material.dart';

import '../components/typography.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('We Craft Handmade Goods',
                            textAlign: TextAlign.center,
                            style: headlineTextStyle),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "We are the Team of ChuChu Zakka Store. we have a team of products specialists ,we ensure that all products are produced with superior craftsmanship and quality materials that adhere to our rigorous design specifications. Every single order is handcrafted by us from start to finish.",
                          style: subtitleTextStyle,
                        ),
                      ],
                    )),
              )),
          Flexible(
            child:  Container(
                        alignment: Alignment.topRight,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/image/sewing.jpg'),
                          fit: BoxFit.cover,
                        ))),
            flex: 1,
          )
        ],
      ),
    );
  }
}
