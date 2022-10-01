import 'package:chuchuzakka/widgets/custom_decorative_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cart_bloc.dart';
import '../bloc/state/cart_state.dart';
import '../models/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (_, cartState) {
      return LayoutBuilder(builder: (context, constraints) {
        return GridView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) => CustomDecorativeItem(
            itemNo: index,
            product: products[index],
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
            childAspectRatio: 285 / (340), //1
            crossAxisSpacing: 24,
            mainAxisSpacing: 0,
          ),
        );
      });
    });
  }
}
