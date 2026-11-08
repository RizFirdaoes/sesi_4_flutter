import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key, required this.namaKasir, required this.kodeKasir});

  final String namaKasir;
  final String kodeKasir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Utama',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 12,
          children: [
            SizedBox(height: 25),
            Text(
              'Selamat Datang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama Kasir : $namaKasir'),
                Text('Kode Kasir : $kodeKasir'),
              ],
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
