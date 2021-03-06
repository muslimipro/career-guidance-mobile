import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final int selectedIndex1;
  final int selectedIndex2;
  const ResultPage(
      {Key? key, required this.selectedIndex1, required this.selectedIndex2})
      : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Map<String, String> answers = {
    "00": "Менеджер по персоналу, Администратор",
    "10": "Маркетолог, Диспетчер, Статистик",
    "20": "Экономист, Аудитор, Аналитик",
    "30": "Технолог, Авиа-диспетчер, Инженер",
    "40": "Режиссер, Продюсер, Дирижер",
    "50": "Кинолог, Зоотехник, Генный инженер",
    "60": "Агроном, Фермер, Селекционер",
    "70": "Товаровед, Менеджер по продажам",
    "80": "Менеджер по продажам, Логистик, Товаровед",
    "90": "Энергетик, Инженер по кадастру",
    "01": "Продавец, Парикмахер, Официант",
    "11": "Переводчик, Экскурсовод, Библиотекарь",
    "21": "Бухгалтер, Кассир, Инкассатор",
    "31": "Водитель, Слесарь, Теле-радио-мастер",
    "41": "Гример, Костюмер, Парикмахер",
    "51": "Животновод, Птицевод, Скотовод",
    "61": "Овощевод, Полевод, Садовод",
    "71": "Экспедитор, Упаковщик, Продавец",
    "81": "Продавец, Упаковщик, Экспедитор",
    "91": "Егерь, Лесник, Мелиоратор",
    "02": "Учитель, Воспитатель, Социальный педагог",
    "12": "Преподаватель, Ведущий теле и радио программ",
    "22": "Консультант, Преподаватель экономики",
    "32": "Мастер производственного обучения",
    "42": "Хореограф, Преподаватель музыки или живописи",
    "52": "Дрессировщик, Кинолог, Жокей",
    "62": "Преподаватель биологии, Эколог",
    "72": "Мастер производственного обучения",
    "82": "Мастер производственного обучения",
    "92": "Преподаватель, Эколог",
    "03": "Врач, Медсестра, Тренер",
    "13": "Рентгенолог, Врач (компьютерная диагностика)",
    "23": "Антикризисный управляющий, Страховой агент",
    "33": "Мастер авто сервиса, Физиотерапевт",
    "43": "Пластический хирург, Косметолог, Реставратор",
    "53": "Ветеринар, Лаборант питомника, Зоопсихолог",
    "63": "Фитотерапевт, Гомеопат, Травник",
    "73": "Диетолог, Косметолог, Санитарный инспектор",
    "83": "Фармацевт, Ортопед, Протезист",
    "93": "Бальнеолог, Эпидемиолог, Лаборант",
    "04": "Режиссер, Артист, Музыкант",
    "14": "Программист, Редактор, Web-дизайнер",
    "24": "Менеджер по проектам, Продюсер",
    "34": "Коструктор, Дизайнер, Художник",
    "44": "Художник, Писатель, Композитор",
    "54": "Дрессировщик, Служитель цирка",
    "64": "Фитодизайнер, Озеленитель, Флорист",
    "74": "Кондитер, Повар, Кулинар",
    "84": "Резчик по дереву, Витражист, Скульптор",
    "94": "Архитектор, Мастерцветово, Декоратор",
    "05": "Мастер производственного обучения",
    "15": "Корректор, Журналист, Полиграфист",
    "25": "Экономист, Бухгалтер, Кассир",
    "35": "Станочник, Аппаратчик, Машинист",
    "45": "Ювелир, График, Керамист",
    "55": "Животновод, Птицевод, Рыбовод",
    "65": "Овощевод, Цветовод, Садовод",
    "75": "Технолог, Калькулятор, Повар",
    "85": "Швея, Кузнец, Столяр",
    "95": "Шахтер, Нефтяник, Техник",
    "06": "Стилист, Пластический хирург",
    "16": "Картограф, Программист, Web-мастер",
    "26": "Плановик, Менеджер по проектам",
    "36": "Инженер-конструктор, Телемастер",
    "46": "Архитектор, Дизайнер, Режиссер",
    "56": "Генный инженер, Виварщик, Селекционер",
    "66": "Селекционер, Ландшафтист, Флорист",
    "76": "Инженер-технолог, Кулинар",
    "86": "Модельер, Закройщик, Обувщик",
    "96": "Дизайнер ландшафта, Инженер",
    "07": "Психолог, Следователь, Лаборант",
    "17": "Социолог, Математик, Аналитик",
    "27": "Аудитор, Экономист, Аналитик",
    "37": "Испытатель (техники), Хронометражист",
    "47": "Искусствовед, Критик, Журналист",
    "57": "Зоопсихолог, Орнитолог, Ихтиолог",
    "67": "Биолог, Ботаник, Микробиолог",
    "77": "Лаборант, Дегустатор, Санитарный врач",
    "87": "Эргономик, Контролер, Лаборант",
    "97": "Биолог, Метеоролог, Агроном",
    "08": "Милиционер, Военный, Адвокат",
    "18": "Арбитр, Юрист, Патентовед",
    "28": "Инкассатор, Охранник, Страховой агент",
    "38": "Пожарный, Сапер, Инженер",
    "48": "Постановщик трюков, Каскадер",
    "58": "Егерь, Лесничий, Инспектор рыбнадзора",
    "68": "Эколог, Микробиолог, Миколог",
    "78": "Санитарный врач, Лаборант, Микробиолог",
    "88": "Сторож, Инспектор",
    "98": "Охрана ресурсов, Инженер по ТБ",
    "09": "Таможенник, Прокурор, Табельщик",
    "19": "Корректор, Системный программист",
    "29": "Ревизор, Налоговый полицейский",
    "39": "Техник-контролер, Обходчик ЖД",
    "49": "Выпускающий редактор, Консультант",
    "59": "Консультант, Эксперт по экстерьеру",
    "69": "Селекционер, Агроном, Лаборант",
    "79": "Дегустатор лаборант, Санитарный врач",
    "89": "Оценщик, Контролер ОТК, Приемщик",
    "99": "Радиолог, Почвовед, Эксперт",
  };

  String description =
      "Профессии, находящиеся на пересечении «сферы труда» и «вида труда», являются (предположительно) наиболее близкими интересам и склонностям опрашиваемого.";
  @override
  Widget build(BuildContext context) {
    final key = '${widget.selectedIndex1}${widget.selectedIndex2}';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Результат'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/image5_tr.png', fit: BoxFit.fitWidth),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    shadowColor:
                        const Color(0xFF06224b), //Colors.blue, //Colors.red,
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            answers[key]!.replaceAll(',', '\n'),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            '*$description',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -45,
                    height: 50,
                    left: 0,
                    right: 0,
                    child: Image.asset('assets/image6.png', height: 50),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
