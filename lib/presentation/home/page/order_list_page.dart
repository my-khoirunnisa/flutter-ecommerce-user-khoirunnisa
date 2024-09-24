import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/core/core.dart';

import '../../../core/components/components.dart';
import '../bloc/get_order_history/get_order_history_bloc.dart';
import '../widgets/order_card.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: BlocBuilder<GetOrderHistoryBloc, GetOrderHistoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              context
                  .read<GetOrderHistoryBloc>()
                  .add(const GetOrderHistoryEvent.getOrderHistory());
              return const Center(child: CircularProgressIndicator());
            },
            loaded: (data) {
              return ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: data.data!.length,
                separatorBuilder: (context, index) => const SpaceHeight(12.0),
                itemBuilder: (context, index) => OrderCard(
                  item: data.data![index],
                ),
              );
            },
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
