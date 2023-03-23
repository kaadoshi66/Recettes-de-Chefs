import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});
  final String rendimento = "15 Porções";
  final String numeroFavoritos = "1.233";
  final String numeroComentarios = "602";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "img/bolo_milho.jpg",
        ),
        //titulo e informações
        Container(
          color: Colors.orange[700],
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              const Text(
                "Bolo de Milho com Tompero",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              // const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  height: 2,
                ),
              ),
              // const SizedBox(height: 20),
              //Ícones
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.solidClock,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "PREPARO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "40 minutos",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  //!Rendimento
                  Column(
                    children: [
                      Column(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.utensils,
                            color: Colors.white,
                            size: 32,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "RENDIMENTO",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            rendimento,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //!FAVORITOS
                  Column(
                    children: [
                      Column(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.white,
                            size: 32,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "FAVORITOS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            numeroFavoritos,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //!Comentarios
                  Column(
                    children: [
                      Column(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.solidComment,
                            color: Colors.white,
                            size: 32,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "COMENTARIOS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            numeroComentarios,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // ingredientes
        const SizedBox(height: 10),
        Container(
          color: Colors.transparent,
          child: Column(
            children: [
              //Icone e texto
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bookOpen,
                    color: Colors.orange.shade700,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Ingredientes",
                    style: TextStyle(
                      color: Colors.orange.shade800,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //Lista de igredientes
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: const [
                    Text(
                      "- 1 lata de milho\n"
                      "- 1 lata de leite(medida da lata de milho)\n"
                      "- 1 lata de açúcar(medida da lata de milho)\n"
                      "- 1 lata de flocão de milho\n"
                      "- 1/2 lata de óleo de soja\n"
                      "- 3 ovos\n"
                      "- 1 colher(sopa) de fermento em pó\n"
                      "- margarina\n"
                      "- farinha de trigo\n",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              //Icone e modo de preparo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bookOpen,
                    color: Colors.orange.shade700,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Modo de Preparo",
                    style: TextStyle(
                      color: Colors.orange.shade800,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //Modo de Preparo
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "1. Bata no lidiquificador os ovos, o leite e o óleo por 1 minuto.\n"
                  "2. Acrescente o milho e bata por mais 2 minutos.\n"
                  "3. Adcione toda parte seca e bata até agregar os ingredientes.\n"
                  "4. Unte uma forma de buraco no meio e leve ao forno preaquecido a 180°c por 45 minutos.\n",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(height: 50),
      ],
    );
  }

  // Text marcarTexto(String texto) {
  //   Text marcador = Text(
  //     "\u2022 $texto",
  //     style: const TextStyle(fontSize: 20),
  //   );
  //   return marcador;
  // }
}
