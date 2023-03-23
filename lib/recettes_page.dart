import 'package:flutter/material.dart';
import 'package:recettes_de_chefs/detail.dart';

class Recettes extends StatefulWidget {
  const Recettes({super.key});
  @override
  State createState() => RecettesState();
}

class RecettesState extends State<Recettes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recettes de Chefs"),
        backgroundColor: Colors.orange[700],
        leadingWidth: 50,
        leading: Transform.translate(
          offset: const Offset(5, 0),
          child: Image.asset(
            "img/jacquin.png",
          ),
        ),
      ),

      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text("Tompero"),
              subtitle: const Text("Os Tomperos são a base"),
              leading: Icon(
                Icons.food_bank_sharp,
                color: Colors.teal.shade200,
                size: 32,
              ),
            ),
            ListTile(
              title: const Text("Flutter"),
              subtitle: const Text("Tudo são Widgets"),
              leading: Icon(
                Icons.flash_auto,
                color: Colors.red.shade200,
                size: 32,
              ),
            ),
          ],
        ),
      ),

      body: const SingleChildScrollView(
        //infomações
        child: Detail(),
      ),
      // Barra inferior
      // bottomNavigationBar: ,
    );
  }
}
