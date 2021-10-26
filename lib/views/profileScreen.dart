// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, use_key_in_widget_constructors, sized_box_for_whitespace, file_names, duplicate_ignore

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, use_key_in_widget_constructors, sized_box_for_whitespace, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:TiMed/views/registerScreen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nome: ',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
        ),
        Text(
          'Andressa Gobbo',
          style: TextStyle(color: Colors.white, fontSize: 22),
        )
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'E-mail: ',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
        ),
        Text(
          'andressafgdias@gmail.com',
          style: TextStyle(color: Colors.white, fontSize: 22),
        )
      ],
    );
  }

  Widget buildProfilePic() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xff7e84b3),
                child: ClipOval(
                  child: SizedBox(
                    width: 180.0,
                    height: 180.0,
                    child: Image.network(
                      "https://st3.depositphotos.com/4111759/13425/v/450/depositphotos_134255626-stock-illustration-avatar-male-profile-gray-person.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 120.0),
              child: IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  size: 40.0,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget buildEditBtn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5,
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => RegisterScreen(),
              ),
            ),
          },
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.white,
          child: Text(
            'EDITAR DADOS',
            style: TextStyle(
              color: Color(0xff7e84b3),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7e84b3),
        actions: <Widget>[
          /* IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    ),
                  })
        */
        ],
        title: Text('TiMed - Perfil do Usuário'),
      ),
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
                      Color(0xff9ea3d0),
                      Color(0xffbcc5ed),
                      Color(0xffc5c7e1),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 100,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildProfilePic(),
                      SizedBox(height: 30),
                      buildName(),
                      SizedBox(height: 20),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildEditBtn(context),
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
