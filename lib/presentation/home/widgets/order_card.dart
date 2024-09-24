import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_user/data/models/response/history_response_model.dart';

import '../../../core/core.dart';
import '../page/order_detail_page.dart';

class OrderCard extends StatelessWidget {
  final History item;
  const OrderCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 8.0,
            spreadRadius: 0,
            color: AppColors.primary.withOpacity(0.16),
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TRX ID: ${item.transactionNumber ?? '-'}',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Status : ${item.status}',
                style: const TextStyle(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SpaceHeight(24.0),
          const Divider(),
          const SpaceHeight(10.0),
          Row(
            children: [
              const Text(
                'Total Harga : ',
                style: TextStyle(
                  color: AppColors.gray,
                ),
              ),
              Text(
                item.grandTotal!.toDouble.currencyFormatRp,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.push(OrderDetailPage(history: item));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: const ColoredBox(
                    color: AppColors.primary,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Detail',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
