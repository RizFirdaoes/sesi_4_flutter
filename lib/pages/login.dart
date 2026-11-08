import 'package:flutter/material.dart';
import 'package:sesi_4/pages/home.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final namaKasirController = TextEditingController();
  final kodeKasirController = TextEditingController();

  @override
  void dispose() {
    namaKasirController.dispose();
    kodeKasirController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 8,
          children: [
            Text(
              'Nama Kasir',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextField(
              controller: namaKasirController,
              decoration: InputDecoration(hintText: 'Masukan Nama'),
            ),
            Text(
              'Kode Kasir',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextField(
              controller: kodeKasirController,
              decoration: InputDecoration(hintText: 'Masukan Kode NIP'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return HomePage(
                        namaKasir: namaKasirController.text,
                        kodeKasir: kodeKasirController.text,
                      );
                    },
                  ),
                );
              },
              child: Text(
                'Masuk',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
