import 'package:flutter/material.dart';

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
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        children: [
          const SizedBox(height: 60),
          cabecalhoEstatico(),
          const SizedBox(height: 40),
          SizedBox(
            width: 330,
            child: formLogin(context),
          ),
        ],
      ),
    );
  }

  cabecalhoEstatico() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 5),
          child: Center(
            child: Image.asset(
              'assets/profile_picture.png',
              scale: 8,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  formLogin(context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          textAlign: TextAlign.left,
          style: TextStyle(color: colorScheme.outlineVariant, fontSize: 15),
        ),
        const SizedBox(height: 5),
        Material(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          elevation: 10,
          shadowColor: colorScheme.primary,
          child: TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: colorScheme.onPrimary,
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
        Text(
          'Senha',
          textAlign: TextAlign.left,
          style: TextStyle(color: colorScheme.outlineVariant, fontSize: 15),
        ),
        const SizedBox(height: 5),
        Material(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          elevation: 10,
          shadowColor: colorScheme.primary,
          child: TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: colorScheme.onPrimary,
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
}
