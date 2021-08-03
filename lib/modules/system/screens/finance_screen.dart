import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/core/routes/routes.dart';

import 'package:resomy_client/modules/system/screens/components/person_info_item.dart';

class FinanceScreen extends StatelessWidget{
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
              top: 252,
              left: 50,
              child:PersonInfoItem('assets/images/png/money.png', 'Денежный код', 256,
              onTap:(){
                Navigator.pushNamed(context, Routes.money);
              }
            ),
            ),
            Positioned(
              top: 399,
              left: 50 ,
              child:PersonInfoItem('assets/images/png/money.png', 'Именные деньги', 225),
            ),
            Positioned(
              top: 546,
              left: 50 ,
              child:PersonInfoItem('assets/images/png/money.png', 'Денежные числа', 128),
            ),
            Positioned(
              top: 693,
              left: 50 ,
              child:PersonInfoItem('assets/images/png/money.png', 'Деньги', 97),
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


}
