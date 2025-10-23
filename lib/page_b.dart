import 'package:flutter/material.dart';
import 'package:flutter_counter_navigation/counter_model.dart';
import 'package:flutter_counter_navigation/page_c.dart';
import 'package:flutter_counter_navigation/service_locator.dart';
import 'package:provider/provider.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ServiceLocator().getSharedCounter(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page B'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Shared Counter',
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
              ElevatedButton(
                onPressed: () {
                  ServiceLocator().getSharedCounter().increment();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
                child: const Text('Increment', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PageC()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
                child: const Text(
                  'Go to Page C',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
