
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, use_key_in_widget_constructors, sized_box_for_whitespace, file_names, duplicate_ignore

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, use_key_in_widget_constructors, sized_box_for_whitespace, file_names, deprecated_member_use


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homeScreen.dart';


class LoginScreen extends StatefulWidget {
  // const LoginScreen({Key? key, required this.onSubmit}) : super(key: key);
  // final ValueChanged<String> onSubmit;
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final _formKey = GlobalKey<FormState>();
  // String _name = '';

  // void _submit() {
  //   // validate all the form fields
  //   if (_formKey.currentState!.validate()) {
  //     // on success, notify the parent widget
  //     widget.onSubmit(_name);
  //   }
  // }
  bool? isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87), //TextStyle
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff7e84b3),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black38),
            ),
            // validator: (text) {
            //   if (text == null || text.isEmpty) {
            //     return 'Can\'t be empty';
            //   }
            //   if (text.length < 4) {
            //     return 'Too short';
            //   }
            //   return null;
            // },
            // onChanged: (text) => setState(() => _name = text),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Senha',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87), //TextStyle
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xff7e84b3),
              ),
              hintText: 'Senha',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        )
      ],
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Esqueci minha senha pressionado"),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Esqueci minha senha',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            value: isRememberMe,
            checkColor: Colors.indigo.shade400,
            activeColor: Colors.white,
            onChanged: (value) {
              setState(() {
                isRememberMe = value;
              });
            },
          ),
        ),
        Text(
          'Lembrar minha senha',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }

  Widget buildLoginBtn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5,
          onPressed: () => {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(
                  email: 'droponcio@gmail.com',
                  password: 'eopae'  
                ),
              ),
            ),
          },
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.white,
          child: Text(
            'ENTRAR',
            style: TextStyle(
              color: Color(0xff7e84b3),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () => print("Registre-se pressionado"),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Não possui uma conta? ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          TextSpan(
            text: 'Registre-se!',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff5159af),
                      Color(0xff7e84b3),
                      Color(0xff9ea3d0),
                      Color(0xffbcc5ed),
                      Color(0xffc5c7e1),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberCb(),
                      buildLoginBtn(context),
                      buildSignUpBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
