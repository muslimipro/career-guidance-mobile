import 'package:flutter/material.dart';

import 'result.dart';

class Question2Page extends StatefulWidget {
  final int selectedIndex1;
  const Question2Page({Key? key, required this.selectedIndex1})
      : super(key: key);

  @override
  State<Question2Page> createState() => _Question2PageState();
}

class _Question2PageState extends State<Question2Page> {
  List<String> title2 = [
    "Управление",
    "Обслуживание",
    "Образование",
    "Оздоровление",
    "Творчество",
    "Производство",
    "Конструирование",
    "Исследование",
    "Защита",
    "Контроль"
  ];

  List<String> subtitle2 = [
    "руководство чьей-то деятельностью",
    "удовлетворение чьих-то потребностей",
    "воспитание, обучение, формирование личности",
    "избавление от болезней и их предупреждение",
    "создание оригинальных произведений искусства",
    "изготовление продукции",
    "проектирование деталей и объектов",
    "научное изучение чего-либо или кого-либо",
    "охрана от враждебных действий",
    "проверка и наблюдение"
  ];
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вопрос 2'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          TextButton(
            onPressed: _selectedIndex == -1
                ? null
                : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          selectedIndex1: widget.selectedIndex1,
                          selectedIndex2: _selectedIndex,
                        ),
                      ),
                    );
                  },
            child: Row(
              children: [
                Text('Завершить',
                    style: TextStyle(
                        color: _selectedIndex == -1 ? null : Colors.white)),
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
              'Чем бы Вы хотели заниматься? \nКакой вид деятельности Вас привлекает?',
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
                      title: Text(title2[index]),
                      subtitle: Text(subtitle2[index]),
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
