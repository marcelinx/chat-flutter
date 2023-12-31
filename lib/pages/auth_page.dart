import 'package:chat/core/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

import '../components/auth_form.dart';
import '../core/models/auth_form_data.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _isLoading = false;

  Future<void> _handleSubmit(AuthFormData formData) async {
    try {
      if (!mounted) return;
      setState(() => _isLoading = true);

      if (formData.isLogin) {
        // Login
        await AuthService().login(
          formData.email, 
          formData.password
        );
      } else {
        //SignUp
        print('signup');
        await AuthService().signup(
          formData.name,
          formData.email,
          formData.password, 
          formData.image,
        );
      }
    } catch (error) {
      //tratar erro
    } finally {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(children: [
        Stack(children: [
          Center(
            child: SingleChildScrollView(
              child: AuthForm(onSubmit: _handleSubmit),
            ),
          ),
          if (_isLoading)
            Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            )
        ]),
      ]),
    );
  }
}
