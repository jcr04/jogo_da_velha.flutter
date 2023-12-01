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
            // Logo ou Imagem
            Image.asset('lib/assets/imagens/logo.png',
                height: 100), // Substitua com o caminho do seu asset
            const SizedBox(height: 30),

            // Botão Start
            _buildButton(
              context,
              'Start',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => GamePage())),
            ),

            const SizedBox(height: 20),

            // Botão Créditos
            _buildButton(
                context, 'Créditos', () => _showCreditsDialog(context)),

            // Adicione mais botões ou widgets conforme necessário
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      BuildContext context, String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, // Cor do texto do botão
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Borda arredondada
        ),
        elevation: 5, // Sombra do botão
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Para centralizar ícones e texto
        children: [
          Icon(label == 'Start'
              ? Icons.play_arrow
              : Icons.info_outline), // Ícone condicional
          const SizedBox(width: 10), // Espaço entre ícone e texto
          Text(label),
        ],
      ),
    );
  }

  void _showCreditsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Créditos',
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                // Logo ou imagem (opcional)
                // Image.asset('caminho_para_imagem', height: 100),

                Text('Jogo da Velha',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Desenvolvido por:',
                    style: TextStyle(fontStyle: FontStyle.italic)),
                Text('Nataly Eva Rodrigues'),
                Text('Yan Henri'),
                // adicionar link do repositorio
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
