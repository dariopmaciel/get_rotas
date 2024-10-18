import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/await_params/example_page/await_params_page1.dart';

class AwaitParamsHomePage extends StatelessWidget {

  const AwaitParamsHomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Await Params - Home Page'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const AwaitParamsPage1();
                    },
                  ),
                );
                debugPrint(result);
              },
              child: const Text('Go to Page com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await Get.to(()=> const AwaitParamsPage1());
                debugPrint(result);
              },
              child: const Text('Go to Page com GetX'),
            ),
          ],
        ),
      ),
       );
  }
}
