import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      //ALTERAR FUTURAMENTE
      body: const Center(
        child: ListTile(
          title: Text(
            'Bem-Vindo',
            style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      // BOTOES
      bottomNavigationBar: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                //SIGNUP BUTTON
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Modular.to.pushNamed('/signup/');
                      },
                      child: Text(
                        'COMEÇAR',
                        style: TextStyle(
                            color: colorScheme.onPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                //LOGIN BUTTON
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Modular.to.pushNamed('/login/');
                      },
                      child: Text(
                        'JÁ POSSUI CONTA?',
                        style: TextStyle(
                            color: colorScheme.onPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
