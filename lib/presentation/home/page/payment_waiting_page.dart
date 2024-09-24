// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_order_status/get_order_status_bloc.dart';

import '../../../core/core.dart';
import '../bloc/order/order_bloc.dart';
import '../widgets/countdown_timer.dart';
import 'payment_success_page.dart';

class PaymentWaitingPage extends StatelessWidget {
  final int orderId;
  const PaymentWaitingPage({
    super.key,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    void onTimerCompletion() {
      // timeout function
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Waiting for payment'),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(child: CircularProgressIndicator()),
            loaded: (data) {
              return ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SpaceWidth(12.0),
                      const Flexible(
                        child: Text(
                          'Selesaikan Pembayaran Dalam',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SpaceWidth(12.0),
                      CountdownTimer(
                        minute: 1,
                        onTimerCompletion: onTimerCompletion,
                      ),
                    ],
                  ),
                  const SpaceHeight(20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Tipe Pembayaran'),
                      Text(
                        data.data.paymentVaName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  const SpaceHeight(8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total Tagihan'),
                      Text(
                        data.data.grandTotal.currencyFormatRp,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  const SpaceHeight(8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('No Virtual Account'),
                          Text(
                            data.data.paymentVaNumber,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Clipboard.setData(ClipboardData(
                                  text: data.data.paymentVaNumber))
                              .then((_) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Copied to clipboard'),
                              duration: Duration(seconds: 1),
                              backgroundColor: AppColors.primary,
                            ));
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Assets.icons.copy.svg(),
                              const SpaceWidth(4.0),
                              const Text(
                                'Copy',
                                style: TextStyle(
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<GetOrderStatusBloc, GetOrderStatusState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loaded: (status) {
                if (status == 'paid') {
                  context.pushReplacement(const PaymentSuccessPage());
                }
              },
              waitingPayment: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Pembayaran belum diterima'),
                      duration: Duration(seconds: 3)),
                );
              },
            );
          },
          builder: (context, state) {
            return Button.filled(
              onPressed: () {
                // context.pushAndRemoveUntil(
                //   const PaymentSuccessPage(),
                //   (route) => route.isFirst,
                // );
                context
                    .read<GetOrderStatusBloc>()
                    .add(GetOrderStatusEvent.getOrderStatus(orderId));
              },
              label: 'Cek Status Pembayaran',
            );
          },
        ),
      ),
    );
  }
}
