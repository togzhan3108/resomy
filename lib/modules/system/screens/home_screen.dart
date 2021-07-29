import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
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
          top: 200,
          left: 20,
          right: 20,
          child:container(),
        ),
            button(),
            Positioned(
              top: 200.0,
              left: 11.7,
              child: Row(
                children: [
                  SizedBox(width: 20),
                ],
              ),
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

  Widget container() => Stack(
    children:[
      Container(
      padding: EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 10),
      width: 335,
      height: 412,
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
        child: Container(
          width: 295,
          height: 285.6600036621094,
          child: Stack(
              children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 295,
                        height: 60.65999984741211,
                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 9,
                                  left: 0,
                                  child: Container(
                                      width: 295,
                                      height: 51.65999984741211,
                                      decoration: BoxDecoration(
                                        borderRadius : BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                        color : Color.fromRGBO(255, 255, 255, 1),
                                        border : Border.all(
                                          color: Color.fromRGBO(142, 138, 138, 1),
                                          width: 1,
                                        ),
                                      )
                                  )
                              ),Positioned(
                                  top: 0,
                                  left: 29,
                                  child: Container(
                                      width: 40,
                                      height: 19,
                                      decoration: BoxDecoration(
                                        color : Color.fromRGBO(255, 255, 255, 1),
                                      )
                                  )
                              ),Positioned(
                                  top: 0,
                                  left: 30,
                                  child: Text('Имя', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(73, 80, 87, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),)
                              ),
                            ]
                        )
                    )
                ),Positioned(
                    top: 84,
                    left: 0,
                    child: Container(
                        width: 295,
                        height: 51.65999984741211,
                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 295,
                                      height: 51.65999984741211,
                                      decoration: BoxDecoration(
                                        borderRadius : BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                        color : Color.fromRGBO(255, 255, 255, 1),
                                        border : Border.all(
                                          color: Color.fromRGBO(142, 138, 138, 1),
                                          width: 1,
                                        ),
                                      )
                                  )
                              ),
                            ]
                        )
                    )
                ),Positioned(
                    top: 75,
                    left: 32,
                    child: Container(
                        width: 75,
                        height: 19,
                        decoration: BoxDecoration(
                          color : Color.fromRGBO(255, 255, 255, 1),
                        )
                    )
                ),Positioned(
                    top: 75,
                    left: 35,
                    child: Text('Фамилия', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(73, 80, 87, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                ),Positioned(
                    top: 154,
                    left: 0,
                    child: Container(
                        width: 295,
                        height: 56.65999984741211,
                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 5,
                                  left: 0,
                                  child: Container(
                                      width: 295,
                                      height: 51.65999984741211,
                                      decoration: BoxDecoration(
                                        borderRadius : BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                        color : Color.fromRGBO(255, 255, 255, 1),
                                        border : Border.all(
                                          color: Color.fromRGBO(142, 138, 138, 1),
                                          width: 1,
                                        ),
                                      )
                                  )
                              ),Positioned(
                                  top: 0,
                                  left: 24,
                                  child: Container(
                                      width: 132,
                                      height: 19,
                                      decoration: BoxDecoration(
                                        color : Color.fromRGBO(255, 255, 255, 1),
                                      )
                                  )
                              ),
                            ]
                        )
                    )
                ),Positioned(
                    top: 225,
                    left: 0,
                    child: Container(
                        width: 295,
                        height: 60.65999984741211,
                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 9,
                                  left: 0,
                                  child: Container(
                                      width: 295,
                                      height: 51.65999984741211,
                                      decoration: BoxDecoration(
                                        borderRadius : BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                        color : Color.fromRGBO(255, 255, 255, 1),
                                        border : Border.all(
                                          color: Color.fromRGBO(142, 138, 138, 1),
                                          width: 1,
                                        ),
                                      )
                                  )
                              ),Positioned(
                                  top: 0,
                                  left: 29,
                                  child: Container(
                                      width: 125,
                                      height: 19,
                                      decoration: BoxDecoration(
                                        color : Color.fromRGBO(255, 255, 255, 1),
                                      )
                                  )
                              ),Positioned(
                                  top: 0,
                                  left: 34,
                                  child: Text('Дата рождения', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(73, 80, 87, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),)
                              ),
                            ]
                        )
                    )
                ),Positioned(
                    top: 150,
                    left: 26,
                    child: Text('Номер телефона', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(73, 80, 87, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                ),
              ]
          ),
        ),
    ),
  ]
  );

  Widget button() => Stack(
          children: <Widget>[
            Positioned(
                top: 682,
                left: 134,
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

  );

}
