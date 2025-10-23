import 'package:flutter/material.dart';
import 'package:flutter_counter_navigation/counter_model.dart';
import 'package:provider/provider.dart';

class PageD extends StatelessWidget {
  const PageD({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a new counter instance for Page D every time
    return ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page D'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Independent Counter',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Consumer<CounterModel>(
                builder: (context, counter, child) {
                  return Text(
                    '${counter.count}',
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
              Consumer<CounterModel>(
                builder: (context, counter, child) {
                  return ElevatedButton(
                    onPressed: () {
                      counter.increment();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                    ),
                    child: const Text(
                      'Increment',
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
