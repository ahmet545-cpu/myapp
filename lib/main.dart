import 'package:flutter/material.dart';

void main() {
  runApp(MHRSApp());
}

class MHRSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MHRS',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 227, 227),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Merkezi Hekim Randevu Sistemi'),
        actions: [Icon(Icons.notifications_none)],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "HOŞ GELDİNİZ,\NAZLIM BEZEYİŞ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Hastane,Polikinlik,Hekim Arayin',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.person),
              label: Text('Aile Hekimi Randevusu Al'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: Size(double.infinity, 80),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.person),
              label: Text('hastane randevusu al'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, 80),
              ),
            ),
            SizedBox(height: 30),

            Text(
              "Yaklaşan Randevular",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 150),
            Text(
              "yaklaşan randevunuz bulunmamaktadır",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 54,
                  width: 1600,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                176,
                                201,
                                214,
                              ),
                            ),
                            onPressed: () {},
                            child: Icon(Icons.home),
                          ),
                          Text("Ana sayfa"),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.calendar_today),
                          ),
                          Text("randevularım"),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.description),
                          ),
                          Text("taleplerim"),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.menu),
                          ),
                          Text("menü"),
                        ],
                      ),

                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
