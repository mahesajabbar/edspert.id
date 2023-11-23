import 'package:flutter/material.dart';

void main() {
  runApp(const DaftarScreen());
}

class DaftarScreen extends StatelessWidget {
  const DaftarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daftar'),
        ),
        body: const Daftar(),
      ),
    );
  }
}

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final TextEditingController _namaLengkapController = TextEditingController();
  final TextEditingController _nipController = TextEditingController();
  final TextEditingController _noHpController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _konfirmasiPasswordController =
      TextEditingController();
  String _errorText = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _namaLengkapController,
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
                errorText: _errorText,
              ),
            ),
            TextField(
              controller: _nipController,
              decoration: const InputDecoration(
                labelText: 'NIP',
              ),
            ),
            TextField(
              controller: _noHpController,
              decoration: const InputDecoration(
                labelText: 'Nomor Handphone*',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            TextField(
              controller: _konfirmasiPasswordController,
              decoration: const InputDecoration(
                labelText: 'Konfirmasi Password*',
              ),
            ),
            const SizedBox(height: 24.0),
            const Text('Unggah foto'),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                if (_passwordController.text !=
                    _konfirmasiPasswordController.text) {
                  setState(() {
                    _errorText = 'Password dan Konfirmasi Password tidak sama';
                  });
                } else {
                  setState(() {
                    _errorText = '';
                  });
                }
              },
              child: const Text('Continue'),
            ),
            const SizedBox(height: 24.0),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Sudah mempunyai akun? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
