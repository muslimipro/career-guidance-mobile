import 'package:flutter/material.dart';

import 'question2.dart';

class Question1Page extends StatefulWidget {
  const Question1Page({Key? key}) : super(key: key);

  @override
  State<Question1Page> createState() => _Question1PageState();
}

class _Question1PageState extends State<Question1Page> {
  List<String> title1 = [
    "Человек",
    "Информация",
    "Финансы",
    "Техника",
    "Искусство",
    "Животные",
    "Растения",
    "Продукты питания",
    "Изделия",
    "Природные ресурсы",
  ];

  List<String> subtitle1 = [
    "дети и взрослые, ученики и студенты, клиенты и пациенты, покупатели и пассажиры, зрители и читатели, сотрудники и т.д.",
    "тексты, формулы, схемы, коды, чертежи, иностранные языки, языки программирования",
    "деньги, акции, фонды, лимиты, кредиты",
    "механизмы, станки, здания, конструкции, приборы, машины",
    "литература, музыка, театр, кино, балет, живопись и т.д.",
    "служебные, дикие, домашние, промысловые",
    "сельскохозяйственные, дикорастущие, декоративные",
    "мясные, рыбные, молочные, кондитерские и хлебобулочные изделия, консервы, плоды, овощи, фрукты",
    "металл, ткани, мех, кожа, дерево, камень, лекарства",
    "земли, леса, горы, водоемы, месторождения",
  ];

  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вопрос 1'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          TextButton(
            onPressed: _selectedIndex == -1
                ? null
                : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Question2Page(selectedIndex1: _selectedIndex),
                      ),
                    );
                  },
            child: Row(
              children: [
                Text('Далее',
                    style: TextStyle(
                        color: _selectedIndex == -1 ? null : Colors.white)),
                Icon(Icons.navigate_next_rounded,
                    color: _selectedIndex == -1 ? null : Colors.white),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'С кем или с чем Вы бы хотели работать? \nКакой объект деятельности Вас привлекает?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Card(
                    child: CheckboxListTile(
                      contentPadding: const EdgeInsets.all(10),
                      selected: index == _selectedIndex,
                      value: index == _selectedIndex,
                      title: Text(title1[index]),
                      subtitle: Text(subtitle1[index]),
                      onChanged: (value) {
                        if (value == null) return;
                        if (value) {
                          setState(() {
                            _selectedIndex = index;
                          });
                        } else {
                          setState(() {
                            _selectedIndex = -1;
                          });
                        }
                      },
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
