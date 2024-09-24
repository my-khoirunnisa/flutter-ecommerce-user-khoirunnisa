// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ecommerce_user/data/models/response/address_response_model.dart';
import 'package:flutter_ecommerce_user/data/models/response/cost_response_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/models/order_item_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/address_page.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/payment_detail_page.dart';

import '../../../core/core.dart';
import '../../../data/models/response/list_store_response_model.dart';
import '../bloc/checkout/checkout_bloc.dart';
import '../models/product_model.dart';

import '../widgets/address_tile.dart';
import '../widgets/cart_tile.dart';
import '../widgets/shipping_options_sheet.dart';
import '../widgets/shipping_tile.dart';

class CartPage extends StatefulWidget {
  final Store store;
  const CartPage({
    super.key,
    required this.store,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // AddressModel? addressSelected;
  ResultCost? shippingSelected;
  Address? newAddressSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body:
          // products.isEmpty
          //     ? Center(
          //         child: Column(
          //           children: [
          //             const SpaceHeight(150.0),
          //             Assets.images.cartEmpty.image(height: 140.0),
          //             const SpaceHeight(50.0),
          //             const Text(
          //               'Opss! Keranjangmu masih kosong',
          //               style: TextStyle(
          //                 fontSize: 16.0,
          //                 color: AppColors.primary,
          //                 fontWeight: FontWeight.w500,
          //               ),
          //             ),
          //             const SpaceHeight(8.0),
          //             const Text(
          //               'Temukan produk di toko favoritmu',
          //               style: TextStyle(
          //                 color: AppColors.gray,
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     :
          BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          List<OrderItemModel> newProducts = [];
          state.maybeMap(
              orElse: () {},
              loaded: (value) {
                newProducts = value.products;
              });
          return ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: newProducts.length,
                itemBuilder: (context, index) => CartTile(
                  data: newProducts[index],
                ),
                separatorBuilder: (context, index) => const SpaceHeight(16.0),
              ),
              const SpaceHeight(16.0),
              if (newAddressSelected != null)
                AddressTile(
                  isSelected: true,
                  item: newAddressSelected!,
                  onTap: () async {
                    newAddressSelected =
                        await context.push<Address>(const AddressPage());
                    setState(() {});
                  },
                )
              else
                Button.outlined(
                  onPressed: () async {
                    newAddressSelected =
                        await context.push<Address>(const AddressPage());
                    // ignore: use_build_context_synchronously
                    context.read<CheckoutBloc>().add(
                        CheckoutEvent.addAdressId(newAddressSelected!.id!));
                    setState(() {});
                  },
                  label: 'Pilih Alamat Pengiriman',
                  suffixIcon: const Icon(
                    Icons.chevron_right,
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              const SpaceHeight(16.0),
              if (shippingSelected != null)
                ShippingTile(
                  item: shippingSelected!,
                  onTap: () async {
                    shippingSelected = await showModalBottomSheet<ResultCost>(
                      context: context,
                      useSafeArea: true,
                      isScrollControlled: true,
                      builder: (BuildContext context) => ShippingOptionsSheet(
                          origin: widget.store.district!,
                          destination: newAddressSelected!.district!),
                    );
                    setState(() {});
                  },
                )
              else
                Button.outlined(
                  onPressed: () async {
                    shippingSelected = await showModalBottomSheet<ResultCost>(
                      context: context,
                      useSafeArea: true,
                      isScrollControlled: true,
                      builder: (BuildContext context) => ShippingOptionsSheet(
                          origin: widget.store.district!,
                          destination: newAddressSelected!.district!),
                    );
                    // ignore: use_build_context_synchronously
                    context.read<CheckoutBloc>().add(
                        CheckoutEvent.addShippingService(
                            'jne', shippingSelected!.cost![0].value!));
                    setState(() {});
                  },
                  label: 'Pilih Pengiriman',
                  suffixIcon: const Icon(
                    Icons.chevron_right,
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
            ],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: products.isEmpty
            ? Button.filled(
                onPressed: () {
                  context.popToRoot();
                },
                label: 'Mulai Belanja',
              )
            : BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  final totalPrice = state.maybeMap(
                    orElse: () => 0,
                    loaded: (value) => value.totalPrice,
                  );
                  final shippingCost = state.maybeMap(
                    orElse: () => 0,
                    loaded: (value) => value.shippingCost,
                  );
                  final grandTotal = totalPrice + shippingCost;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          const Text('Subtotal Harga Produk'),
                          const Spacer(),
                          Text(
                            totalPrice.currencyFormatRp,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
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
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      const SpaceHeight(10.0),
                      Row(
                        children: [
                          const Text(
                            'Total Belanja',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            grandTotal.currencyFormatRp,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      const SpaceHeight(10.0),
                      const Divider(),
                      const SpaceHeight(16.0),
                      Button.filled(
                        disabled: shippingSelected == null ||
                            newAddressSelected == null,
                        onPressed: () {
                          context.push(PaymentDetailPage(store: widget.store,));
                        },
                        label: 'Pilih Pembayaran',
                      ),
                    ],
                  );
                },
              ),
      ),
    );
  }
}
