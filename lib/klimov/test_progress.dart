import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;

  const QuestionIndicatorWidget(
      {Key? key, required this.currentPage, required this.length})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Прогресс'),
              Text('$currentPage / $length'),
            ],
          ),
          const SizedBox(height: 16),
          ProgressIndicatorWidget(
            value: currentPage / length,
          ),
        ],
      ),
    );
  }
}

class ProgressIndicatorWidget extends StatelessWidget {
  final double value;
  const ProgressIndicatorWidget({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Colors.grey[300],
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
      value: value,
    );
  }
}
