import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/core/core.dart';
import 'package:flutter_ecommerce_user/presentation/auth/bloc/register/register_bloc.dart';
import 'package:flutter_ecommerce_user/presentation/auth/page/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
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
              'Register',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SpaceHeight(24.0),
          CustomTextField(
            controller: nameController,
            label: 'Name',
            hintText: 'Enter your name',
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(12.0),
          CustomTextField(
            controller: emailController,
            label: 'E-mail',
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(12.0),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            helperText: 'must contain 8 char.',
            obscureText: true,
            hintText: '*********',
          ),
          const SpaceHeight(38.0),
          BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  error: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(message),
                      backgroundColor: AppColors.red,
                    ));
                  },
                  success: () {
                    context.pushReplacement(const LoginPage());
                  });
            },
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () {
                    return Button.filled(
                      onPressed: () {
                        context.read<RegisterBloc>().add(
                              RegisterEvent.register(
                                name: nameController.text,
                                email: emailController.text,
                                password: passwordController.text,
                              ),
                            );
                      },
                      label: 'Create Account',
                      borderRadius: 99.0,
                    );
                  },
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ));
            },
          ),
          const SpaceHeight(16.0),
          InkWell(
            onTap: () => context.pop(),
            child: const SizedBox(
              height: 50.0,
              child: Center(
                child: Text('already have an account? please login'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
