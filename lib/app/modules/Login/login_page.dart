import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/Json/user.dart';
import 'package:gym/app/SQL/sqlite.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Editing Controller to control the next when we enter into it
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  bool isVisible = false;
  bool isLoginTrue = false;
  bool isChecked = false;

  final db = DatabaseHelper();
// Função login
  login() async {
    var response = await db
        .login(Users(userEmail: email.text, userPassword: password.text));

    if (response == true) {
      if (!mounted) return;
      Modular.to.pushNamed('/home/');
    } else {
      setState(() {
        isLoginTrue = true;
      });
    }
  }

//We have to create global key for our form
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            //We put all our textfield to a form to be controlled and not allow as empty
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        //botao temporario para consultar usuarios
                        ElevatedButton(
                            onPressed: () {
                              Modular.to.pushNamed('/users/');
                            },
                            child: Text('USERS')),
                        //Image
                        Image.asset(
                          "assets/login.png",
                          width: 300,
                        ),
                        const SizedBox(height: 15),
                        //EMAIL
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorScheme.primary.withOpacity(0.1),
                          ),
                          child: TextFormField(
                            controller: email,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Preencha o campo email";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.person),
                              border: InputBorder.none,
                              hintText: 'Email',
                            ),
                          ),
                        ),

                        //PASSWORD
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorScheme.primary.withOpacity(0.1),
                          ),
                          child: TextFormField(
                            controller: password,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Preencha o campo senha";
                              }
                              return null;
                            },
                            obscureText: !isVisible,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.lock),
                              border: InputBorder.none,
                              hintText: 'Senha',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                icon: Icon(isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                          ),
                        ),

                        //CHECKBOX
                        ListTile(
                          horizontalTitleGap: 2,
                          title: const Text('Continue conectado'),
                          leading: Checkbox(
                            activeColor: colorScheme.primary,
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                          ),
                        ),

                        //Login Button
                        Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                //Login method will be here
                                login();
                              }
                            },
                            child: Text(
                              'ENTRAR',
                              style: TextStyle(color: colorScheme.onPrimary),
                            ),
                          ),
                        ),
                        //Sing up button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Não possui conta?'),
                            TextButton(
                                onPressed: () {
                                  //Navigate to Sing Up
                                  Modular.to.pushNamed('/signup');
                                },
                                child: const Text('CADASTRE-SE'))
                          ],
                        ),

                        //sera disparado caso esta incorreto
                        isLoginTrue
                            ? Text(
                                'Email ou senha está incorreto',
                                style: TextStyle(color: colorScheme.error),
                              )
                            : const SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
