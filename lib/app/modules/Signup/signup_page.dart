import 'package:flutter/material.dart';
import 'package:gym/app/modules/Signup/signup_page1.dart';
import 'package:gym/app/modules/Signup/signup_page6.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    super.initState();
    _progress = 1 / 6;
  }

  //PROGRESS BAR
  double _progress = 0;
  int currentPage = 0;
  final PageController _progressController = PageController(initialPage: 0);

  //esconder senha
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Meus Dados'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(5),
          child: LinearProgressIndicator(
            minHeight: 5.0,
            value: _progress,
            color: colorScheme.primary,
            backgroundColor: Colors.grey[300],
          ),
        ),
      ),
      body: PageView(
        // physics: const NeverScrollableScrollPhysics(),
        controller: _progressController,
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
            _progress = (currentPage + 1) / 6;
          });
        },
        children: const [
          SignupPage1(),
          //
          Text('WIDGET 2'),
          //
          Text('WIDGET 3'),
          //
          Text('WIDGET 4'),
          //
          Text('WIDGET 5'),
          //
          SignupPage6(),
        ],
      ),
    );
  }
}
