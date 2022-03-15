import 'package:flutter/material.dart';

import '../model/apes.dart';

class Storybar extends StatelessWidget {
  List<Ape> apes;
  Storybar({Key? key, required this.apes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: apes.length,
        itemBuilder: (context, index) {
          Ape a = apes[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 80,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(colors: [Colors.blue, Colors.purple])),
                  child: Container(
                    width: 78,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage(a.image))),
                  ),
                ),
              ),
              Text(
                a.name,
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          );
        },
      ),
    );
  }
}
