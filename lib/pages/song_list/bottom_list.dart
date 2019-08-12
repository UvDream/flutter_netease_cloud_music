import 'package:flutter/material.dart';

class BottomList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 0),
        itemBuilder: _itemBuilder,
        itemCount: 15,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('无与伦比的标题+$index'),
    );
  }
}
