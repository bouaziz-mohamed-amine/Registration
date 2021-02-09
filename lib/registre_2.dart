import 'package:flutter/material.dart';
class Registre2 extends StatefulWidget {
  @override
  _Registre2State createState() => _Registre2State();
}

class _Registre2State extends State<Registre2> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.6,
        child: Image(
          image:ExactAssetImage("assets/images/registration2.jpg"),
          fit: BoxFit.cover,
          ),
      ),
      CustomPaint(
        painter: costomdecoration1(),
        child: Container(),
      ),
      CustomPaint(
        painter: costomdecoration2(),
        child: Container(),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Login to start!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 32,),
                  _form(context),
                  SizedBox(height: 32,),
                  _actions(context),
                  SizedBox(height: 48,),
                ],
              ),
            ),
          ),
        ),
      ),

    ],);
  }
  var _key = GlobalKey<FormState>();
  Widget _form(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Form(
            key: _key,
                child:Column(
                  children: [
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "Your EMAiL",
                        labelStyle: TextStyle(color: Colors.white,fontSize: 15),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white,fontSize: 15),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        ),
                      ),
                    ),
                    ]
                ) ,
              ),
        ),
         Transform.translate(
           offset: Offset(0, 65),
           child: InkWell(
             onTap: (){},
             child: Container(
                  width: 70,height: 70,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.yellow,),
                  child: Center(child: Text("GO",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),),
                ),
           ),
         ),
      ],
    );

  }

  Color _buttonColor = Color(0xFFF9EA60);

  Widget _actions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: Text(
            'Forgot password?',
            style: TextStyle(
              color: _buttonColor,
              letterSpacing: 1.2,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: _buttonColor,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ],
    );
 }
}

class costomdecoration1 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path=Path();
    Paint paint=Paint();
    paint.color=Colors.pinkAccent.withOpacity(0.5);
    path.lineTo(0, size.height*0.4);
    path.lineTo(size.width*0.7, size.height*0.6);
    path.lineTo(size.width*1, size.height*0.4);
    path.lineTo(size.width*1, size.height*1);
    path.lineTo(size.width*0, size.height*1);
    path.close();
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) =>false;
}
class costomdecoration2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Rect rec=Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient=LinearGradient(
        colors: [
      Color(0xFFFF3181),
          Color(0xFFFA7500),
      Color(0xFFFA8537),

    ],
        stops: [0.2,0.5, 0.8],
    );
    Path path=Path();
    Paint paint=Paint();
    paint.color=Colors.pinkAccent;
    paint.shader=gradient.createShader(rec);
    path.lineTo(0, size.height*0.5);
    path.lineTo(size.width*0.7, size.height*0.6);
    path.lineTo(size.width*1, size.height*0.5);
    path.lineTo(size.width*1, size.height*1);
    path.lineTo(size.width*0, size.height*1);
    path.close();
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) =>false;
}
