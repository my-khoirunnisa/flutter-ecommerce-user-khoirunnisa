import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/response/list_store_response_model.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/agora_token/agora_token_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/live_streaming_clicked.dart';

import '../../../core/constants/variables.dart';
import '../../../core/core.dart';

class LiveNowCard extends StatelessWidget {
  final Store item;
  const LiveNowCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AgoraTokenBloc, AgoraTokenState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loaded: (e) {
            context.push(LiveStreamingClickedPage(
              channel: e.channel,
              uid: e.uid,
              token: e.token,
              store: item,
            ));
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return GestureDetector(
              onTap: () async {
                final authData = await AuthLocalDatasource().getAuthData();
                //context.push(const LiveStreamingClickedPage());
                // ignore: use_build_context_synchronously
                context.read<AgoraTokenBloc>().add(AgoraTokenEvent.getToken(
                      item.name!.trim().replaceAll(' ', ''),
                      authData.data!.user!.id!.toString(),
                      'audiance',
                    ));
              }, //=> ,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Stack(
                  children: [
                    Image.network(
                      '${Variables.baseUrl}/storage/${item.photo}',
                      width: context.deviceWidth,
                      height: context.deviceHeight,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(0.36),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Stack(
                        children: [
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SpaceWidth(50.0),
                              Icon(
                                Icons.visibility_outlined,
                                color: AppColors.white,
                              ),
                              SpaceWidth(7.0),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ),
                              SpaceWidth(4.0),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Text(
                              'LIVE',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ColoredBox(
                        color: AppColors.primary.withOpacity(0.50),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name ?? '',
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SpaceHeight(4.0),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.white,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            'https://www.greenscene.co.id/wp-content/uploads/2021/06/Kaiju-2.jpg',
                                        width: 15.0,
                                        height: 15.0,
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) =>
                                            const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SpaceWidth(7.0),
                                  Text(
                                    '${item.name}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  const SpaceWidth(7.0),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
    );
  }
}
