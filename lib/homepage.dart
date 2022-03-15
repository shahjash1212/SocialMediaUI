import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'components/bottomappbaricons.dart';
import 'components/details.dart';
import 'components/storybar.dart';
import 'model/apes.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.photo_camera_outlined,
          color: Colors.grey,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.mail_outline_rounded,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Storybar(apes: apes),
            Details(apes: apes),
            // RaisedButton(
            //   onPressed: () => showModalBottomSheet(
            //     backgroundColor: Colors.white.withOpacity(.8),
            //     shape: RoundedRectangleBorder(
            //         borderRadius:
            //             BorderRadius.vertical(top: Radius.circular(25))),
            //     elevation: 10,
            //     context: context,
            //     builder: (context) => buildSheet(),
            //   ),
            // )
          ],
        ),
      ),
      bottomNavigationBar: BottomMenuBarIcons(),
    );
  }
}
