import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/off_all/example_pages/off_all_page1.dart';

class OffAllHomePage extends StatelessWidget {

  const OffAllHomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page - OFF ALL'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage1();
                    },
                    settings: const RouteSettings(name: '/offallPage1')
                  ),
                );
              },
              child: const Text('Go to Page 1 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=> const OffAllPage1());
              },
              child: const Text('Go to Page 1 com GetX'),
            ),
          ],
        ),
      ),
       );
  }
}