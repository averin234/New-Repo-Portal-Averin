import 'package:flutter/material.dart';

class title extends StatelessWidget {
  const title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(left: 10),
      child:
      Text('Produck Averin', style: TextStyle(fontWeight: FontWeight.bold),),);
  }
}
