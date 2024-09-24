import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_user/core/core.dart';
import 'package:flutter_ecommerce_user/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_user/presentation/auth/page/login_page.dart';

import '../../home/page/main_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
          const Duration(milliseconds: 2000),
          () => AuthLocalDatasource().isUserLoggedIn(),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data!) {
                return const MainPage();
              } else {
                return const LoginPage();
              }
            }
          }
          return Padding(
            padding: const EdgeInsets.all(130.0),
            child: Center(
              child: Assets.images.logo.image(),
            ),
          );
        },
      ),
    );
  }
}
