import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';

import 'components/user_comment_item.dart';

class MoneyResult extends StatelessWidget implements Navigatable{
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
              child:container(),
            ),
            Positioned(
              top: 323.0,
              left: 20,
              right: 20,
              child: container2(),
            ),
            Positioned(
              top: 550.0,
              left: 20,
              right: 20,
              child: container3(),
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
              top: 12,
              left: 120,
              child: Text('Ваш денежный код', textAlign: TextAlign.center, style: TextStyle(
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
            child: Text('''здесь заложена установка на удачу, богатство, денежное процветание.''', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontFamily: 'Montserrat',
                fontSize: 10,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
            ),
            ),
            padding: EdgeInsets.only(top: 35, left: 42, right: 42),
          ),
          Positioned (
            top: 73,
            left: 120,
            child: Container(
              width: 110,
              height: 49,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.circular(15),
                color: Color.fromARGB(255, 250, 228, 240),
              ),
              child: Center(
                child: Text('2237', textAlign: TextAlign.center, style: TextStyle(
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
        ]
    ),
    padding: EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 10),
    width: 332,
    height: 148,
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
              top: 15,
              left: 60,
              child: Text('Как использовать денежный код?', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1
              ),
              )
          ),
          Container(
            child: Text('''Код нужно нанести на купюру крупного достоинства и носите в кошельке как амулет на привлечение денег.

Как можно чаще применяйте финансовый код, используйте его при любой возможности и не сообщайте заветные цифры никому. 

Не забывайте, что деньги легко приходят к тем, кто доверяет этому миру, открыт всему новому, готов искренне верить и работать для достижения благородных целей. ''', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontFamily: 'Montserrat',
                fontSize: 10,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1
            ),
            ),
            padding: EdgeInsets.only(top: 48, left: 18, right: 18),
          ),
        ]
    ),
    padding: EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 10),
    width: 332,
    height: 201,
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



  Widget container3() => Container(
      child: Stack(
        children: [
          UserItem('assets/images/png/ava1.png', 'Диниза','Теперь часто буду применять свой код!', 21, 15, 36),
              UserItem('assets/images/png/ava2.png','Айкен','Так интересно читать!', 70, 64, 85),
          UserItem('assets/images/png/ava1.png','Вы','Ваш комментарий', 119, 113, 133)
        ],
    ),

    width: 332,
    height: 171,
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
  ]
  ),
  );


  @override
  String getName() {
    return Routes.money_result;
  }
}