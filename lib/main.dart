import 'package:app_ingc1/pages/acceuil.dart';
import 'package:app_ingc1/pages/parametres.dart';
import 'package:app_ingc1/pages/profil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Premiere Application', // C'est le titre de l'application en général. Il ne s'affiche pas.
      home: PageAcceuil(), // C'est la page index de l'application, c'est à dire la première page qui s'affiche quand on ouvre l'application
      routes: { //pour specifier toutes les pages qui sont contenues dans notre application
        "/acceuil": (context) => PageAcceuil(),
        "/profil": (context) => PageProfil(),
        "/parametre": (context) => PageParametre(),
      },
      onUnknownRoute: (context) => MaterialPageRoute( //permet de gérer les routes inconnues
        builder: (context) => PageAcceuil(), //redirige vers la page d'acceuil si la route est inconnue
      ),
      theme: ThemeData( //permet de définir un thème pour l'application
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 32, 129, 8)),
      ),
    );
  }
}
