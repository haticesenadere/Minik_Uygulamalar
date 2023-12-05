// ignore: file_names
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login/Sonuc_Ekrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({super.key});

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  var tfTahmin = TextEditingController();
  int rastgeleSayi = 0;
  int kalanHak = 5;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rastgeleSayi = Random().nextInt(101);
    print("Rastegele Sayı : $rastgeleSayi");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Kalan Hak : $kalanHak",
              style: const TextStyle(color: Colors.purpleAccent),
            ),
            Text(
              "Yardım : $yonlendirme",
              style: const TextStyle(
                color: Color.fromARGB(255, 31, 3, 36),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: tfTahmin,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    labelText: "Tahmin",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    kalanHak = kalanHak - 1;
                  });
                  int tahmin = int.parse(tfTahmin.text);
                  if (tahmin == rastgeleSayi) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SonucEkrani(sonuc: true)));
                    return;
                  }

                  if (tahmin > rastgeleSayi) {
                    setState(() {
                      yonlendirme = "Tahmini Azalt";
                    });
                  }

                  if (tahmin < rastgeleSayi) {
                    setState(() {
                      yonlendirme = "Tahmini Arttır";
                    });
                  }

                  if (kalanHak == 0) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SonucEkrani(sonuc: false)));
                  }
                  tfTahmin.text = "";
                },
                child: const Text("Tahmin Et"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
