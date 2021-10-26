// ignore_for_file: file_names, unused_import, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class MedRegister extends StatefulWidget {
  
  @override
  _MedRegisterState createState() => _MedRegisterState();
}

class _MedRegisterState extends State<MedRegister> {
  // late TimeOfDay time ;
  // late TimeOfDay? picked;

  // void initState(){
  //   super.initState();
  //   time = TimeOfDay.now();
  // }

  // Future<Null> selectTime (BuildContext context) async {
  //   picked = await showTimePicker(
  //     context: context,
  //     initialTime: time,
  //   );
  //   if(picked != null){
  //     setState(() {
  //       picked = ;
  //       time = picked;
  //     });
  //   }
  // }
  String? _selectedTime;
  String? _selectedTime2;
 
  // We don't need to pass a context to the _show() function
  // You can safety use context as below
  Future<void> _show() async {
    final TimeOfDay? result =
        await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
          builder: (context, childWidget) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  // Using 24-Hour format
                  alwaysUse24HourFormat: true),
              // If you want 12-Hour format, just change alwaysUse24HourFormat to false or remove all the builder argument
              child: childWidget!);
}
          );
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }
 Future<void> _show2() async {
    final TimeOfDay? result =
        await showTimePicker(
          context: context,
          initialTime: TimeOfDay(hour: 00 , minute: 15),
          initialEntryMode: TimePickerEntryMode.input,
          builder: (context, childWidget) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  // Using 24-Hour format
                  alwaysUse24HourFormat: true),
              // If you want 12-Hour format, just change alwaysUse24HourFormat to false or remove all the builder argument
              child: childWidget!);
}
          );
    if (result != null) {
      setState(() {
        _selectedTime2 = result.format(context);
      });
    }
  }
  

  Future<void> zeraHorario() async {
    if(_selectedTime != null){
      setState((){
        _selectedTime = null;
      });
    }
  }

  Widget buildMedName() {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nome do Remédio',
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
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black87), //TextStyle
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 14),
            ),
          ),
        )
      ],
    );
  }
  String? _dropDownValue;
  Widget buildDose() {
    return DropdownButton(
      hint: _dropDownValue == null
          ? Text('Dosagem por dia')
          : Text(_dropDownValue.toString(),
              style: TextStyle(fontSize: 16,color: Colors.white),
            ),
      isExpanded: true,
      iconSize: 30.0,
      style: TextStyle(color: Colors.white),
      dropdownColor: Colors.blue,
      items: ['1', '2', '3'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropDownValue = val.toString();
          },
        );
      },
    );
  }
  
  Widget buildMedTime() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: Row(

          children: [
            Text('Horário do Lembrete',
            style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
            const SizedBox(width:20),
            ElevatedButton(
              onPressed: _show, child: Text(_selectedTime != null ? _selectedTime! : 'Selecione o Horário!',
              style: TextStyle(fontSize: 11),), 
            ),
            // const SizedBox(width:20),
            const SizedBox(width:20),
            
          ],
        )
    ); 
  }


  String? _dropDownValue2;
  Widget buildAlarm() {
    return DropdownButton(
      hint: _dropDownValue2 == null
          ? Text('Alarme a cada')
          : Text(_dropDownValue2.toString(),
              style: TextStyle(fontSize: 16,color: Colors.white),
            ),
      isExpanded: true,
      iconSize: 30.0,
      style: TextStyle(color: Colors.white),
      dropdownColor: Colors.blue,
      items: ['5 minutos', '10 minutos', '15minutos', '20 minutos', '30 minutos'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropDownValue2 = val.toString();
          },
        );
      },
    );
  }

  Widget buildBtns() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: 200,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [RaisedButton(
          elevation: 5,
          onPressed: () => {
          },
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.white,
          child: Text(
            'Cadastrar',
            style: TextStyle(
              color: Color(0xff7e84b3),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width:20),
        RaisedButton(

          elevation: 5,
          onPressed: () => {
            
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => (HomeScreen()),
                  ),
                ),
             
            
           
          },
          padding: EdgeInsets.all(21),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.red,
          child: Text(
            'Cancelar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              
            ),
          ),
        )]
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
                // ignore: prefer_const_constructors
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
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text(
                        'Cadastrar Remédio',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50),
                      buildMedName(),
                      SizedBox(height: 40),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                          "Dosagem",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,),
                      )),
                      
                      buildDose(),
                      SizedBox(height: 20),
                      buildMedTime(),
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                          "Alarme",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,),
                      )),

                      buildAlarm(),
                      buildBtns(),
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