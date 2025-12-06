import 'package:flutter/material.dart';

class PageParametre extends StatelessWidget {
  const PageParametre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Widget de structure de la page
      appBar: AppBar(
        title: const Text('Paramètres'), // Le titre qui va s'afficher dans la barre de cette page
      ),
      body: const Center(
        child: Text('Page des paramètres'),
      ),
    );
  }
  
}