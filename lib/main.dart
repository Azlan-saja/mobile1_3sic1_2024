import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController panjang = TextEditingController();
    TextEditingController lebar = TextEditingController();
    TextEditingController luas = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi 3SIC1'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Hitung Persegi Panjang',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: panjang,
                  decoration: const InputDecoration(
                    labelText: 'Nilai Panjang',
                    icon: Icon(Icons.edit_note),
                    hintText: '0',
                    helperText: 'Input angka,',
                    suffixText: 'cm',
                  ),
                  maxLength: 4,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: lebar,
                  decoration: const InputDecoration(
                    labelText: 'Nilai Lebar',
                    icon: Icon(Icons.edit_note),
                    hintText: '0',
                    helperText: 'Masukkan nilai lebar',
                    suffixText: 'cm',
                  ),
                  maxLength: 4,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                  ),
                  onPressed: () {
                    double hasil = 0;
                    hasil =
                        double.parse(panjang.text) * double.parse(lebar.text);
                    luas.text = hasil.toString();
                  },
                  child: const Text('Luas'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: luas,
                  decoration: const InputDecoration(
                    labelText: 'Hasil Luas',
                    icon: Icon(Icons.library_books),
                    hintText: '0',
                    helperText: 'Rumus PxL',
                    suffixText: 'cm',
                  ),
                  readOnly: true,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: 'user'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.logout,
                ),
                label: 'keluar'),
          ],
        ),
      ),
    );
  }
}
