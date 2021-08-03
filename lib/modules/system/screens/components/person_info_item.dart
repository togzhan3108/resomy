import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonInfoItem extends StatefulWidget{
  String imagePath;
  String label;
  int num;
  void Function()? onTap;

  PersonInfoItem(this.imagePath, this.label, this.num, {this.onTap});
  @override
  _PersonInfoItemState createState() => _PersonInfoItemState();
}

class _PersonInfoItemState extends State<PersonInfoItem> {
  @override
  Widget build(BuildContext context) {

     return GestureDetector(
       onTap: this.widget.onTap,
       child: Stack(
          children: [
            Container(
              width: 315,
              height: 117,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.circular(20),
                color : Color.fromARGB(255, 255, 255, 255),
              ),
              padding: EdgeInsets.only(bottom: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child:Image.asset(
                  this.widget.imagePath,
                  height: 67,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 79,
              left: 10,
              child: Text(this.widget.label, textAlign: TextAlign.left, style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  letterSpacing: 0,
                  height: 1
              ),
              ),
            ),
            Positioned(
              bottom: 7.5,
              right: 42,
              child:Text('Искали ${this.widget.num} людей', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(247, 133, 133, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1
              ),
              ),
            ),
          ]
    ),
     );
  }
}