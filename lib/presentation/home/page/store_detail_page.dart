// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ecommerce_user/data/models/response/list_store_response_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_products/get_products_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/cart_page.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/product_detail_page.dart';

import '../../../core/core.dart';
import '../../../data/models/response/list_product_response_model.dart';
import '../widgets/product_card.dart';
import '../widgets/store_header.dart';

class StoreDetailPage extends StatefulWidget {
  final Store store;
  const StoreDetailPage({
    super.key,
    required this.store,
  });

  @override
  State<StoreDetailPage> createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  void initState() {
    context
        .read<GetProductsBloc>()
        .add(GetProductsEvent.getProducts(widget.store.id!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.store.name}'),
        actions: [
          IconButton(
            onPressed: () {
              context.push(CartPage(store: widget.store,));
            },
            icon: Assets.icons.cartCircle.svg(),
          ),
          const SpaceWidth(8.0),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          StoreHeader(store: widget.store),
          const SpaceHeight(40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Produk',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SpaceHeight(4.0),
                  Text(
                    'Klik untuk lihat detail produk',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Lihat semua',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SpaceHeight(16.0),
          BlocBuilder<GetProductsBloc, GetProductsState>(
            builder: (context, state) {
              List<Product> newProducts = [];
              state.maybeWhen(
                  orElse: () {},
                  loaded: (products) {
                    newProducts = products;
                  });
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: newProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.65,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () => context.push(ProductDetailPage(
                      item: newProducts[index], store: widget.store)),
                  child: ProductCard(
                    item: newProducts[index],
                    onCartButton: () {},
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
