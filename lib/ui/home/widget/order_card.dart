import 'package:flutter/material.dart';
import 'package:flutter_ticketing/core/components/spaces.dart';
import 'package:flutter_ticketing/core/constants/colors.dart';
import 'package:flutter_ticketing/core/extensions/extensions.dart';
import 'package:flutter_ticketing/ui/home/models/product_model.dart';

class OrderCard extends StatelessWidget {
  final ProductModel item;
  const OrderCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final quantityNotifier = ValueNotifier(0);
    return Container(
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.stroke),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Tiket Wisata',
                  style: const TextStyle(fontSize: 15.0),
                ),
              ),
              InkWell(
                onTap: () {
                  if (quantityNotifier.value > 0) {
                    quantityNotifier.value--;
                  }
                },
                child: Icon(Icons.remove, color: AppColors.primary),
              ),
              ValueListenableBuilder(
                valueListenable: quantityNotifier,
                builder: (context, value, _) {
                  return Text(
                    '$value',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                },
              ),
              InkWell(
                onTap: () {
                  quantityNotifier.value++;
                },
                child: Icon(Icons.add, color: AppColors.primary),
              ),
            ],
          ),
          Text(item.type, style: const TextStyle(fontSize: 12.0)),
          const SpaceHeight(8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.price.currencyFormatRp,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ValueListenableBuilder(
                valueListenable: quantityNotifier,
                builder: (context, value, _) {
                  return Text(
                    (item.price * value).currencyFormatRp,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}