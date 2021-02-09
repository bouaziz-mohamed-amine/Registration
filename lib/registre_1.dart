import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registre1 extends StatefulWidget {
  @override
  _Registre1State createState() => _Registre1State();
}
class _Registre1State extends State<Registre1> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Color _yellowColor = Color(0xFFF7C41C);

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/black.jpg",fit: BoxFit.cover,),
        Scaffold(
          backgroundColor:Colors.transparent ,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation:0 ,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Text(
                    'Welcome back!',
                    style: TextStyle(
                      letterSpacing: 1.3,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                ),
                 ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Sign in to your account',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                _form(),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Dont't have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Create One',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  height: 48,
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
  var _key = GlobalKey<FormState>();
 Widget _form() {
    return Container(
      margin: EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height*0.35,
      decoration: BoxDecoration(
        color: Colors.grey.shade900.withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Theme(
          data: ThemeData(primaryColor: Colors.white),
          child: Stack(
              children: [
                Form(
                  key:  _key,
                  child: Column(
                    children: [
                      TextFormField(
                        controller:_emailController ,
                        style: TextStyle(
                          color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'email@address.com',
                          labelText: 'Your email',
                          labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                          hintStyle: TextStyle(color: Color(0xFF6B6B6B),fontSize: 10),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusColor: Colors.white,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                       height: 30,
                     ),
                      TextFormField(
                        controller: _passwordController,
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '***********',
                          labelText: 'Password',
                          hintStyle: TextStyle(color: Color(0xFF6B6B6B)),
                          labelStyle:
                          TextStyle(color: Colors.white, fontSize: 20),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    child: Text('Forgot Password?',
                      style: TextStyle(color: _yellowColor),),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                      color: _yellowColor,
                      onPressed: (){},
                      child: Container(
                        width: 75,
                        child: Row(
                          children: [
                          Text("LOGIN",style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(width: 8,),
                          Icon(Icons.arrow_forward,color: Colors.white,)
                        ],
                        ),
                      ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
                      ),
                ),
              ],
            ),
        ),
        ),
    );
 }
}
