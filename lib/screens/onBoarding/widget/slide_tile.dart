import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlideTile extends StatelessWidget {
  String imagePath, desc;

  SlideTile({
    Key key,
    this.desc,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 400,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.lightBlue),
          )
        ],
      ),
    );
  }
}
