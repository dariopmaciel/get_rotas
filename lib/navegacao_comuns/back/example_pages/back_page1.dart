import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackPage1 extends StatelessWidget {
  const BackPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example BACK - Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Voltar com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
             ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Voltar com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
