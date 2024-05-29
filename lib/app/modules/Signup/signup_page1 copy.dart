// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage1 extends StatefulWidget {
  const SignupPage1({super.key});

  @override
  State<SignupPage1> createState() => _SignupPage1State();
}

class _SignupPage1State extends State<SignupPage1> {
  String? _sexo;
  DateTime? _dataNascimento;
  int _pesoInteiro = 70;
  int _pesoDecimal = 0;
  int _alturaInteiro = 165;
  int _alturaDecimal = 0;
  int _metaPesoInteiro = 70;
  int _metaPesoDecimal = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("PREENCHA SEUS DADOS:"),
          const SizedBox(height: 16),
          const Text("Sexo"),
          DropdownButton<String>(
            value: _sexo,
            items: ["Masculino", "Feminino", "Prefiro não dizer"]
                .map((label) => DropdownMenuItem(
                      value: label,
                      child: Text(label),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _sexo = value;
              });
            },
            hint: const Text('Selecione seu sexo'),
          ),
          const SizedBox(height: 16),
          const Text("Data de Nascimento"),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime(2000),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    ).then((date) {
                      setState(() {
                        _dataNascimento = date;
                      });
                    });
                  },
                  child: Text(_dataNascimento == null
                      ? 'Selecione a data'
                      : _dataNascimento.toString().split(' ')[0]),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text("Peso"),
          Container(
            color: Colors.black,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListWheelScrollView.useDelegate(
                          physics: const FixedExtentScrollPhysics(),
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 1.2,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              _pesoInteiro = index + 30;
                            });
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            builder: (context, index) {
                              return Center(
                                child: Text(
                                  (index + 30).toString(),
                                  style: const TextStyle(fontSize: 24),
                                ),
                              );
                            },
                            childCount: 151, // Peso de 30 a 150
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListWheelScrollView.useDelegate(
                          physics: const FixedExtentScrollPhysics(),
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 1.2,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              _pesoDecimal = index;
                            });
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            builder: (context, index) {
                              return Center(
                                child: Text(
                                  (index * 0.1).toStringAsFixed(1),
                                  style: const TextStyle(fontSize: 24),
                                ),
                              );
                            },
                            childCount: 10, // 0.0 a 0.9
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text("Altura (cm)"),
          Container(
            color: Colors.black,
            child: Stack(
              children: [
                const Column(
                  children: [
                    Divider(
                      height: 60,
                    ),
                    Divider(),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListWheelScrollView.useDelegate(
                          physics: const FixedExtentScrollPhysics(),
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 1.2,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              _alturaInteiro = index + 100;
                            });
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            builder: (context, index) {
                              return Center(
                                child: Text(
                                  (index + 100).toString(),
                                  style: const TextStyle(fontSize: 24),
                                ),
                              );
                            },
                            childCount: 121, // Altura de 100 a 220 cm
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListWheelScrollView.useDelegate(
                          physics: const FixedExtentScrollPhysics(),
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 1.2,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              _alturaDecimal = index;
                            });
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            builder: (context, index) {
                              return Center(
                                child: Text(
                                  (index * 0.1).toStringAsFixed(1),
                                  style: const TextStyle(fontSize: 24),
                                ),
                              );
                            },
                            childCount: 10, // 0.0 a 0.9
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text("Qual sua meta de peso?"),
          Container(
            color: Colors.black,
            child: Stack(
              children: [
                const Column(
                  children: [
                    Divider(
                      height: 60,
                    ),
                    Divider(),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListWheelScrollView.useDelegate(
                          physics: const FixedExtentScrollPhysics(),
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 1.2,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              _metaPesoInteiro = index + 30;
                            });
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            builder: (context, index) {
                              return Center(
                                child: Text(
                                  (index + 30).toString(),
                                  style: const TextStyle(fontSize: 24),
                                ),
                              );
                            },
                            childCount: 121, // Meta de peso de 30 a 150
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListWheelScrollView.useDelegate(
                          physics: const FixedExtentScrollPhysics(),
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 1.2,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              _metaPesoDecimal = index;
                            });
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            builder: (context, index) {
                              return Center(
                                child: Text(
                                  (index * 0.1).toStringAsFixed(1),
                                  style: const TextStyle(fontSize: 24),
                                ),
                              );
                            },
                            childCount: 10, // 0.0 a 0.9
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
