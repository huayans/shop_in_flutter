import 'package:flutter/material.dart';
import 'package:shop/providers/counter.dart';

class CounterDetailPage extends StatefulWidget {
  const CounterDetailPage({
    super.key,
  });

  @override
  State<CounterDetailPage> createState() => _CounterDetailPageState();
}

class _CounterDetailPageState extends State<CounterDetailPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo Contador'),
      ),
      body: Column(
        children: [
          Text(provider?.state.value.toString() ?? '0'),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.inc();
              });
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.dec();
              });
            },
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
