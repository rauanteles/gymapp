import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage1 extends StatefulWidget {
  const SignupPage1({super.key});

  @override
  State<SignupPage1> createState() => _SignupPage1State();
}

class _SignupPage1State extends State<SignupPage1> {
  //var
  String? _selectedGender;
  DateTime? _selectedDate;
  int _selectedWeightInt = 70;
  int _selectedWeightDecimal = 0;
  int _selectedHeight = 160;
  int _goalWeightInt = 70;
  int _goalWeightDecimal = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            'Preencha os dados a seguir',
            style: TextStyle(fontSize: 20),
          ),
          const Divider(),

          //*SEXO

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 20,
            child: Text(
              'Sexo',
              textAlign: TextAlign.start,
              style: TextStyle(color: colorScheme.primary, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme.primary,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
                        child: DropdownButton<String>(
                          iconEnabledColor: colorScheme.onPrimary,
                          underline: const SizedBox(),
                          dropdownColor: colorScheme.primary,
                          isExpanded: true,
                          value: _selectedGender,
                          items: ["Masculino", "Feminino", "Prefiro não dizer"]
                              .map((label) => DropdownMenuItem(
                                    value: label,
                                    child: Text(
                                      label,
                                      style: TextStyle(
                                          color: colorScheme.onPrimary,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                          hint: Text(
                            'Selecione seu sexo',
                            style: TextStyle(
                                color: colorScheme.onPrimary, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(thickness: 1, indent: 15, endIndent: 15),
          //*NASCIMENTO
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 20,
            child: Text(
              'Data de nascimento',
              textAlign: TextAlign.start,
              style: TextStyle(color: colorScheme.primary, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme.primary,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => _selectDate(context),
                          child: AbsorbPointer(
                            child: _selectedDate == null
                                ? Text(
                                    'Selecione a data de nascimento',
                                    style: TextStyle(
                                        color: colorScheme.onPrimary,
                                        fontSize: 20),
                                  )
                                : Text(
                                    '${_selectedDate?.day}/${_selectedDate?.month}/${_selectedDate?.year}',
                                    style: TextStyle(
                                        color: colorScheme.onPrimary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.calendar_month,
                        color: colorScheme.onPrimary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(thickness: 1, indent: 15, endIndent: 15),
          //*PESO
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 20,
            child: Text(
              'Peso atual',
              textAlign: TextAlign.start,
              style: TextStyle(color: colorScheme.primary, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme.primary,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _buildCupertinoPicker(
                              'Selecione seu peso',
                              _selectedWeightInt,
                              _selectedWeightDecimal,
                              40,
                              250, (
                            valueInt,
                            valueDecimal,
                          ) {
                            setState(() {
                              _selectedWeightInt = valueInt;
                              _selectedWeightDecimal = valueDecimal;
                            });
                          })),
                    ),
                    Text(
                      '$_selectedWeightInt.$_selectedWeightDecimal',
                      style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'KG',
                      style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_drop_down_circle,
                        color: colorScheme.onPrimary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(thickness: 1, indent: 15, endIndent: 15),
          //*ALTURA
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 20,
            child: Text(
              'Altura',
              textAlign: TextAlign.start,
              style: TextStyle(color: colorScheme.primary, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme.primary,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _buildHeightPicker(
                              'Selecione sua altura', _selectedHeight, 100, 250,
                              (value) {
                            setState(() {
                              _selectedHeight = value;
                            });
                          })),
                    ),
                    Text(
                      '$_selectedHeight',
                      style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'CM',
                      style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_drop_down_circle,
                        color: colorScheme.onPrimary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(thickness: 1, indent: 15, endIndent: 15),
          //*META
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 20,
            child: Text(
              'Em que peso deseja chegar? ',
              textAlign: TextAlign.start,
              style: TextStyle(color: colorScheme.primary, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorScheme.primary,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildCupertinoPicker(
                          'Selecione sua meta',
                          _goalWeightInt,
                          _goalWeightDecimal,
                          40,
                          200,
                          (valueInt, valueDecimal) {
                            setState(() {
                              _goalWeightInt = valueInt;
                              _goalWeightDecimal = valueDecimal;
                            });
                          },
                        ),
                      ),
                    ),
                    Text(
                      '$_goalWeightInt.$_goalWeightDecimal',
                      style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'KG',
                      style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_drop_down_circle,
                        color: colorScheme.onPrimary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'PRÓXIMO',
                style: TextStyle(color: colorScheme.onPrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //FUNÇÃO WHEEL
  Widget _buildCupertinoPicker(
      String label,
      int selectedValueInt,
      int selectedValueDecimal,
      int minValue,
      int maxValue,
      Function(int, int) onSelectedItemChanged) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        _showPicker(
            context,
            label,
            selectedValueInt,
            selectedValueDecimal,
            minValue,
            maxValue,
            (valueInt, valueDecimal) =>
                onSelectedItemChanged(valueInt, valueDecimal));
      },
      child:
          // Text(
          //     '$selectedValueInt.$selectedValueDecimal',
          //     style: TextStyle(
          //         color: Theme.of(context).colorScheme.onPrimary,
          //         fontSize: 20,
          //         fontWeight: FontWeight.bold),
          //   ),
          Text(
        label,
        style: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 20,
        ),
      ),
    );
  }

//FUNÇÃO WHEEL ALTURA
  Widget _buildHeightPicker(
    String label,
    int selectedValue,
    int minValue,
    int maxValue,
    Function(int) onSelectedItemChanged,
  ) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        _showHeightPicker(
          context,
          label,
          selectedValue,
          minValue,
          maxValue,
          (value) => onSelectedItemChanged(value),
        );
      },
      child: AbsorbPointer(
        child:
            //  Text(
            //     '$selectedValue',
            //     style: TextStyle(
            //         color: Theme.of(context).colorScheme.onPrimary,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold),
            //   ),
            Text(
          label,
          style: TextStyle(color: colorScheme.onPrimary, fontSize: 20),
        ),
      ),
    );
  }

//MODAL WHEEL
  void _showPicker(
      BuildContext context,
      String label,
      int selectedValueInt,
      int selectedValueDecimal,
      int minValue,
      int maxValue,
      Function(int, int) onSelectedItemChanged) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Selecione $label'),
          content: SizedBox(
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

//MODAL WHEEL ALTURA
  void _showHeightPicker(
    BuildContext context,
    String label,
    int selectedValue,
    int minValue,
    int maxValue,
    Function(int) onSelectedItemChanged,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Selecione $label'),
          content: SizedBox(
            height: 200,
            child: CupertinoPicker(
              scrollController: FixedExtentScrollController(
                  initialItem: selectedValue - minValue),
              itemExtent: 50,
              onSelectedItemChanged: (int index) {
                onSelectedItemChanged(minValue + index);
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

//DATA
  Future _selectDate(BuildContext context) async {
    // Text('${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}');
    final DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2101));
    if (dateTime != null) {
      setState(() {
        _selectedDate = dateTime;
      });
    }
  }
}
