import 'package:flutter/material.dart';
import 'game_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogo da Velha'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GamePage()),
                );
              },
              child: const Text('Start'),
            ),
            const SizedBox(height: 20), // Espaço entre os botões
            ElevatedButton(
              onPressed: () => _showCreditsDialog(context),
              child: const Text('Créditos'),
            ),
          ],
        ),
      ),
    );
  }

  void _showCreditsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Créditos'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Jogo da Velha'),
                Text('Desenvolvido por: [Seu Nome]'),
                // Adicione mais linhas de créditos conforme necessário
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
