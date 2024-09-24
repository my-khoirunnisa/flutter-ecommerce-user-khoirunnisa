import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/core/core.dart';
import 'package:flutter_ecommerce_user/presentation/auth/page/login_page.dart';
import '../../../data/datasources/auth_local_datasource.dart';
import '../../auth/bloc/logout/logout_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SpaceHeight(16.0),
          const ListTile(
            title: Text(
              'Saiful Bahri',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            subtitle: Text('bahri@gmail.com'),
          ),
          const SpaceHeight(8.0),
          ListTile(
            onTap: () {
              // context.push(const ProfileDetailPage())
            },
            title: const Text(
              'Informasi Akun',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text('Informasi akun milikmu'),
            trailing: const Icon(Icons.chevron_right),
          ),
          BlocListener<LogoutBloc, LogoutState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  success: () async {
                    await AuthLocalDatasource().removeAuthData();
                    if (!context.mounted) return;
                    context.pushReplacement(const LoginPage());
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Logout success!')),
                    );
                  },
                  error: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(value),
                        backgroundColor: AppColors.red,
                      ),
                    );
                  });
            },
            child: ListTile(
              onTap: () {
                context.read<LogoutBloc>().add(const LogoutEvent.logout());
              },
              title: const Text(
                'Keluar Akun',
                style: TextStyle(
                  color: AppColors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('Keluar dari akun kamu'),
              trailing: const Icon(
                Icons.chevron_right,
                color: AppColors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
