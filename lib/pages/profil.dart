import 'package:flutter/material.dart';

class PageProfil extends StatelessWidget {
  const PageProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Widget de structure de la page
      appBar: AppBar(
        title: const Text('Page Profil'), // Le titre qui va s'afficher dans la barre de cette page
      ),
      body: const Center(
        child: Column(
            children: [ 
              const Text ('Bienvenue sur la page Profil!'), 
            ]),
      ),
      endDrawer: Drawer( // c'est la fenetre de côté qui s'affiche lorsque l'on clique sur l'icone de menu (trois barres horizontales)
        child: ListView( //Il se comporte comme une colonne défilante. Il se comporte comme un Widget colonne mais nous donne plus de possibilités.

          children: [

            const DrawerHeader( // c'est l'entête du menu de navigation
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 10, 114, 6),
              ),
              child: Text('Menu', 
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 24)
                        ),
            ),

            ListTile( // chaque ListTile représente un élément cliquable dans le menu de navigation. 
              title: const Text('Acceuil', style: TextStyle(color:  Color.fromARGB(255, 9, 78, 20)),),
              trailing: const Icon(Icons.chevron_right), //icone à droite de l'élément
              onTap: () {
                Navigator.pushNamed(context, "/acceuil"); //redirige vers la page indiqué dans pushNamed , ici c'est vers la page d'acceuil
              },
            ),

            ListTile( // Pour accéder à la page Profil
              title: const Text('Paramètres', style: TextStyle(color: Color.fromARGB(255, 9, 78, 20)),),
              trailing: const Icon(Icons.chevron_right), //icone à droite de l'élément
              onTap: () {
                Navigator.pushNamed(context, "/parametre"); //redirige vers la page des paramètres
              },
            ),

          ],
        ),
      ),
    );
  } 
  
}