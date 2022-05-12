import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  final List<String> options;
  final ValueChanged<String> onSelected;
  const QuestionWidget(
      {Key? key, required this.options, required this.onSelected})
      : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          for (int i = 0; i < widget.options.length; i++)
            AnswerWidget(
              title: widget.options[i],
              disabled: indexSelected != -1,
              isSelected: indexSelected == i,
              onTap: () {
                indexSelected = i;
                widget.onSelected(i == 0 ? 'a' : 'b');
                setState(() {});
              },
            ),
        ],
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final bool disabled;
  final VoidCallback onTap;
  const AnswerWidget({
    Key? key,
    required this.title,
    this.isSelected = false,
    this.disabled = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: IgnorePointer(
        ignoring: disabled,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? Colors.green[100] : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(
                BorderSide(color: isSelected ? Colors.green : Colors.grey),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: isSelected ? Colors.green[800] : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(500),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: isSelected ? Colors.green : Colors.grey,
                      ),
                    ),
                  ),
                  child: isSelected
                      ? const Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
