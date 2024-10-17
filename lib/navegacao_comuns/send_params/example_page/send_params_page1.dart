import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    //!Pelo Flutter Nativo
    final paramNative =
        ModalRoute.of(context)?.settings.arguments ?? "Parametro não enviado";
    //!Pelo GetX
    final paramGetX = Get.arguments ?? "Parametro não enviado";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo Parametros - Page 1'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Nativo => $paramNative'),
          Text('GetX =>$paramGetX'),
        ],
      )),
    );
  }
}
