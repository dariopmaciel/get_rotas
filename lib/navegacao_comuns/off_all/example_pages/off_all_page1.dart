import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/off_all/example_pages/off_all_page2.dart';

class OffAllPage1 extends StatelessWidget {

  const OffAllPage1({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Example OFF ALL - Page 1'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage2();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 2 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=> const OffAllPage2());
              },
              child: const Text('Go to Page 2 com GetX'),
            ),
          ],
        ),
      ),
       );
  }
}