import 'package:flutter/material.dart';

import '../components/product_grid.dart';

class ProdutcsOverViewPage extends StatelessWidget {
  const ProdutcsOverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Loja'),
      ),
      body: const ProductGrid(),
    );
  }
}
