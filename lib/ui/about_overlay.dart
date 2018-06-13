import 'package:flutter/material.dart';

class AboutOverlay extends StatefulWidget {

  final VoidCallback _onTap;

  AboutOverlay(this._onTap);

  @override
  State createState() => new AboutOverlayState();
}
class AboutOverlayState extends State<AboutOverlay> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => print("You tapped the overlay"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/images/hn_logo_64x64'),
                ) 
              ),
            ),
            Text(
              "HN Flutter", style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            )
          ]
        )

    
      )
    );
  }
} 