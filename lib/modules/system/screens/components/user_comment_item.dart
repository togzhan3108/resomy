import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserItem extends StatefulWidget{
  String imagePath;
  String name;
  String comment;
  double top_name;
  double top_img;
  double top_comment;

  UserItem(this.imagePath, this.name, this.comment, this.top_name, this.top_img, this.top_comment);
  @override
  _UserItemState createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Positioned(
              top: this.widget.top_img,
                left: 14,
                child:
                Image.asset(this.widget.imagePath
              ),
            ),
            Positioned(
              top: this.widget.top_name,
              left: 61,
              child:
                Text(this.widget.name,
                   style: TextStyle(
                    color: Color.fromRGBO(73, 80, 87, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                ),
                ),
            ),
            Positioned(
              top: this.widget.top_comment,
              left: 64,
              child:
              Text(this.widget.comment,
                style: TextStyle(
                    color: Color.fromRGBO(73, 80, 87, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
      );
  }
}