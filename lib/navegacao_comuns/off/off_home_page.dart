import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/off/example_pages/off_page1.dart';

class OffHomePage extends StatelessWidget {

  const OffHomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page OFF'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffPage1();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 1 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=> const OffPage1());
              },
              child: const Text('Go to Page 1 com GetX'),
            ),
          ],
        ),
      ),
       );
  }
}