import 'package:flutter/material.dart';

class PageAcceuil extends StatelessWidget {
  const PageAcceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Widget de structure de la page
      appBar: AppBar(

        title: const Text("INGC2 ESMT"),
        centerTitle: true,
        //leading: Icon(Icons.person), // Icone non cliquable
        leading : IconButton( //Icone cliquable
          onPressed: (){ //c'est la fonction qui définit la réaction lorsqu'on clique sur l'icone
            //Instruction pour naviguer vers la page profil
            print('Profil ici');
            Navigator.pushNamed(context, "/profil"); //c'est la classe permettant de naviguer vers une autre page 
          },
          icon: const Icon(Icons.person), //icone non cliquable
          tooltip: 'Profil', // au survol du curseur, le tooltip est le renseignement qui s'affiche pour l'utilisateur
        ),
        actions: [
          IconButton(onPressed: (){ // une autre icone cliquable qui mène à la page de recherche
            //instruction pour naviguer vers la page de recherche
            print("Page de recherche ici");
          }, 
          icon: const Icon(Icons.search), 
          tooltip: 'Rechercher',)
        ],
        backgroundColor: const Color.fromARGB(255, 1, 82, 4), // couleur de fond de la barre 
        foregroundColor: Colors.white, // couleur des textes et icones contenus dans la barre 

      ),
      
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // ici c'est l'axe vertical car on est dans column
          crossAxisAlignment: CrossAxisAlignment.center, // c'est l'axe perpendiculaire à l'axe principal, donc ici c'est l'axe horizontal
          children: [ // liste des widgets enfants contenus dans la colonne
            Text("Bienvenue !"),
            Text("Ceci est la page d'acceuil"),
          ],
      ),),
    );
  }
}
