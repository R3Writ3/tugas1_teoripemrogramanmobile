import 'package:flutter/material.dart';

void main() {
  runApp(const Aplikasiku());
}

class Aplikasiku extends StatelessWidget {
  const Aplikasiku({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
       debugShowCheckedModeBanner: false,
      home: HalamanLogin(),
    );
  }
}

class HalamanLogin extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tugas 1 Mobile',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'arial',
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color(0xFF1E3A8A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue[50],  
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blueAccent, width: 2),
              ),
              child: Column(
                children: [
                  Text(
                    'Menu Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                      color: Color(0xFF333333),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HalamanDashboard()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Color(0xFF333333)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFE6F7FF),
    );
  }
}



class HalamanDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3A8A),
        title: Center(
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'arial',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: Size(double.infinity, 50),
                  padding: EdgeInsets.symmetric(horizontal: 16.0), 
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanKelompok()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '1. Data Kelompok',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'arial',
                      color: Color(0xFF1E3A8A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: Size(double.infinity, 50),
                  padding: EdgeInsets.symmetric(horizontal: 16.0), 
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanHitung()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '2. Penjumlahan dan Pengurangan',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'arial',
                      color: Color(0xFF1E3A8A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: Size(double.infinity, 50),
                  padding: EdgeInsets.symmetric(horizontal: 16.0), 
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Halamanganjilgenap()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '3. Penentuan Ganjil atau Genap',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'arial',
                      color: Color(0xFF1E3A8A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFE6F7FF),
    );
  }
}



class HalamanKelompok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3A8A),
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
          child: Text(
            'Data Kelompok',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'arial',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/image1.jpg'),
                      ),
                      SizedBox(width: 20), 
                      Expanded(
                        child: Text(
                          'Rafly Hersa Pratama (124220011)',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), 

            
            SizedBox(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/image2.jpg'),
                      ),
                      SizedBox(width: 20), 
                      Expanded(
                        child: Text(
                          'Raden Muhammad Argo Faiz Miftah (124220015)',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

           
            SizedBox(
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/image3.jpg'),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Wahyu Widiasmoro (124220126)',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFE6F7FF),
    );
  }
}



class HalamanHitung extends StatefulWidget {
  @override
  _HalamanHitungState createState() => _HalamanHitungState();
}

class _HalamanHitungState extends State<HalamanHitung> {
  final TextEditingController angka1penjumlahan = TextEditingController();
  final TextEditingController angka2penjumlahan = TextEditingController();
  final TextEditingController angka1pengurangan = TextEditingController();
  final TextEditingController angka2pengurangan = TextEditingController();

  String additionResult = '';
  String subtractionResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penjumlahan dan Pengurangan',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'arial',
          ),
        ),
      ), 
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              
              Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color.fromARGB(255, 142, 243, 33), width: 2),
                ),
                child: Column(
                  children: [
                    Text(
                      'Penjumlahan',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    TextField(
                      controller: angka1penjumlahan,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Masukkan angka pertama'),
                    ),
                    TextField(
                      controller: angka2penjumlahan,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Masukkan angka kedua'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        int num1 = int.parse(angka1penjumlahan.text);
                        int num2 = int.parse(angka2penjumlahan.text);
                        setState(() {
                          additionResult = 'Hasil Penjumlahan: $num1 + $num2 = ${num1 + num2}';
                        });
                      },
                      child: Text('Hitung Penjumlahan',
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                    ),
                    SizedBox(height: 20),
                    Text(
                      additionResult,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              
           
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: Column(
                  children: [
                    Text(
                      'Pengurangan',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextField(
                      controller: angka1pengurangan,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Masukkan angka pertama'),
                    ),
                    TextField(
                      controller: angka2pengurangan,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Masukkan angka kedua'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        int num1 = int.parse(angka1pengurangan.text);
                        int num2 = int.parse(angka2pengurangan.text);
                        setState(() {
                          subtractionResult = 'Hasil Pengurangan: $num1 - $num2 = ${num1 - num2}';
                        });
                      },
                      child: Text('Hitung Pengurangan',
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                    ),
                    SizedBox(height: 20),
                    Text(
                      subtractionResult,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), backgroundColor: Color(0xFFE6F7FF),
    );
  }
}

class Halamanganjilgenap extends StatefulWidget {
  @override
  _HalamanganjilgenapState createState() => _HalamanganjilgenapState();
}

class _HalamanganjilgenapState extends State<Halamanganjilgenap> {
  final TextEditingController numberController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penentuan Ganjil atau Genap',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Bilangan GENAP adalah bilangan asli yang bisa dibagi dua tanpa sisa, sedangkan bilangan GANJIL adalah bilangan asli yang tidak bisa dibagi dua. Ciri-ciri bilangan genap dan ganjil dapat dilihat dari angka satuannya. Bilangan genap memiliki angka satuan 0, 2, 4, 6, atau 8, sedangkan bilangan ganjil memiliki angka satuan 1, 3, 5, 7, atau 9.',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'arial',
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'YUK KITA CEK SAMA-SAMA !',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'arial',
                  color: Color(0xFF333333)
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 30),
            
             
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.yellow[100],  
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.yellow[700]!, width: 2),
              ),
              child: Column(
                children: [
                  TextField(
                    controller: numberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Masukkan angka'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      int number = int.parse(numberController.text);
                      setState(() {
                        result = 'Angka $number merupakan bilangan ' +
                            ((number % 2 == 0) ? 'genap' : 'ganjil');
                      });
                    },
                    child: Text('Cek Ganjil/Genap'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hasil: $result',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ) ,backgroundColor: Color(0xFFE6F7FF),
    );
  }
}