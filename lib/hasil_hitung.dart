import 'package:flutter/material.dart';
import 'dart:math';


class hasilHitung extends StatelessWidget {

  hasilHitung({@required this.tinggi_badan, @required this.berat_badan});
  final int tinggi_badan;
  final int berat_badan;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="Gendut BGT";
    else if (bmi>=23) cBMI="Gendut";
    else if (bmi>=17.5) cBMI="Normal";
    else cBMI="Kurus";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
      alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Range Nilai BMI Yang Normal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),

          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: ElevatedButton(
          //color: Colors.black54,
          child: Text('Kembali',
            style: TextStyle(
              fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}