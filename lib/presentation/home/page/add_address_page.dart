import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/data/models/request/address_request_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/add_address/add_address_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_addresses/get_addresses_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_city/get_city_bloc.dart';

import '../../../core/core.dart';
import '../../../data/models/response/city_response_model.dart';
import '../../../data/models/response/province_response_model.dart';
import '../../../data/models/response/subdistrict_response_model.dart';
import '../bloc/get_province/get_province_bloc.dart';
import '../bloc/get_subdistrict/get_subdistrict_bloc.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final dummy = ['Indonesia', 'Dummy 2', 'Dummy 3'];
  late final TextEditingController nameController;
  late final ValueNotifier countryNotifier;
  late final ValueNotifier provinceNotifier;
  late final ValueNotifier cityNotifier;
  late final ValueNotifier subdistrictNotifier;
  late final TextEditingController addressController;
  late final TextEditingController zipCodeController;
  late final TextEditingController phoneNumberController;
  bool isDefault = false;

  @override
  void initState() {
    nameController = TextEditingController();
    countryNotifier = ValueNotifier(dummy.first);
    provinceNotifier = ValueNotifier(dummy.first);
    cityNotifier = ValueNotifier(dummy.first);
    subdistrictNotifier = ValueNotifier(dummy.first);
    addressController = TextEditingController();
    zipCodeController = TextEditingController();
    phoneNumberController = TextEditingController();
    context.read<GetProvinceBloc>().add(const GetProvinceEvent.getProvince());
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    countryNotifier.dispose();
    provinceNotifier.dispose();
    cityNotifier.dispose();
    subdistrictNotifier.dispose();
    addressController.dispose();
    zipCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Your Address'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CustomTextField(
            controller: nameController,
            label: 'Name',
            hintText: 'Masukkan nama',
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(14.0),
          ValueListenableBuilder(
            valueListenable: countryNotifier,
            builder: (context, value, _) => CustomDropdown(
              value: value,
              items: dummy,
              label: 'Negara / Wilayah',
              onChanged: (value) => countryNotifier.value = value ?? '',
            ),
          ),
          const SpaceHeight(12.0),
          BlocBuilder<GetProvinceBloc, GetProvinceState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(child: CircularProgressIndicator());
                },
                loaded: (data) {
                  return CustomDropdown<Province>(
                    value: data.first,
                    items: data,
                    label: 'Provinsi',
                    onChanged: (value) => {
                      provinceNotifier.value = value!.provinceId,
                      context.read<GetCityBloc>().add(
                            GetCityEvent.getCity(int.parse(value.provinceId!)),
                          ),
                    },
                  );
                },
              );
            },
          ),
          const SpaceHeight(12.0),
          BlocBuilder<GetCityBloc, GetCityState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Text('Menunggu Provinsi dipilih');
                },
                loaded: (data) {
                  return CustomDropdown<City>(
                      value: data.first,
                      items: data,
                      label: 'Kota',
                      onChanged: (value) {
                        cityNotifier.value = value!.cityId;
                        context.read<GetSubdistrictBloc>().add(
                              GetSubdistrictEvent.getSubdistrict(
                                int.parse(value.cityId!),
                              ),
                            );
                      });
                },
              );
            },
          ),
          const SpaceHeight(12.0),
          BlocBuilder<GetSubdistrictBloc, GetSubdistrictState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Text('Menunggu Kota dipilih');
                },
                loaded: (data) {
                  return CustomDropdown<Subdistrict>(
                      value: data.first,
                      items: data,
                      label: 'Kecamatan',
                      onChanged: (value) {
                        subdistrictNotifier.value = value!.subdistrictId;
                      });
                },
              );
            },
          ),
          const SpaceHeight(12.0),
          CustomTextField(
            controller: addressController,
            label: 'Alamat',
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(12.0),
          CustomTextField(
            controller: zipCodeController,
            label: 'Kode Pos',
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            hintText: 'Masukkan kode POS',
          ),
          const SpaceHeight(12.0),
          CustomTextField(
            controller: phoneNumberController,
            label: 'No Handphone',
            keyboardType: TextInputType.number,
            hintText: 'Masukkan nomor handphone',
          ),
          const SpaceHeight(12.0),
          Row(
            children: [
              Checkbox(
                  value: isDefault,
                  onChanged: (value) {
                    setState(() {
                      isDefault = value!;
                    });
                  }),
              const Text('Jadikan Alamat Utama')
            ],
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: () {
            final data = AddressRequestModel(
              address: addressController.text,
              country: countryNotifier.value.toString(),
              province: provinceNotifier.value.toString(),
              city: cityNotifier.value.toString(),
              district: subdistrictNotifier.value.toString(),
              postalCode: zipCodeController.text,
              isDefault: isDefault,
            );
            context
                .read<AddAddressBloc>()
                .add(AddAddressEvent.addAddress(data));
            context
                .read<GetAddressesBloc>()
                .add(const GetAddressesEvent.getAddresses());
            context.pop();
          },
          label: 'Tambahkan Alamat',
        ),
      ),
    );
  }
}
