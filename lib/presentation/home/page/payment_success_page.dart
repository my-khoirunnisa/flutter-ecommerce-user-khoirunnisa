import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/core.dart';
import '../bloc/order/order_bloc.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              loaded: (data) {
                return Column(
                  children: [
                    const SpaceHeight(20.0),
                    const Icon(
                      Icons.check_circle,
                      color: AppColors.primary,
                      size: 80.0,
                    ),
                    const SpaceHeight(34.0),
                    const Text(
                      'Pembayaran sukses',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SpaceHeight(9.0),
                    Text(
                      DateFormat('dd MMMM yyyy hh:mm')
                          .format(data.data.createdAt),
                    ),
                    const Spacer(),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Detail Transaksi',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SpaceHeight(20.0),
                    const Divider(),
                    const SpaceHeight(16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Subtotal'),
                        Text(
                          data.data.totalPrice.currencyFormatRp,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Ongkos Kirim'),
                        Text(
                          data.data.shippingPrice.currencyFormatRp,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(30.0),
                    const Divider(),
                    const SpaceHeight(16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total Tagihan',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          data.data.grandTotal.currencyFormatRp,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total Pembayaran',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          data.data.grandTotal.currencyFormatRp,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(50.0),
                    const Divider(),
                    const SpaceHeight(16.0),
                    Button.filled(
                      onPressed: () => context.popToRoot(),
                      label: 'Back to Home',
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
