import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoneyItem extends StatefulWidget{
  void Function()? onTap;

  MoneyItem({this.onTap});
  @override
  _MoneyItemState createState() => _MoneyItemState();
}

class _MoneyItemState extends State<MoneyItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: Stack(
          children: [
            Container(
              width: 147,
              height: 45,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.circular(25),
                color : Color.fromRGBO(249, 248, 250, 0),
                border : Border.all(
                  color: Color.fromRGBO(93, 99, 106, 1),
                  width: 1,
                ),
              ),
              child: Text('Получить комбинацию', textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                ),
              ),
            ),
          ]
      ),
    );
  }
}