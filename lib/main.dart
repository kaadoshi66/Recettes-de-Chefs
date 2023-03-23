import 'package:flutter/material.dart';
import 'package:recettes_de_chefs/recettes_page.dart';

void main() => runApp(
      const MaterialApp(
        title: "Recettes de Chefs",
        home: Recettes(),
        debugShowCheckedModeBanner: false,
      ),
    );
