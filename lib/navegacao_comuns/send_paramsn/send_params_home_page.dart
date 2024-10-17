import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/send_paramsn/example_page/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {

  const SendParamsHomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Enviando Params'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SendParamsPage1();
                    },
                    settings:const RouteSettings(arguments: 'Parametro pelo Flutter Nativo')
                  ),
                );
              },
              child: const Text('Go to Page com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=> const SendParamsPage1(), arguments: 'Parametros pelo GetX');
              },
              child: const Text('Go to Page com GetX'),
            ),
          ],
        ),
      ),
       );
  }
}