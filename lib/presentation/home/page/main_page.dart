import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/home_page.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import 'order_list_page.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const OrderListPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0 ? AppColors.primary : AppColors.gray,
                BlendMode.srcIn,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.order.svg(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1 ? AppColors.primary : AppColors.gray,
                BlendMode.srcIn,
              ),
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.profile.svg(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 2 ? AppColors.primary : AppColors.gray,
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
