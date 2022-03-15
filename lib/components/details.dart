import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/apes.dart';

class Details extends StatelessWidget {
  List<Ape> apes;
  Details({Key? key, required this.apes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
        ),
        itemCount: apes.length,
        itemBuilder: (context, index) {
          Ape a = apes[index];
          return Stack(
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 25),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade700,
                          blurRadius: 5,
                          offset: Offset(2, -2))
                    ],
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                        image: AssetImage(a.image), fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(a.image),
                                )),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    a.name,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    a.discription,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.more_vert_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 50,
                right: 50,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    // boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10)],
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade200.withOpacity(.8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_outline_rounded),
                            SizedBox(width: 4),
                            Text(a.likes),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.comment),
                            SizedBox(width: 4),
                            Text(a.comments),
                          ],
                        ),
                      ),
                      InkWell(
                          onTap: () => showModalBottomSheet(
                                backgroundColor: Colors.white.withOpacity(.8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25))),
                                elevation: 10,
                                context: context,
                                builder: (context) => buildSheet(),
                              ),
                          child: FaIcon(FontAwesomeIcons.paperPlane)),
                      FaIcon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

Widget buildSheet() => Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(6),
            height: 5,
            width: 50,
            color: Colors.white60,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'share',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.ios_share_rounded,
                  color: Colors.blue.shade900,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('search',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, childAspectRatio: 1),
                itemCount: apes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          apes[index].image,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        apes[index].name,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 60,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.shade600,
            ),
            child: const Center(
              child: Text(
                'Send',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
