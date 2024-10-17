import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/to/page1.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To (PUSH do Flutter)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Page1();
                    },
                  ),
                );
              },
              child: const Text('Go to Page com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=> const Page1());
              },
              child: const Text('Go to Page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
