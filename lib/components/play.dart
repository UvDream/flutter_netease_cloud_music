import 'package:flutter/material.dart';
class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
              width: 25,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Image.asset('images/icons/music.png')),
                      ),
                    ],
                  ),
                ),
              ),
              margin: const EdgeInsets.only(top: 2,right: 5),
            ),
    );
  }
}