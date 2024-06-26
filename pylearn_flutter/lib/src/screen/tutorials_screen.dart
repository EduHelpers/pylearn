import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pylearn_flutter/src/provs/stats_prov.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:pylearn_flutter/src/screen/quiz_screen.dart';
import 'package:get/get.dart';

class PythonTutorialApp extends StatefulWidget {
  const PythonTutorialApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PythonTutorialAppState createState() => _PythonTutorialAppState();
}

class _PythonTutorialAppState extends State<PythonTutorialApp> {
  final double _borderRadius = 7.0;

  void displayTutorial(
      BuildContext context, String htmlFilePath, String quizId) {
    WebView webView = WebView(
        initialUrl: 'file:///$htmlFilePath',
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebViewCreated: (WebViewController webViewController) {},
        javascriptMode: JavascriptMode.unrestricted,
        onWebResourceError: (WebResourceError error) {});

    final Size screenSize = MediaQuery.of(context).size;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("Теория"),
          ),
          body: Consumer(builder: (context, ref, _) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: webView,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final f = ref.watch(prov_stats);
                    Get.off(QuizScreen(quizId, f[0].duration, [], 0));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(screenSize.width * 0.02),
                    ),
                    backgroundColor: Colors.green,
                  ),
                  child: Container(
                    width: screenSize.width * 0.25,
                    height: screenSize.height * 0.07,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: screenSize.width * 0.0),
                    child: Text(
                      'Начать квиз',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * 0.035,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Python Tutorial',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: null,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Consumer(builder: (context, ref, _) {
              final stats = ref.watch(prov_stats);
              List<double> progress = [
                stats[0].quiz1,
                stats[0].quiz2,
                stats[0].quiz3,
                stats[0].quiz4,
                stats[0].quiz5,
                stats[0].quiz6,
                stats[0].quiz7,
                stats[0].quiz8,
                stats[0].quiz9,
                stats[0].quiz10,
                stats[0].quiz11,
                stats[0].quiz12,
                stats[0].quiz13,
                stats[0].quiz14,
                stats[0].quiz15,
                stats[0].quiz16,
                stats[0].quiz17,
                stats[0].quiz18,
                stats[0].quiz19,
                stats[0].quiz20,
                stats[0].quiz21,
                stats[0].quiz22,
                stats[0].quiz23,
                stats[0].quiz24,
                stats[0].quiz25
              ];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenSize.height * 0.12),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenSize.width * 0.05,
                        screenSize.height * 0.03, screenSize.width * 0.735, 0),
                    child: Text(
                      'Секция 1',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.01),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenSize.width * 0.05, 0, screenSize.width * 0.1, 0),
                    child: Text(
                      'Основы программирования на Python',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.06,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.015),
                  for (int i = 0; i < tutorialItems.length; i++)
                    Column(
                      children: [
                        SizedBox(height: screenSize.height * 0.02),
                        SizedBox(
                          width: screenSize.width * 0.92,
                          height: screenSize.height * 0.1,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  final path = html_files[tutorialItems[i]];
                                  if (path != null) {
                                    displayTutorial(
                                        context, path, tutorialItems[i]);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.only(
                                      right: screenSize.width * 0.1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(_borderRadius),
                                    side: const BorderSide(
                                      color: Colors.white24,
                                      width: 2,
                                    ),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: screenSize.width * 0.04),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${i + 1 < 10 ? '0' : ''}${i + 1}.',
                                          style: TextStyle(
                                            fontSize: screenSize.width * 0.07,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                        SizedBox(
                                            width: screenSize.width * 0.06),
                                        Text(
                                          tutorialItems[i],
                                          style: TextStyle(
                                            fontSize: screenSize.width * 0.05,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: screenSize.width * 0.04),
                                child: CircularProgressBar(
                                  progressSW: 10,
                                  backSW: 10,
                                  size: 30,
                                  value: progress[i],
                                  merge: true,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                      ],
                    ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  final List<String> tutorialItems = [
    "Ввод и вывод \nданных",
    "Числовые типы \nданных",
    "Строковый тип \nданных",
    "Целочисленная \nарифметика",
    "Вещественная \nарифметика",
    "Модуль math",
    "Строковая \nарифметика",
    "Индексация и срезы",
    "Строковые методы",
    "Условные \nоператоры",
    "Вложенные условные \nоператоры",
    "Split и Join",
    "Цикл for",
    "Цикл while",
    "Операторы break \nи continue",
    "Вложенные циклы",
    "Списки",
    "Словари",
    "Функции \nбез параметров",
    "Функции \nс параметрами",
    "Глобальные \nи локальные\nпеременные",
    "Функции \nс возвратом \nзначения",
    "Пользовательские \nфункции \nвысшего порядка",
    "Основные функции \nвысшего порядка",
    "Работа с файлами"
  ];

  // ignore: non_constant_identifier_names
  final Map<String, String> html_files = {
    "Ввод и вывод \nданных":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/input_and_output.html',
    "Числовые типы \nданных":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/numeric_types.html',
    "Строковый тип \nданных":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/strings.html',
    "Целочисленная \nарифметика":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/integer_arithmetic.html',
    "Вещественная \nарифметика":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/float_arithmetic.html',
    "Модуль math":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/math_module.html',
    "Строковая \nарифметика":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/string_arithmetic.html',
    "Индексация и срезы":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/slicing.html',
    "Строковые методы":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/string_operations.html',
    "Условные \nоператоры":
        '/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/if_conditions.html',
    "Вложенные условные \nоператоры":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/advanced_if_conditions.html",
    "Split и Join":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/split_and_join.html",
    "Цикл for":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/for_cycle.html",
    "Цикл while":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/while_cycle.html",
    "Операторы break \nи continue":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/break_continue.html",
    "Вложенные циклы":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/advanced_cycles.html",
    "Списки":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/lists.html",
    "Словари":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/dicts.html",
    "Функции \nбез параметров":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/functions_without_parameters.html",
    "Функции \nс параметрами":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/functions_with_parameters.html",
    "Глобальные \nи локальные\nпеременные":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/global_and_local_variables.html",
    "Функции \nс возвратом \nзначения":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/functions_with_value_return.html",
    "Пользовательские \nфункции \nвысшего порядка":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/user_high_order_functions.html",
    "Основные функции \nвысшего порядка":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/standard_high_order_functions.html",
    "Работа с файлами":
        "/Users/fakhretdinov/PyLearn/pylearn_flutter/tutorials_html/files.html"
  };
}

class CircularProgressBar extends StatelessWidget {
  final double value;
  final double maxVal;
  final double progressSW;
  final double backSW;
  final double size;
  final bool merge;

  const CircularProgressBar({
    super.key,
    this.value = 0,
    this.maxVal = 1,
    this.progressSW = 10,
    this.backSW = 10,
    this.size = 30,
    this.merge = true,
  });

  @override
  Widget build(BuildContext context) {
    double percentage = (value / maxVal).clamp(0.0, 1.0);
    Color c = Colors.grey;
    if (0 < percentage && percentage < 0.4) {
      c = Colors.red.shade600;
    } else if (percentage < 0.7) {
      c = Colors.yellow.shade700;
    } else {
      c = Colors.green.shade600;
    }
    return Stack(
      children: [
        SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            value: percentage,
            strokeWidth: progressSW,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(c),
          ),
        ),
      ],
    );
  }
}
