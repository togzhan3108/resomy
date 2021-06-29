import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';

class NewScreen extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,),
      body: Center(
        child: Text("asd"),
      ),
    );
  }

  @override
  String getName() {
    return Routes.new_screen;
  }
}
