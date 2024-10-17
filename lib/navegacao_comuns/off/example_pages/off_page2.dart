import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/off/example_pages/off_page3.dart';

class OffPage2 extends StatelessWidget {
  const OffPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example OFF - Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffPage3();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 3 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.off(()=>const OffPage3());
              },
              child: const Text('Go to Page 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
