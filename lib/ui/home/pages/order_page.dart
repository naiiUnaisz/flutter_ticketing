import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ticketing/core/components/components.dart';
import 'package:flutter_ticketing/core/extensions/extensions.dart';
import 'package:flutter_ticketing/ui/home/models/product_model.dart';
import 'package:flutter_ticketing/ui/home/widget/order_card.dart ';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Penjualan')),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return SpaceHeight(20.0);
        },
        itemBuilder: (context, index) {
          return OrderCard(item: product[index]);
        },
        itemCount: product.length,
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.all(24.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('total'),
                Text(200000.currencyFormatRp, style: TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.bold
                ),
                )
              ],
          ),
          ),
          Expanded(child: Button.filled(onPressed: () {}, label: 'Proses',
          ),
          ),
        ],
      ),
      ),
    );
  }
}