import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue[900]!),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profil'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  width: 700,
                  height: 600,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.blue[900]!, width: 2),
                  ),
                ),
                Positioned(
                  left: 75,
                  top: 20,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.blue[900]!, width: 2),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 5,
                          top: 10,
                          child: Text(
                            'Masukkan Foto Profil',
                            style: TextStyle(
                              color: Colors.blue[900]!,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 300,
                  top: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Panjang',
                        style: TextStyle(color: Colors.blue[900]!, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 250,
                        height: 75,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.blue[900]!, width: 2),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 5,
                              top: 10,
                              child: Text(
                                'Masukkan Nama Lengkap',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 171, 171, 171),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 75,
                  top: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NIK',
                        style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 400,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.blue[900]!, width: 2),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 5,
                              top: 15,
                              child: Text(
                                'Masukkan NIK anda',
                                style: TextStyle(color: Color.fromARGB(255, 145, 145, 145), fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return SoalNo1();
                }));
              },
              child: const Text('Jawaban No 1'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SoalNo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ini jawaban nomor 1',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
