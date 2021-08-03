import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            backgroundImage(),
            mainText(),
            button(),
          ],
        ),
      ),
    );
  }

  Widget mainText() => Positioned(
      top: 184.0,
      left: 40,
      child: Container(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 295,
              height: 46,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18.0),
                  labelText: "Имя",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 295,
              height: 46,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18.0),
                  labelText: "Фамилия",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 295,
              height: 46,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18.0),
                  labelText: "Номер телефона",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 295,
              height: 46,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18.0),
                  labelText: "Дата рождения",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
  );


  Widget backgroundImage() => Container(
    width: double.infinity,
    height: 223,
    child: Image.asset(
      'assets/images/png/flamingo.png',
      fit: BoxFit.cover,
    ),
  );



  Widget button() => Stack(
          children: <Widget>[
            Positioned(
                top: 682,
                left: 134,
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 147, height: 45),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25), // <-- Radius
                      ),
                      primary: Color.fromARGB(255, 255, 151, 151),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                    child: Text('Сохранить',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                        )),
                  ),
                ),
            ),
          ]

  );

}
