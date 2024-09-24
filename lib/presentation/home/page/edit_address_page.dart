import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../models/address_model.dart';

class EditAddressPage extends StatefulWidget {
  final AddressModel item;
  const EditAddressPage({super.key, required this.item});

  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  final dummy = ['Dummy 1', 'Dummy 2', 'Dummy 3'];
  late final TextEditingController nameController;
  late final ValueNotifier countryNotifier;
  late final ValueNotifier provinceNotifier;
  late final ValueNotifier cityNotifier;
  late final ValueNotifier subdistrictNotifier;
  late final TextEditingController addressController;
  late final TextEditingController zipCodeController;
  late final TextEditingController phoneNumberController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.item.name);
    countryNotifier = ValueNotifier(dummy.first);
    provinceNotifier = ValueNotifier(dummy.first);
    cityNotifier = ValueNotifier(dummy.first);
    subdistrictNotifier = ValueNotifier(dummy.first);
    addressController = TextEditingController(text: widget.item.address);
    zipCodeController = TextEditingController(text: '${widget.item.zipCode}');
    phoneNumberController =
        TextEditingController(text: widget.item.phoneNumber);
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
        title: const Text('Edit Your Address'),
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
          const SpaceHeight(14.0),
          ValueListenableBuilder(
            valueListenable: provinceNotifier,
            builder: (context, value, _) => CustomDropdown(
              value: value,
              items: dummy,
              label: 'Propinsi',
              onChanged: (value) => countryNotifier.value = value ?? '',
            ),
          ),
          const SpaceHeight(14.0),
          ValueListenableBuilder(
            valueListenable: cityNotifier,
            builder: (context, value, _) => CustomDropdown(
              value: value,
              items: dummy,
              label: 'Kota',
              onChanged: (value) => countryNotifier.value = value ?? '',
            ),
          ),
          const SpaceHeight(14.0),
          ValueListenableBuilder(
            valueListenable: subdistrictNotifier,
            builder: (context, value, _) => CustomDropdown(
              value: value,
              items: dummy,
              label: 'Kecamatan',
              onChanged: (value) => countryNotifier.value = value ?? '',
            ),
          ),
          const SpaceHeight(14.0),
          CustomTextField(
            controller: addressController,
            label: 'Alamat',
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(14.0),
          CustomTextField(
            controller: zipCodeController,
            label: 'Kode Pos',
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(14.0),
          CustomTextField(
            controller: phoneNumberController,
            label: 'No Handphone',
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: () {
            context.pop();
          },
          label: 'Perbarui Alamat',
        ),
      ),
    );
  }
}
