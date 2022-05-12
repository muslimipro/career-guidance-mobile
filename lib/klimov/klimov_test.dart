import 'package:flutter/material.dart';

import 'question.dart';
import 'result_page.dart';
import 'test_progress.dart';

class KlimovTestPage extends StatefulWidget {
  const KlimovTestPage({Key? key}) : super(key: key);

  @override
  State<KlimovTestPage> createState() => _KlimovTestPageState();
}

class _KlimovTestPageState extends State<KlimovTestPage> {
  final pageController = PageController();
  List<String> answers = [];

  void nextPage() {
    if (answers.length < 20) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  void onSelected(String value) {
    setState(() {
      answers.add('${answers.length + 1}$value');
    });
    nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Image.asset(
          'assets/nurmakov_tr.png',
          fit: BoxFit.fill,
          // height: 40,
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          const SizedBox(height: 20),
          QuestionIndicatorWidget(
            currentPage: answers.length,
            length: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Сізге екі мүмкіндіктің біреуін ғана таңдау қажет болса, қайсысын қалар едіңіз. Тек біреуін ғана таңдаңыз не «А» жауабын не «Б» жауабын',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: <Widget>[
                QuestionWidget(
                  options: const [
                    'A. Жануарларды бағып, күту. Ухаживать за животными',
                    'Б. Машиналар мен құрал-саймандарға қызмет көрсету. Обслуживать машины, приборы.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Ауруларға көмектесу. Помогать больным людям, лечить их.',
                    'Б. Есептеу машиналарына кестелер, сызбалар, бағдарламалар жасау. Составлять таблицы, схемы, программы для вычислительных машин.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Кітап, плакат, көркем ашық хаттарды безендіру, сапасын бақылау. Следить за качеством книжных иллюстраций, плакатов, художественных открыток, грампластинок.',
                    'Б. Өсімдіктердің жай-күйін, өсіп-дамуын қадағалау. Следить за состоянием, развитием растений',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Материалдарды өңдеу (ағаш, мата, металл т.б) . обрабатывать материалы (дерево, ткань и т.п)',
                    'Б. Тауарларды тұтынушыға жеткізу, жарнамалау, сату. Доводить товары до потребителя (рекомендовать, продавать)',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Ғылыми-көпшілік кітаптарды, мақалаларды талқылау. Обсуждать научно-популярные книги, статьи.',
                    'Б. Көркем кітаптарды талдау (концерт, пьесалар). Обсуждать художественные книги.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Малдардың төлдерін күту, өсіру. Выращивать молодняк (животных какой-либо породы)',
                    'Б. Жолдастарды жаттықтыру бір іс-әрекетті орындауға көмектесу (оқу, спорт). Тренировать ровесников в выполнении каких-либо действий (трудовых, учебных, спортивных)',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Суреттерден, бейнелерден көшірме жасау. Копировать рисунки, изображения (или настраивать музыкальные инструменты)',
                    'Б. Жүк тартатын, түсіретін құралын басқару. Управлять каким-либо грузовым (подъемным или транспортным) средством-подъемным краном, трактором, тепловозом и др.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Адамдарға керекті мәліметтер беру, түсіндіру. Сообщать, разъяснять людям нужные им сведения (в справочном бюро, на экскурсии)',
                    'Б. Көрмелер, витриналар көркемдеу, рәсімдеу. Оформлять выставки, витрины или участвовать в подготовке пьес, концертов.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Нәрселер, бұйымдар тұрғын үй жөндеу (киім-кешек, техника). Ремонтировать вещи, изделия (одежду, технику), жилище',
                    'Б. Мәтіндегі, кестелердегі, суреттегі қателерді тауып, түзету. Искать и исправлять ошибки в текстах, табллицах, рисунках.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Жануарларды емдеу. Лечить животных.',
                    'Б. Есептеу, есептеп шығаруды орындау. Выполнять вычисления, рассеты',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Өсімдіктердің жаңа сорттарын шығару. Выводить новые сорта растений.',
                    'Б. Өнеркәсіптік бұйымдардың жаңа түрлерін конструкциялау, жобалау. Консультировать, проектировать новые виды промышленных изделий (машины, одежду, дома) продукты питания и т.п',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Адамдар арасындағы дау-дамайды талқылап, түсіндіріп, сендіріп, жазалау, көтермелеу. Разбирать споры, ссоры между людьми, убеждать разъяснять, наказывать, поощрять.',
                    'Б. Сызбалар, кестелерді талқылау. Разбираться в чертежах, схемах, таблицах (проверять, уточнять, приводить в порядок)',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Көркемөнерпаздар үйірмесінің жұмысын бақылау, тексеру. Наблюдать, изучать работу кружков художественной самодеятельности.',
                    'Б. Микробтардың өмірін бақылап, зерттеу. Наблюдать, изучать жизнь микробов',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Медицина аспаптарын, аппараттарын жөндеп, қызмет көрсету. Обслуживать, налаживать медицинские приборы, аппараты.',
                    'Б. Жараланған, күйген адамдарға, медициналық көмек көрсету. Оказывать людям медицинскую помощь при ранениях, ушибах, ожогах и т.п',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Көрген, елестеген, қиялдағы оқиғаларды көркемдеп шығару. Составлять точные описания или отчеты о наблюдаемых явлениях, событиях, измеряемых объектах и др',
                    'Б. Көрген-білген оқиғалар мен құбылыстарды жазып беру, бақылаған құбылыстан есеп жазу, өлшеген объектілер есептеу. Художественно описывать, изображать события (наблюдаемые или представляемые)',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Аурухана лабороториясында анализ жасау. Делать лабораторные анализы в больнице.',
                    'Б. Ауруларды қабылдау, әңгімелесу, ем-дәрілер жазып беру. Принимать, осматривать больных, беседовать с ними, назначать лечение.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Бөлменің, үйдің ішін, бұйымдарды бояу, сурет салу. Красить или расписывать помещение, поверхность изделий.',
                    'Б. Машиналар мен құрал-сайманды құрастыру, жинау. Осуществлять монтаж заданий или сборку машин, приборов.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Құрбы-құрдастарды, кішкене балаларды театрға, мұражайға апару, экскурсияға, туристік жорықтарға шығару. Организовывать культпоходы сверстников или младших (экскурсии, туристические походы и т.п)',
                    'Б. Сахнада ойнау, концерттерге қатысу. Играть на сцене, принимать участие в концертах.',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Сызбаларға қарап машиналардың, киім-кешек бөлшектерін жасау, үй салу. Изготовлять по чертежам детали, изделия (машины, одежду) строить здания',
                    'Б. Сызумен айналысу, сызбалар, карта көшірмелерін жасау. Заниматься черчением, копировать чертежи, карты',
                  ],
                  onSelected: onSelected,
                ),
                QuestionWidget(
                  options: const [
                    'A. Өсімдіктер ауруларымен, бау-бақшаның, орман жауларымен, зиянды жәндіктермен күресу. Вести борьбу с болезнями растений, с вредителями леса, сада.',
                    'Б. Клавишті машиналармен жұмыс жасау. Работать на клавишных машинах (пишущей машинке, телетайпе, наборной мамашине идр)',
                  ],
                  onSelected: onSelected,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (answers.length == 20)
                Expanded(
                  child: TextButton(
                    child: const Text('Тестілеуді аяқтау',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF06224b)), //Color(0xFFe53935)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(200, 48)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(answers: answers),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
