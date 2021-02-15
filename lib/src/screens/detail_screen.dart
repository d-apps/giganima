import 'package:flutter/material.dart';
import 'package:giganima/src/model/anime.dart';

class DetailScreen extends StatelessWidget {

  final Anime anime;
  final int index;

  DetailScreen(this.anime, this.index);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
        centerTitle: true,
      ),

      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [

            Expanded(
              child: Container(
                child: Row(
                  children: [

                    Expanded(
                      child: Container(
                        //color: Colors.purple,
                        child: Hero(
                          tag: index,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              anime.cover,
                              fit: BoxFit.fill,
                              height: height,
                              width: width,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        //color: Colors.green,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Nome: ${anime.title}"),
                            Text("Ano: ${anime.year}"),
                            Spacer(),
                            SizedBox(
                              width: width,
                              child: ElevatedButton(
                                child: Text("Episódios"),
                                onPressed: (){},
                              ),
                            )

                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                //color: Colors.blue,
                child: Text(anime.description),
              ),
            )

          ],
        ),
      ),
    );

  }
}
