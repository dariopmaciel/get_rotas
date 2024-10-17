import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comuns/off_all/example_pages/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example OFF ALL - Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage3();
                    },
                  ),
                  (route) => false,
                );
              },
              child: const Text('Go to Page 3 EXCLUINDO toda a arvore de navegação com no Flutter Nativo'),
            ),
            const SizedBox(height: 20),
             ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage3();
                    },
                  ),
                  ModalRoute.withName('/OffAllHomePage'), //! não mata a pagina que eu defino definindo rota final de retorno 
                );
              },
              child: const Text('Go to Page 3 EXCLUINDO parte da arvore de navegação com no Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => const OffAllPage3());
                Get.offAll(()=>const OffAllPage3());
              },
              child: const Text('Go to Page 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
