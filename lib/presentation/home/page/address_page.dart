import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/data/models/response/address_response_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_addresses/get_addresses_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/add_address_page.dart';

import '../../../core/core.dart';
import '../widgets/address_tile.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  void initState() {
    context
        .read<GetAddressesBloc>()
        .add(const GetAddressesEvent.getAddresses());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Address'),
      ),
      body:
          // addresses.isEmpty
          //     ? Center(
          //         child: Column(
          //           children: [
          //             const SpaceHeight(120.0),
          //             Assets.images.locationEmpty.image(height: 140.0),
          //             const SpaceHeight(70.0),
          //             const Text(
          //               'Opss! belum ada alamat',
          //               style: TextStyle(
          //                 fontSize: 16.0,
          //                 color: AppColors.primary,
          //                 fontWeight: FontWeight.w500,
          //               ),
          //             ),
          //             const SpaceHeight(16.0),
          //             const Text(
          //               'Tambahkan alamatmu dahulu',
          //               style: TextStyle(
          //                 color: AppColors.gray,
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     :
          BlocBuilder<GetAddressesBloc, GetAddressesState>(
        builder: (context, state) {
          final newAddresses = state.maybeMap(
              orElse: () => <Address>[], loaded: (value) => value.addresses);
          if (newAddresses.isEmpty) {
            return Center(
              child: Column(
                children: [
                  const SpaceHeight(120.0),
                  Assets.images.locationEmpty.image(height: 140.0),
                  const SpaceHeight(70.0),
                  const Text(
                    'Opss! belum ada alamat',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SpaceHeight(16.0),
                  const Text(
                    'Tambahkan alamatmu dahulu',
                    style: TextStyle(
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
            );
          }
          return ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              StatefulBuilder(
                builder: (context, setState) => ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: newAddresses.length,
                  itemBuilder: (context, index) => AddressTile(
                    isSelected: selectedIndex == index,
                    item: newAddresses[index],
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    onEditTap: () {
                      // context.push(EditAddressPage(
                      //   item: addresses[index],
                      // ));
                    },
                  ),
                  separatorBuilder: (context, index) => const SpaceHeight(16.0),
                ),
              ),
              const SpaceHeight(40.0),
              Button.outlined(
                onPressed: () => context.push(const AddAddressPage()),
                label: 'Add address',
              ),
              const SpaceHeight(50.0),
            ],
          );
        },
      ),
      bottomNavigationBar:
          // addresses.isEmpty
          //     ? Padding(
          //         padding: const EdgeInsets.all(20.0),
          //         child: Button.filled(
          //           onPressed: () => context.push(const AddAddressPage()),
          //           label: 'Tambahkan Alamat',
          //         ),
          //       )
          //     :
          BlocBuilder<GetAddressesBloc, GetAddressesState>(
        builder: (context, state) {
          final newAddresses = state.maybeMap(
              orElse: () => <Address>[], loaded: (value) => value.addresses);
          if (newAddresses.isEmpty) {
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Button.filled(
                onPressed: () => context.push(const AddAddressPage()),
                label: 'Tambahkan Alamat',
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Button.filled(
              onPressed: () {
                final address = newAddresses.firstWhere(
                  (element) => element.isDefault! == 1,
                  orElse: () => newAddresses.first,
                );
                context.pop(address);
              },
              label: 'Lanjutkan',
            ),
          );
        },
      ),
    );
  }
}
