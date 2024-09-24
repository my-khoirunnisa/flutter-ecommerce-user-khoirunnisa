import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_store/get_store_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_store_livestreaming/get_store_livestreaming_bloc.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/search_input.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../../data/models/response/list_store_response_model.dart';
import '../models/store_model.dart';
import '../widgets/banner_slider.dart';
import '../widgets/live_now_card.dart';
import '../widgets/store_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final banners = [
    Assets.images.banner.path,
    Assets.images.banner.path,
    Assets.images.banner.path,
  ];

  @override
  void initState() {
    context.read<GetStoreBloc>().add(const GetStoreEvent.getStores());
    context
        .read<GetStoreLivestreamingBloc>()
        .add(const GetStoreLivestreamingEvent.getLiveStreaming());
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Live Store',
          style: TextStyle(
            fontSize: 18.0,
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //context.push(const CartPage());
            },
            icon: Assets.icons.cartCircle.svg(),
          ),
          const SpaceWidth(8.0),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SearchInput(
            controller: searchController,
            hintText: 'Search any Product',
            onChanged: (value) {},
          ),
          const SpaceHeight(24.0),
          BannerSlider(items: banners),
          const SpaceHeight(40.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sedang Live',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: AppColors.primary,
                    ),
                  ),
                  InkWell(
                    onTap: () {}, // => context.push(const LiveNowPage()),
                    child: const Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: AppColors.gray,
                      ),
                    ),
                  ),
                ],
              ),
              const SpaceHeight(20.0),
              BlocBuilder<GetStoreLivestreamingBloc,
                  GetStoreLivestreamingState>(
                builder: (context, state) {
                  List<Store> newStoreList = [];
                  state.maybeMap(
                    orElse: () {},
                    loaded: (value) {
                      newStoreList = value.storeLiveStreaming;
                    },
                  );
                  if (storeList.isEmpty) {
                    return const Center(
                      child: Text('No Live Store'),
                    );
                  }
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 26.0,
                    ),
                    itemCount: newStoreList.length,
                    itemBuilder: (context, index) => LiveNowCard(
                      item: newStoreList[index],
                    ),
                  );
                },
              ),
              const SpaceHeight(30.0),
              const Text(
                'Daftar Toko',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  color: AppColors.primary,
                ),
              ),
              const SpaceHeight(20.0),
              BlocBuilder<GetStoreBloc, GetStoreState>(
                builder: (context, state) {
                  List<Store> newStoreList = [];
                  state.maybeMap(
                    orElse: () {},
                    loaded: (value) {
                      newStoreList = value.stores;
                    },
                  );
                  if (storeList.isEmpty) {
                    return const Center(
                      child: Text('No Store'),
                    );
                  }
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 26.0,
                    ),
                    itemCount: newStoreList.length,
                    itemBuilder: (context, index) => StoreCard(
                      item: newStoreList[index],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
