import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: telaLogin(context),
      ),
    );
  }

//------------------------------------------------------------------------------
  telaLogin(context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        SizedBox(child: cabecalhoEstatico()),
        const SizedBox(height: 40),
        SizedBox(width: 330, child: formLogin(context)),
        const SizedBox(height: 60),
        SizedBox(width: 330, child: buttonLogin(context)),
        const SizedBox(height: 10),
        SizedBox(child: forgotPassword()),
        const Divider(indent: 40, endIndent: 40),
      ],
    );
  }

//------------------------------------------------------------------------------
  cabecalhoEstatico() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 5),
          child: Center(
            child: Image.asset(
              'assets/profile_picture.png',
              scale: 8,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }

  formLogin(context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 5),
        Material(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          elevation: 10,
          shadowColor: Colors.black,
          child: TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(style: BorderStyle.none),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: colorScheme.primary,
                ),
              ),
              prefixIcon: const Icon(Icons.people),
              prefixIconColor: colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          'Senha',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 5),
        Material(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          elevation: 10,
          shadowColor: Colors.black,
          child: TextFormField(
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(style: BorderStyle.none),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: colorScheme.primary,
                ),
              ),
              prefixIcon: const Icon(Icons.lock),
              prefixIconColor: colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  buttonLogin(context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                colors: [colorScheme.primaryContainer, colorScheme.primary])),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          child: Text(
            'Login',
            style: TextStyle(
              color: colorScheme.onPrimary,
              fontSize: 20,
            ),
          ),
          onPressed: () {
            Modular.to.pushNamed('/home/');
          },
        ),
      ),
    );
  }

  forgotPassword() {
    return TextButton(
        onPressed: () {}, child: const Text('Esqueci minha senha'));
  }
}
