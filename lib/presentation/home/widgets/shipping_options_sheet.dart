// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ecommerce_user/presentation/home/bloc/cost/cost_bloc.dart';

import '../../../core/core.dart';
import '../bloc/checkout/checkout_bloc.dart';

class ShippingOptionsSheet extends StatefulWidget {
  final String origin;
  final String destination;
  const ShippingOptionsSheet({
    super.key,
    required this.origin,
    required this.destination,
  });

  @override
  State<ShippingOptionsSheet> createState() => _ShippingOptionsSheetState();
}

class _ShippingOptionsSheetState extends State<ShippingOptionsSheet> {
  @override
  void initState() {
    context.read<CostBloc>().add(CostEvent.getCosts(
          origin: widget.origin,
          destination: widget.destination,
          weight: 1000,
          courier: 'jne',
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedShipping = ValueNotifier<int>(0);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              child: ColoredBox(
                color: AppColors.stroke,
                child: SizedBox(height: 4.0, width: 55.0),
              ),
            ),
          ),
          const SpaceHeight(20.0),
          BlocBuilder<CostBloc, CostState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (costResponseModel) {
                  return ValueListenableBuilder(
                    valueListenable: selectedShipping,
                    builder: (context, value, _) => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = costResponseModel
                            .rajaongkir!.results![0].costs![index];
                        return ListTile(
                          onTap: () {
                            selectedShipping.value = index;
                            context.read<CheckoutBloc>().add(
                                  CheckoutEvent.addShippingService(
                                      'jne', item.cost![0].value!),
                                );
                          },
                          title: Text(
                            '${item.service} - ${item.description} (${item.cost![0].value!.currencyFormatRp})',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text('Estimasi ${item.cost![0].etd} Hari'),
                          trailing: Icon(
                            value == index
                                ? Icons.radio_button_checked
                                : Icons.circle_outlined,
                            color: value == index
                                ? AppColors.primary
                                : AppColors.gray,
                          ),
                        );
                      },
                      itemCount: costResponseModel
                          .rajaongkir!.results![0].costs!.length,
                    ),
                  );
                },
              );
            },
          ),
          const Divider(),
          BlocBuilder<CostBloc, CostState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox();
                },
                loaded: (costResponseModel) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Button.filled(
                      onPressed: () => context.pop(costResponseModel.rajaongkir!
                          .results![0].costs![selectedShipping.value]),
                      label: 'Lanjutkan',
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
