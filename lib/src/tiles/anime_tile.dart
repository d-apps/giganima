
import 'package:flutter/material.dart';
import 'package:giganima/src/common/custom_text.dart';
import 'package:giganima/src/model/anime.dart';
import 'package:giganima/src/screens/detail_screen.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class AnimeTile extends StatelessWidget {

  final Anime anime;
  final int index;

  AnimeTile(this.anime, this.index);

  @override
  Widget build(BuildContext context) {

    timeDilation = 2.3;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          children: [

            Hero(
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


            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [

                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.8),


                      ]
                  )
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  CustomText(
                    anime.title,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 5,),

                  CustomText(
                    anime.year,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                ],
              ),
            )

          ],
        ),
      ),
      onTap: (){

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailScreen(anime, index))
        );

      },
    );
  }
}