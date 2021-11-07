import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          //MENGGUNAKAN COLUMN KARENA ADA DUA OBJEK YANG INGIN DIPISAHKAN
          //PERTAMA ADALAH HEADER BESERTA SUMMARYNYA DAN YANG KEDUA ADALAH HISTORY
          child: Column(
            children: <Widget>[
              textAtas(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      textKelvin(),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      textReamur(),
                    ],
                  ),
                ],
              ),
              textBawah()
            ],
          ),
        ),
      ),
    );
  }
}

//KARENA INI SIFATNYA REUSABLE, MAKA KITA MEMINTA 3 DATA: TITLE, DESC, DAN PRICE

Widget textAtas() {
  return Container(
    alignment: Alignment.topCenter,
    child: Column(
      children: [
        TextFormField(
            decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Masukkan suhu dalam celcius',
        )),
      ],
    ),
  );
}

Widget textKelvin() {
  return Container(
    margin: EdgeInsets.only(top: 230),
    alignment: Alignment.center,
    child: Column(
      children: <Widget>[
        Text(
          'Suhu Dalam Kelvin',
          style: TextStyle(fontSize: 12),
        ),
        Divider(height: 20, thickness: 1),
        Text(
          '150',
          style: TextStyle(fontSize: 30),
        ),
      ],
    ),
  );
}

Widget textReamur() {
  return Container(
    margin: EdgeInsets.only(top: 230),
    alignment: Alignment.center,
    child: Column(
      children: <Widget>[
        Text(
          'Suhu Dalam Kelvin',
          style: TextStyle(fontSize: 12),
        ),
        Divider(height: 20, thickness: 1),
        Text(
          '200',
          style: TextStyle(fontSize: 30),
        ),
      ],
    ),
  );
}

Widget textBawah() {
  return Container(
    margin: EdgeInsets.only(top: 300),
    alignment: Alignment.bottomCenter,
    child: Container(
      child: Column(
        children: <Widget>[
          ButtonTheme(
            minWidth: double.infinity,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                'konversi',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    ),
  );
}
