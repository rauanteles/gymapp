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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Preencha os dados a seguir:',
              style: TextStyle(fontSize: 20)),
          const Divider(),
          //
          const SizedBox(height: 10),
          const Text('Sexo', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),

          //SEXO
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorScheme.primary,
            ),
            child: DropdownButton<String>(
              underline: const SizedBox(),
              dropdownColor: colorScheme.primary,
              isExpanded: true,
              value: _sexo,
              items: ["Masculino", "Feminino", "Prefiro não dizer"]
                  .map((label) => DropdownMenuItem(
                        value: label,
                        child: Text(
                          label,
                          style: TextStyle(color: colorScheme.onPrimary),
                        ),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _sexo = value;
                });
              },
              hint: Text(
                'Selecione seu sexo',
                style: TextStyle(color: colorScheme.onPrimary),
              ),
            ),
          ),

          //
          const Divider(),

          //NASCIMENTO
          const SizedBox(height: 10),
          const Text('Data de Nascimento', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorScheme.primary,
            ),
            child: TextButton(
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
              child: Text(
                _dataNascimento == null
                    ? 'Selecione a data'
                    : _dataNascimento.toString().split(' ')[0],
                style: TextStyle(color: colorScheme.onPrimary),
              ),
            ),
          ),

          //
          const Divider(),

          //PESO
          const SizedBox(height: 10),
          const Text('Peso', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          _buildCupertinoPicker('o peso', _pesoInteiro, _pesoDecimal, 30, 200,
              (int valueInt, int valueDecimal) {
            setState(() {
              _pesoInteiro = valueInt;
              _pesoDecimal = valueDecimal;
            });
          }),

          //ALTURA
          _buildCupertinoPicker(
              'a altura', _alturaInteiro, _alturaDecimal, 100, 250,
              (int valueInt, int valueDecimal) {
            setState(() {
              _alturaInteiro = valueInt;
              _alturaDecimal = valueDecimal;
            });
          }),

          //META
          _buildCupertinoPicker(
              'a sua meta', _metaPesoInteiro, _metaPesoDecimal, 30, 200,
              (int valueInt, int valueDecimal) {
            setState(() {
              _metaPesoInteiro = valueInt;
              _metaPesoDecimal = valueDecimal;
            });
          }),
        ],
      ),
    );
  }

  Widget _buildCupertinoPicker(
      String controller,
      int selectedValueInt,
      int selectedValueDecimal,
      int minValue,
      int maxValue,
      Function(int, int) onSelectedItemChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => _showPicker(
              context,
              controller,
              selectedValueInt,
              selectedValueDecimal,
              minValue,
              maxValue,
              (valueInt, valueDecimal) =>
                  onSelectedItemChanged(valueInt, valueDecimal)),
          child: AbsorbPointer(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: '$selectedValueInt.$selectedValueDecimal',
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showPicker(
      BuildContext context,
      String? controller,
      int selectedValueInt,
      int selectedValueDecimal,
      int minValue,
      int maxValue,
      Function(int, int) onSelectedItemChanged) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Selecione $controller'),
          content: Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(
                        initialItem: selectedValueInt - minValue),
                    itemExtent: 50,
                    onSelectedItemChanged: (int index) {
                      onSelectedItemChanged(
                          minValue + index, selectedValueDecimal);
                    },
                    children: List<Widget>.generate(
                      maxValue - minValue + 1,
                      (int index) {
                        return Center(
                          child: Text((minValue + index).toString()),
                        );
                      },
                    ),
                  ),
                ),
                const Text('.'),
                Expanded(
                  child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(
                        initialItem: selectedValueDecimal),
                    itemExtent: 50,
                    onSelectedItemChanged: (int index) {
                      onSelectedItemChanged(selectedValueInt, index);
                    },
                    children: List<Widget>.generate(
                      10,
                      (int index) {
                        return Center(
                          child: Text(index.toString()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
