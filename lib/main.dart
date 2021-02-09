import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:registration_app/registre_1.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Registre1(),
    );
  }
}
