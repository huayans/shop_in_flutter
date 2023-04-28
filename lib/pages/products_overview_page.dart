import 'package:flutter/material.dart';
import 'package:shop/components/product_item.dart';

import 'package:shop/data/dummy_data.dart';

import 'package:shop/models/product.dart';

class ProdutcsOverViewPage extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  ProdutcsOverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductItem(
          product: loadedProducts[i],
        ),
      ),
    );
  }
}
