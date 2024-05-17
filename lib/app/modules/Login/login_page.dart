import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          const SizedBox(height: 60),
          cabecalhoEstatico(),
          const SizedBox(height: 40),
          formLogin(context),
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
              scale: 12,
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
      children: [
        SizedBox(
          child: TextFormField(
            style: TextStyle(color: colorScheme.onPrimary, fontSize: 20),
            decoration: InputDecoration(
              filled: true,
              fillColor: colorScheme.primary,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colorScheme.onPrimary,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colorScheme.onPrimary,
                ),
              ),
              prefixIcon: const Icon(Icons.people),
              prefixIconColor: colorScheme.onPrimary,
              labelText: 'Email',
              labelStyle: TextStyle(
                color: colorScheme.onPrimary,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          style: TextStyle(color: colorScheme.onPrimary, fontSize: 20),
          decoration: InputDecoration(
            filled: true,
            fillColor: colorScheme.primary,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorScheme.onPrimary,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorScheme.onPrimary,
              ),
            ),
            prefixIcon: const Icon(Icons.lock),
            prefixIconColor: colorScheme.onPrimary,
            labelText: 'Senha',
            labelStyle: TextStyle(
              color: colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
