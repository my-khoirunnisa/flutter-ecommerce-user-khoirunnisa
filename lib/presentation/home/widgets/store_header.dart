import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_user/core/constants/variables.dart';

import '../../../core/core.dart';
import '../../../data/models/response/list_store_response_model.dart';

class StoreHeader extends StatelessWidget {
  final Store store;
  const StoreHeader({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20.0,
            spreadRadius: 0,
            color: AppColors.black.withOpacity(0.2),
            blurStyle: BlurStyle.outer,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl: '${Variables.baseUrl}/storage/${store.photo}',
                  fit: BoxFit.cover,
                  width: 84.0,
                  height: 84.0,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ),
              const SpaceWidth(24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${store.name}',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SpaceHeight(8.0),
                  Row(
                    children: [
                      Assets.icons.location.svg(),
                      const SpaceWidth(8.0),
                      Text(
                        '${store.address}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
