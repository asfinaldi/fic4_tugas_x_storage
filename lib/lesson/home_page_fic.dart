import 'package:flutter/material.dart';
import 'package:flutter_binar_localstorage/lesson/counter_shared_preferences_fic.dart';

class HomePageFic extends StatefulWidget {
  const HomePageFic({super.key});

  @override
  State<HomePageFic> createState() => _HomePageFicState();
}

class _HomePageFicState extends State<HomePageFic> {
  int counterValue = 0;
  void getCounterValue() async {
    counterValue = await CounterSharedPreferencesFic().getDataCounter();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    getCounterValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counterValue',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () async {
                await CounterSharedPreferencesFic()
                    .saveDataCounter(counterValue - 1);
                getCounterValue();
              },
              child: const Text('decrement'),
            ),
            const SizedBox(
              width: 20.0,
            ),
            ElevatedButton(
              onPressed: () async {
                await CounterSharedPreferencesFic()
                    .saveDataCounter(counterValue + 1);
                getCounterValue();
              },
              child: const Text('Imcrement'),
            ),
          ])
        ],
      ),
    );
  }
}
