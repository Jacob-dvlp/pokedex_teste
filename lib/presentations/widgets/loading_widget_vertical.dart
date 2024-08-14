import 'package:flutter/material.dart';

class LoadingWidgetVertical extends StatelessWidget {
  final int index;
  final double? height;
  const LoadingWidgetVertical({
    super.key,
    required this.index,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index) {
        return Container(
          height: 110,
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [BoxShadow(offset: Offset(0.2, 1))],
          ),
          alignment: Alignment.center,
          child: const CircularProgressIndicator(),
        );
      }),
    );
  }
}
