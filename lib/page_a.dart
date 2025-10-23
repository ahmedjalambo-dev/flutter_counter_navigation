import 'package:flutter/material.dart';
import 'package:flutter_counter_navigation/page_b.dart';
import 'package:flutter_counter_navigation/service_locator.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page A'), backgroundColor: Colors.blue),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Reset shared counter every time we navigate from A to B
            ServiceLocator().resetSharedCounter();

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageB()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: const Text('Go to Page B', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
