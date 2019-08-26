import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  PlayButton({this.color = false});
  final bool color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Container(
          // color: Colors.orange,
          width: 54,
          child: Icon(
            IconData(0xe649, fontFamily: 'IconFont'),
            size: 25,
            color: color ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
