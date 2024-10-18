import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {

  const AwaitParamsPage1({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Await Params PAge 1'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('Retonando paramento por Flutter Nativo');
              },
              child: const Text('Retornando com Params com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'Retornando paramento por GetX');
              },
              child: const Text('Retornando com Params com  GetX'),
            ),
          ],
        ),
      ),
       );
  }
}