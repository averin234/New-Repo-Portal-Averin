import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fitur extends StatelessWidget {
  const fitur({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 10),
        child: Row(
          children: [
            Icon(Icons.circle_outlined, size: 10, color: Colors.blue,),
            SizedBox(width: 5,),
            Text(
              'Registrasi On Line',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 12,),
              maxLines: 4, // Ganti angka sesuai dengan jumlah maksimum baris yang Anda inginkan
              overflow: TextOverflow.ellipsis, // Jika teks melebihi jumlah maksimum baris, tampilkan elipsis (...)
            ),
          ],
        ),
      ),
    );
  }
}