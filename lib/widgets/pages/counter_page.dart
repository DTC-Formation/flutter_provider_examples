import 'package:flutter/material.dart';
import 'package:learn_provider/model/count_type.dart';
import 'package:learn_provider/widgets/simple_widgets/count_button.dart';
import 'package:learn_provider/widgets/simple_widgets/counter_text.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Text(
          'Votre numéro choisi est le:',
        ),
        const CounterText(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CountButton(type: CountType.decrement),
            CountButton(type: CountType.reset),
            CountButton(type: CountType.increment)
          ],
        )
      ],
    );
  }
}
