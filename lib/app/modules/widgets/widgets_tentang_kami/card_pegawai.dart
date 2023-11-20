import 'package:flutter/material.dart';

class CardTentangKami extends StatelessWidget {
  const CardTentangKami({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
        physics: NeverScrollableScrollPhysics(), // Nonaktifkan scroll
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Jumlah kolom dalam grid
          crossAxisSpacing: 10.0, // Jarak antar kolom
          mainAxisSpacing: 10.0, // Jarak antar baris
        ),
        itemCount: 6, // Jumlah item dalam grid
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 10),
                Text(
                  'Item $index', // Ganti dengan informasi item yang sesuai
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      );
  }
}