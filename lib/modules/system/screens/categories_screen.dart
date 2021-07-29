import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            backgroundImage(),
            Positioned(
              top: 200.0,
              left: 20,
              right: 20,
              child:container(),
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundImage() => Container(
    width: double.infinity,
    height: 223,
    child: Image.asset(
      'assets/images/png/flamingo.png',
      fit: BoxFit.cover,
    ),
  );

  Widget container() => Container(
          child: Stack(
              children: <Widget>[
                Positioned(
                    top: 0,
                    left: 118,
                    child: Text('2021', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(209, 130, 139, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 35,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),
                    )
                ),Positioned(
                    top: 42,
                    left: 141,
                    child: Text('July', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(209, 130, 139, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),
                    )
                ),
                Positioned(
                  top: 432,
                  left: 94,
                  child: Container(
                    // CALENDAR
                  )
                ),
                Positioned(
                  top: 432,
                  left: 94,
                  child: Container(
                    width: 147,
                    height: 45,
                    child: Text('Сохранить', textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),
                    ),
                    padding: EdgeInsets.only(left: 37, top: 14,),
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.circular(25),
                      color : Color.fromRGBO(255, 151, 151, 1),
                      border : Border.all(
                        color: Color.fromRGBO(93, 99, 106, 1),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ]
          ),
          padding: EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 10),
          width: 335,
          height: 523,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),



  );
}