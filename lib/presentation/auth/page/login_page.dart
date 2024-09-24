import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/core/core.dart';
import 'package:flutter_ecommerce_user/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_user/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/auth/page/register_page.dart';
import 'package:flutter_ecommerce_user/presentation/home/page/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SpaceHeight(18.0),
          const Center(
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SpaceHeight(40.0),
          CustomTextField(
            controller: emailController,
            label: 'E-mail',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(12.0),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: true,
          ),
          const SpaceHeight(12.0),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                // context.push(const ForgotPasswordPage())
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.blue,
                ),
              ),
            ),
          ),
          const SpaceHeight(50.0),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                error: (message) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(message)));
                },
                success: (data) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Login success'),
                    ),
                  );
                  AuthLocalDatasource().saveAuthData(data);
                  context.pushReplacement(const MainPage());
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Button.filled(
                    onPressed: () {
                      context.read<LoginBloc>().add(
                            LoginEvent.login(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          );
                      // context.pushReplacement(const MainPage());
                    },
                    label: 'Login',
                    borderRadius: 99.0,
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                context.push(const RegisterPage());
              },
              child: const SizedBox(
                height: 50.0,
                child: Center(
                  child: Text('don\'t have an account yet? please register'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
