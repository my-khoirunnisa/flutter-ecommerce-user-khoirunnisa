import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/data/models/response/order_detail_response_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/order_detail/order_detail_bloc.dart';

import '../../../core/constants/variables.dart';
import '../../../core/core.dart';
import '../../../data/models/response/history_response_model.dart';
import '../bloc/tracking/tracking_bloc.dart';
import 'track_package_page.dart';

class OrderDetailPage extends StatefulWidget {
  final History history;
  const OrderDetailPage({super.key, required this.history});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  void initState() {
    context
        .read<OrderDetailBloc>()
        .add(OrderDetailEvent.getOrderDetail(widget.history.id!));
    context.read<TrackingBloc>().add(TrackingEvent.getTracking(
        widget.history.shippingNumber!, widget.history.shippingService!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final List<TrackRecordModel> trackRecords = [
    //   TrackRecordModel(
    //     title: 'Pesanan Anda belum dibayar',
    //     status: TrackRecordStatus.belumBayar,
    //     isActive: true,
    //     updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    //   ),
    //   TrackRecordModel(
    //     title: 'Pesanan Anda sedang disiapkan',
    //     status: TrackRecordStatus.dikemas,
    //     isActive: true,
    //     updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    //   ),
    //   TrackRecordModel(
    //     title: 'Pesanan Anda dalam pengiriman',
    //     status: TrackRecordStatus.dikirim,
    //     isActive: false,
    //     updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    //   ),
    //   TrackRecordModel(
    //     title: 'Pesanan Anda telah tiba',
    //     status: TrackRecordStatus.selesai,
    //     isActive: false,
    //     updatedAt: DateTime.now(),
    //   ),
    // ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Order'),
      ),
      body: BlocBuilder<OrderDetailBloc, OrderDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(child: Text('no data')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (data) {
              return ListView(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                children: [
                  Container(
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
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: data.data!.orderItems!.length,
                          itemBuilder: (context, index) {
                            final detail = data.data!.orderItems![index];
                            return _ProductCard(
                              item: detail,
                              onTap: () {},
                            );
                          },
                        ),
                        const SpaceWidth(24.0),
                        const Divider(),
                        const SpaceWidth(14.0),
                        const Text(
                          'Info Pengiriman',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SpaceWidth(8.0),
                        Text('Alamat Pesanan : ${data.data!.address!.address}'),
                        const SpaceWidth(8.0),
                        Text('penerima : ${data.data!.address!.user!.name}'),
                      ],
                    ),
                  ),
                  const SpaceHeight(20.0),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: TrackingHorizontal(trackRecords: trackRecords),
                  // ),
                ],
              );
            },
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: () => context.push(TrackPackagePage(
            noResi: widget.history.shippingNumber!,
          )),
          label: 'Lacak Paket',
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final OrderItem item;
  final VoidCallback onTap;

  const _ProductCard({
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: CachedNetworkImage(
            imageUrl: '${Variables.baseUrl}/storage/${item.product!.image}',
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
        ),
        const SpaceWidth(16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.product!.name!,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SpaceHeight(8.0),
            Text.rich(
              TextSpan(
                text: 'Harga : ',
                children: [
                  TextSpan(
                    text: item.price!.toDouble.currencyFormatRp,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SpaceHeight(4.0),
            Text('Kuantitas : ${item.quantity}'),
          ],
        ),
      ],
    );
  }
}
