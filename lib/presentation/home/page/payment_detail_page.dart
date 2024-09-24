// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/data/models/request/order_request_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/order/order_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/payment_waiting_page.dart';

import '../../../core/core.dart';
import '../../../data/models/response/list_store_response_model.dart';
import '../bloc/checkout/checkout_bloc.dart';
import '../models/bank_account_model.dart';
import '../widgets/payment_method.dart';

class PaymentDetailPage extends StatelessWidget {
  final Store store;
  const PaymentDetailPage({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    final selectedPayment = ValueNotifier<int>(0);
    String vaName = '';
    List<BankAccountModel> banksLimit = [banks[0], banks[1]];

    void seeAllTap() {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        backgroundColor: AppColors.white,
        builder: (BuildContext context) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: ColoredBox(
                    color: AppColors.stroke,
                    child: SizedBox(height: 8.0, width: 55.0),
                  ),
                ),
                const SpaceHeight(20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Metode Pembayaran',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.stroke,
                      child: IconButton(
                        onPressed: () => context.pop(),
                        icon: const Icon(
                          Icons.close,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceHeight(16.0),
                ValueListenableBuilder(
                  valueListenable: selectedPayment,
                  builder: (context, value, _) => ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => PaymentMethod(
                      isActive: value == banks[index].code,
                      data: banks[index],
                      onTap: () {
                        selectedPayment.value = banks[index].code;
                        if (banksLimit.first != banks[index]) {
                          banksLimit[1] = banks[index];
                        }
                        context.pop();
                      },
                    ),
                    separatorBuilder: (context, index) =>
                        const SpaceHeight(14.0),
                    itemCount: banks.length,
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Row(
            children: [
              const Text(
                'Metode Pembayaran',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: seeAllTap,
                child: const Text(
                  'Lihat semua',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SpaceHeight(20.0),
          ValueListenableBuilder(
            valueListenable: selectedPayment,
            builder: (context, value, _) => ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => PaymentMethod(
                isActive: value == banksLimit[index].code,
                data: banksLimit[index],
                onTap: () {
                  selectedPayment.value = banksLimit[index].code;
                  vaName = banksLimit[index].codeName;
                  context
                      .read<CheckoutBloc>()
                      .add(CheckoutEvent.addPaymentVaName(
                        banksLimit[index].codeName,
                      ));
                },
              ),
              separatorBuilder: (context, index) => const SpaceHeight(14.0),
              itemCount: banksLimit.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (
                products,
                totalPrice,
                totalQuantity,
                addressId,
                shippingService,
                shippingCost,
                paymentVaName,
                paymentMethod,
              ) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Ringkasan Pembayaran',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SpaceHeight(12.0),
                    Row(
                      children: [
                        const Text('Subtotal Harga Produk'),
                        const Spacer(),
                        Text(
                          totalPrice.currencyFormatRp,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(10.0),
                    Row(
                      children: [
                        const Text('Biaya Pengiriman'),
                        const Spacer(),
                        Text(
                          shippingCost.currencyFormatRp,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(10.0),
                    Row(
                      children: [
                        const Text(
                          'Total Tagihan',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          (totalPrice + shippingCost).currencyFormatRp,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(10.0),
                    const Divider(),
                    const SpaceHeight(16.0),
                    ValueListenableBuilder(
                      valueListenable: selectedPayment,
                      builder: (context, value, _) =>
                          BlocConsumer<OrderBloc, OrderState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () => const Center(
                                child: CircularProgressIndicator()),
                            loaded: (data) {
                              context
                                  .read<CheckoutBloc>()
                                  .add(const CheckoutEvent.started());
                              context.pushReplacement(PaymentWaitingPage(
                                orderId: data.data.id,
                              ));
                            },
                            error: (message) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(message),
                                backgroundColor: AppColors.red,
                              ));
                            },
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                              orElse: () {
                                return Button.filled(
                                  disabled: value == 0,
                                  onPressed: () {
                                    final data = OrderRequestModel(
                                      addressId: addressId,
                                      sellerId: store.id!,
                                      items: products
                                          .map(
                                            (e) => Item(
                                              productId: e.product.id!,
                                              quantity: e.quantity,
                                            ),
                                          )
                                          .toList(),
                                      shippingCost: shippingCost,
                                      shippingService: shippingService,
                                      bankVaName: vaName,
                                    );
                                    context
                                        .read<OrderBloc>()
                                        .add(OrderEvent.addOrder(data));
                                  },
                                  label: 'Bayar Sekarang',
                                );
                              },
                              loading: () => const Center(
                                    child: CircularProgressIndicator(),
                                  ));
                        },
                      ),
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
