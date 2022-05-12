import 'dart:math';

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final List<String> answers;
  const ResultPage({Key? key, required this.answers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String tabigatTitle =
        'Адам-табиғат. Мұнда тірі ағзалар, өсімдіктер, жануарлар мен биологиялық үрдістер еңбек объектісі болады.';
    const String tabigatDescription =
        'Бұған агрономия, жеміс, көкөніс және жүзім шаруашылығы, фермерлік іс, агроэкология, агрохимия және өсімдіктерді қорғау, өсімдік шаруашылығының селекциясы және биотехнологиясы, мал шаруашылығының селекциясы және биотехнологиясы, аңшылық кәсіп пен аң шаруашылығы, ихтиология, өнеркәсіптік балық аулау және балық шаруашылығы, су ресурстары және суды пайдалану, жерді мелиорациялау, рекультивация және қорғау, ауыл шаруашылығы өндірісін механикаландыру, орман және парк шаруашылығы, органикалық заттар мен материалдардың химиялық технологиясы, бейорганикалық заттардың химиялық технологиясы, химиялық электротехнология және плазмахимиясы, фармацевтикалық өндірістің химиясы мен технологиясы, астық өңдеу және наубайхана өнімдері технологиясы, кондитер және қантты тағамдар технологиясы, консервілер, тағамдық концентраттар және субтропиктік тағамдар технологиясы, ашыту өндірістері және шарап жасау технологиясы, балық тағамдары мен май технологиясы т.б. мамандықтар кіреді.';
    const String tehnikaTitle =
        'Адам-техника. Мұнда техникалық жүйелер, машиналар, аппараттар мен қондырғылар, материалдар мен энергия (қуат) еңбек объектісі болады.';
    const String tehnikaDescription =
        'Бұған байланыс желілері мен жалғау жүйелері, көпарналы телекоммуникациялық жүйелер, радиотехника, радиобайланыс, радиохабар тарату және теледидар, жылжымалы байланыс жүйелері мен құралдары, радиобайланыс және радионавигация, темір жолдар салу, жол және жол шаруашылығы, автомобиль жолдары мен аэродромдар салу, басқару мен ақпаратты өңдеудің компьютерлік жүйелері, автоматтандырылған жобалау жүйелері, ақпаратты қорғауды ұйымдастыру және оның технологиясы, есептеуіш техникасы мен желілерді бағдарламалық және ақпараттық қамтамасыз ету, басқару жүйелерін автоматтандыру және информатизациялау, технологиялық үрдістер мен өндірістерді автоматтандыру, телемеханика және байланыс, метал кескіш станоктар мен саймандар, жылу электор станциялары, мұнай және газ өнеркәсіптерінің машиналары мен жабдықтары және т.б мамандықтар кіреді.';
    const String adamTitle =
        'Адам-адам. Адамдар, топтар, ұжымдар еңбек объектісі болады.';
    const String adamDescription =
        'Бұған емдеу ісі, педиатрия, медициналық-профилактикалық іс, стоматология, шығыс медицинасы, медициналық-биологиялық іс, фармация, зертханалық диагностика, физика және информатика мұғалімі, химия және биология, тарих, құқық пен экономика негіздері, тарих, география, қазақ тілі мен әдебиет, орыс тілі мен әдебиет, дене шынықтыру және спорт, бастапқы әскери дайындық, бастауыш сынып, музыка еңбек технологиясы, кәсіпкерлік мұғалім, педагог-психолог, әлеуметтік педагог, педагог-дефектолог, анықтаушы (дознаватель), эксперт-криминалист, заңгер, журналист, кітапханашы, психолог, сатушы, тігінші, шаштараз, визажист, көпшілікпен байланысу жөніндегі маманы, социолог, гид, бармен, фотосуретші, кадрлер жөніндегі менеджер, және т.б мамандықтар кіреді.';
    const String sistemyTitle =
        'Адам-белгілеу жүйесі. Олардың еңбек объектісі: шартты белгілер, шифрлар, кодтар, кестелер.';
    const String sistemyDescription =
        'Бұған экономикалық теория, статистика, маркетинг және коммерция, қаржы және несие, бухгалтерлік есеп және аудит, экономикадағы математикалық әдістер, кәсіпорындағы экономика және менеджмент, басқару мен ақпаратты өңдеудің компьтерлік жүйелері, корректор, бағдарламашы, қаржы агенті, биржа агенті, кеден ісі және т.б мамандықтар кіреді.';
    const String beineTitle =
        'Адам-көркем бейне. Бұл адамдар еңбек объектісі көркемдік бейнелер жасау, олардың ролі, элементтері мен ерекшеліктері.';
    const String beineDescription =
        'Бұған музыкатану, аспапта орындаушылық, режиссер, хореография, сценография, композиция, операторлық өнер, кескіндеме, графика, мүсін өнері, өнертану, көркемдік өнер, дизайн, ән өнері, дирижерлау, актерлік өнер, сәулет өнері, дәстүрлі музыкалық өнер, эстрада өнері, зергер, суретші және т.б мамандықтар кіреді.';

    final List<String> tabigat = [
      '1a',
      '3b',
      '6a',
      '10a',
      '11a',
      '13b',
      '16a',
      '20a'
    ];
    final List<String> tehnika = [
      '1b',
      '4a',
      '7b',
      '9a',
      '11b',
      '14a',
      '17b',
      '19a'
    ];
    final List<String> adam = [
      '2a',
      '4b',
      '6b',
      '8a',
      '12a',
      '14b',
      '16b',
      '18a'
    ];
    final List<String> sistemy = [
      '2b',
      '5a',
      '9b',
      '10b',
      '12b',
      '15a',
      '19b',
      '20b'
    ];
    final List<String> beine = [
      '3a',
      '5b',
      '7a',
      '8b',
      '13a',
      '15b',
      '17a',
      '18b'
    ];

    int tabigatCount = 0;
    int tehnikaCount = 0;
    int adamCount = 0;
    int sistemyCount = 0;
    int beineCount = 0;

    for (int i = 0; i < tabigat.length; i++) {
      if (answers.contains(tabigat[i])) tabigatCount++;
      if (answers.contains(tehnika[i])) tehnikaCount++;
      if (answers.contains(adam[i])) adamCount++;
      if (answers.contains(sistemy[i])) sistemyCount++;
      if (answers.contains(beine[i])) beineCount++;
    }

    int maxValue = [
      tabigatCount,
      tehnikaCount,
      adamCount,
      sistemyCount,
      beineCount
    ].reduce(max);

    String answerTitle = '';
    String answerDescription = '';

    if (maxValue == tabigatCount) {
      answerTitle = tabigatTitle;
      answerDescription = tabigatDescription;
    }
    if (maxValue == tehnikaCount) {
      answerTitle = tehnikaTitle;
      answerDescription = tehnikaDescription;
    }
    if (maxValue == adamCount) {
      answerTitle = adamTitle;
      answerDescription = adamDescription;
    }
    if (maxValue == sistemyCount) {
      answerTitle = sistemyTitle;
      answerDescription = sistemyDescription;
    }
    if (maxValue == beineCount) {
      answerTitle = beineTitle;
      answerDescription = beineDescription;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Жауабы'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text('Интерпретация: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 16),
            Text(answerTitle,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 16)),
            const SizedBox(height: 16),
            Center(
              child: Text(
                answerDescription,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
