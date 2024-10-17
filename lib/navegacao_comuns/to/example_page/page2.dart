import 'package:flutter/material.dart';
import 'package:get_rotas/navegacao_comuns/to/example_page/page1.dart';

class Page2 extends StatelessWidget {

  const Page2({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Example TO - Page 2'),),
           body: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Page1();
                    },
                  ),
                );
              },
              child: const Text('Page 1'),
            ),
       );
  }
}