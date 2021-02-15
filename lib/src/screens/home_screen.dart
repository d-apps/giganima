import 'package:flutter/material.dart';
import 'package:giganima/src/model/anime.dart';
import 'package:giganima/src/tiles/anime_tile.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Anime> animes = [];

  @override
  void initState() {

    for(int i=0; i < 15; i++){

      animes.add(Anime(
        cover: "https://i.imgur.com/pKmToAI.jpg",
        title: "Parasyte",
        description: "Um adolescente luta contra um ataque de parasitas do espaço com a ajuda de Migi, uma criatura parasita dócil que vive em sua mão direita",
        year: "2014"
      ));

    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Giganima"),
        centerTitle: true,
      ),

      body: Container(
        margin: const EdgeInsets.all(16),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: animes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            childAspectRatio: 0.65
          ),
          itemBuilder: (_, index){

            return AnimeTile(
                animes[index],
                index
            );

          },
        ),
      ),
    );

  }
}
