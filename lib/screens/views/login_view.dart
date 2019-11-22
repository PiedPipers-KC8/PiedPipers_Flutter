import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sounds_good/locator.dart';
import 'package:sounds_good/core/viewmodels/login_viewmodel.dart';
import 'package:sounds_good/screens/widgets/login_header.dart';

class LoginView extends StatefulWidget {
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController =
      TextEditingController(text: "cocoataster@gmail.com");
  final TextEditingController passwordController =
      TextEditingController(text: "soundsgood");

  _handleLogin(LoginViewModel model) async {
    var loginSuccess =
        await model.login(emailController.text, passwordController.text);

    if (loginSuccess) {
      Navigator.pushNamed(context, 'profile');
    }

    return;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
      builder: (context) => locator<LoginViewModel>(),
      child: Consumer<LoginViewModel>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LoginHeader(emailController, passwordController),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              FlatButton(
                color: Colors.teal,
                child: Text('Login'),
                onPressed: () => _handleLogin(model),
              )
            ],
          ),
        ),
      ),
    );
  }
}
