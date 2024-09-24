import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/core/constants/colors.dart';
import 'package:flutter_ecommerce_user/data/datasources/address_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/datasources/agora_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/datasources/firebase_messaging_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/datasources/order_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/datasources/rajaongkir_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/datasources/store_remote_Datasource.dart';
import 'package:flutter_ecommerce_user/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/auth/bloc/register/register_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/auth/page/splash_screen.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/add_address/add_address_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/agora_token/agora_token_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/cost/cost_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_addresses/get_addresses_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_city/get_city_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_order_history/get_order_history_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_order_status/get_order_status_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_products/get_products_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_province/get_province_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_store/get_store_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_store_livestreaming/get_store_livestreaming_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/get_subdistrict/get_subdistrict_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/order/order_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/order_detail/order_detail_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/home/bloc/tracking/tracking_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessagingRemoteDatasource().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetStoreBloc(StoreRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetProductsBloc(StoreRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => GetAddressesBloc(AddressRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => AddAddressBloc(AddressRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetProvinceBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetCityBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetSubdistrictBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CostBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => OrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetOrderStatusBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetOrderHistoryBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => AgoraTokenBloc(AgoraRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              GetStoreLivestreamingBloc(StoreRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => OrderDetailBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => TrackingBloc(RajaongkirRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          scaffoldBackgroundColor: AppColors.white,
          dialogBackgroundColor: AppColors.white,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.white,
          ),
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: AppColors.white),
          dividerTheme: const DividerThemeData(color: AppColors.stroke),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.inter(
              color: AppColors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.black,
            ),
            centerTitle: true,
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
