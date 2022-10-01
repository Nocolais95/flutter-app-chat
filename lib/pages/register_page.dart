import 'package:chat_app/widgets/custom_input.dart';
import 'package:flutter/material.dart';

import '../widgets/blue_button.dart';
import '../widgets/labels.dart';
import '../widgets/logo.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          // Esto es para que haga un rebote arriba cuando hacemos scroll
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(
                  title: 'Register',
                ),
                _Form(),
                Labels(
                  ruta: 'login',
                  question: 'Do you have an account?',
                  account: 'Login',
                ),
                Text('About it', style: TextStyle(fontWeight: FontWeight.w200)),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.person_outline,
            placeholder: "Name",
            textController: nameController,
            keyboardType: TextInputType.text,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: "Email",
            textController: emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: "Password",
            textController: passwordController,
            isPassword: true,
          ),
          Blue_Button(
            onPressed: () {
              print(emailController.text);
            },
            textButton: 'Sign up!',
          ),
        ],
      ),
    );
  }
}
