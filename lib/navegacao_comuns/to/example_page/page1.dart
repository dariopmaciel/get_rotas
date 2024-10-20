import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/to/example_page/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example TO - Page 1'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Get.to(() => const Page2());
        },
        child: const Text("Page 2"),
      ),
    );
  }
}
