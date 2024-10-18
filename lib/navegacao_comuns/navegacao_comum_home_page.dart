import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/await_params/await_params_home_page.dart';
import 'package:get_rotas/navegacao_comuns/back/back_home_page.dart';
import 'package:get_rotas/navegacao_comuns/off/off_home_page.dart';
import 'package:get_rotas/navegacao_comuns/off_all/off_all_home_page.dart';
import 'package:get_rotas/navegacao_comuns/send_params/send_params_home_page.dart';
import 'package:get_rotas/navegacao_comuns/to/to_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page - Navegação Comum'),
      ),
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(()=>const ToHomePage());
              },
              child: const Text("TO (PUSH do Flutter)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>const BackHomePage());
              },
              child: const Text("Back (POP do Flutter)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>const OffHomePage());
              },
              child: const Text("OFF (pushReplacement do Flutter)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>const OffAllHomePage());
              },
              child: const Text("OffAll (PopAndRemoveUntil do Flutter)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>const SendParamsHomePage());
              },
              child: const Text("Enviando Parametros"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>const AwaitParamsHomePage());
              },
              child: const Text("Aguardando Retorno de Parametros"),
            ),
          ],
        ),
      ),
    );
  }
}
