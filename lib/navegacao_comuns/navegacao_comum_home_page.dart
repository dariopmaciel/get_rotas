import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/to/to_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Navegação Comum'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const ToHomePage());
              },
              child: const Text("TO (PUSH do Flutter)"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
