import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_user/core/constants/variables.dart';
import 'package:flutter_ecommerce_user/data/models/response/list_store_response_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/store_detail_page.dart';

import '../../../core/core.dart';

class StoreCard extends StatelessWidget {
  final Store item;
  const StoreCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(StoreDetailPage(store: item));
        // context.push(const StoreDetailPage())
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              width: context.deviceWidth,
              height: 100.0,
              fit: BoxFit.cover,
              imageUrl: '${Variables.baseUrl}/storage/${item.photo!}',
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          ),
          const SpaceHeight(8.0),
          Text(
            item.name ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Assets.icons.location.svg(),
              const SpaceWidth(4.0),
              SizedBox(
                width: context.deviceWidth - 264.0,
                child: Text(
                  item.address ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
