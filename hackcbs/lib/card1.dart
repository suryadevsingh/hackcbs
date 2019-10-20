import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:url_launcher/url_launcher.dart';
class card1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      home: CARD2(),
    );
  }

}

class CARD2 extends StatelessWidget{

  launchURL() {
    launch('https://goalkicker.com/DotNETFrameworkBook/DotNETFrameworkNotesForProfessionals.pdf');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Container(
        child: launchURL(),
      ),

    );
  }
}