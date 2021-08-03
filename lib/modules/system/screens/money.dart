import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';

import 'components/money_item.dart';

class MoneyScreen extends StatelessWidget implements Navigatable{
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
              top: 148.0,
              left: 20,
              right: 20,
              child:container(context),
            ),
            Positioned(
              top: 380.0,
              left: 20,
              right: 20,
              child: container2(),
            )
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


  Widget container(BuildContext context) => Container(
    child: Stack(
        children: <Widget>[
          Positioned(
              top: 12,
              left: 120,
              child: Text('Денежный код', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1
              ),
              )
          ),
          Positioned(
              top: 30,
                left: 100,
                child: Text('введите вашу дату рождения', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(73, 80, 87, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 10,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1
                ),
                ),
              ),
          Positioned(
            top: 68,
            left: 54,
            child: Container(
              width: 51,
              height: 49,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.circular(15),
                color: Color.fromARGB(255, 250, 228, 240),
              ),
              child: Center(
                child: Text('31', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(247, 133, 133, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 68,
            left: 112,
            child: Container(
              width: 51,
              height: 49,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.circular(15),
                color: Color.fromARGB(255, 250, 228, 240),
              ),
              child: Center(
                child: Text('08', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(247, 133, 133, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
                ),
              ),
            ),
          ),
          Positioned (
            top: 68,
            left: 170,
            child: Container(
              width: 110,
              height: 49,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.circular(15),
                color: Color.fromARGB(255, 250, 228, 240),
              ),
              child: Center(
                child: Text('2000', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(247, 133, 133, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 94,
            child: MoneyItem(
              onTap:(){
                Navigator.pushNamed(context, Routes.money_result);
              }
              ),
          ),
        ]
    ),
    padding: EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 10),
    width: 334,
    height: 211,
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




  Widget container2() => Container(
    child: Stack(
        children: <Widget>[
          Positioned(
              top: 48,
              left: 90,
                  child: Text('Что такое денежный код?', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1
              ),
              )
          ),
          Container(
              child: Text('''Финансовый код подразумевает нумерологическую комбинацию из даты вашего рождения и других показателей. Она (комбинация) приумножает финансы и стимулирует больше зарабатывать. 

Узнайте, для чего же просчитывать код привлечения денег: 

Для приумножения финансов 
Для управления финансовыми потоками
Для приумножения прибыли ''', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1
              ),
              ),
            padding: EdgeInsets.only(top: 91),
          ),
        ]
    ),
    padding: EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 10),
    width: 210,
    height: 333,
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

  @override
  String getName() {
    return Routes.money;
  }
}