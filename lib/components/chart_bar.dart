import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentage;

  ChartBar({
    required this.label,
    required this.value,
    required this.percentage,
  });

  // This widget controls the percentage bars in the chart
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text(value.toStringAsFixed(2)),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.05),
            SizedBox(
              height: constraints.maxHeight * 0.6,
              width: 10,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: percentage,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.05),
            SizedBox(
              height: constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text(label),
              ),
            ),
          ],
        );
      },
    );
  }
}
