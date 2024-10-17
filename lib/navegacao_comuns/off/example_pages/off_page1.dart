import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/off/example_pages/off_page2.dart';

class OffPage1 extends StatelessWidget {
  const OffPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example OFF - Page 1'),
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
                      return const OffPage2();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 2 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const OffPage2());
              },
              child: const Text('Go to Page 2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
