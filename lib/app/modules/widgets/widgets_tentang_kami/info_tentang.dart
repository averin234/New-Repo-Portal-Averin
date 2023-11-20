import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infotentang extends StatelessWidget {
  const infotentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Text('AVERIN INFORMATIKA TEKNOLOGI', style: TextStyle(fontWeight: FontWeight.bold)),
      Text('Berdiri Sejak 1999'),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text('VISI ', style: TextStyle(color: Colors.lightBlueAccent)),
          Text('&'),
          Text(' MISI', style: TextStyle(color: Colors.redAccent)),
          ],
        ),
        Text('Hadir dalam rangka ikut berpartisipasi membangun dan memajukan telematika di Indonesia Menggunakan teknologi yang tepat guna sehingga para mitra kerja memperoleh hasil yang maksimal.', textAlign: TextAlign.justify,),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Keunggulan ', style: TextStyle(color: Colors.lightBlueAccent)),
            Text('Produk'),
            Text(' Averin', style: TextStyle(color: Colors.redAccent)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text('Kelengkapan Product Averin', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Seluruh Produk Averin dilengkapi dengan Manual Book, Technical Book, CD Aplikasi, dan beberapa telah terdaftar di Hak Cipta Intelektual (HAKI)',  textAlign: TextAlign.justify,),
        SizedBox(
          height: 10,
        ),
        Text('Webbase Aplication', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Pengembangan produk menggunakan Teknologi berbasis Webbase Aplication dan Mobile Application',  textAlign: TextAlign.justify,),
        SizedBox(
          height: 10,
        ),
        Text('Kelompok Produk', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Product AVerin dibagi menjadi 3 Katagori yaitu : Product Healthcare, Office Automation, Enginering & ERP',  textAlign: TextAlign.justify,),
        SizedBox(
          height: 10,
        ),
        Text('Masterpiece Averin', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Product AVerin dibagi menjadi 3 Katagori yaitu : Product Healthcare, Office Automation, Enginering & ERP',  textAlign: TextAlign.justify,),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
