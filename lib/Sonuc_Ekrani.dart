// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SonucEkrani extends StatefulWidget {
  SonucEkrani({super.key, required this.sonuc});
  bool sonuc;
  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 213, 118, 230),
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 99, 0, 0),
            fontSize: 20,
            fontStyle: FontStyle.italic));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuç Ekranı"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.sonuc
                ? Image.asset("asset/true.jpg")
                : Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset("asset/false.jpg"),
                  ),
            Text(
              widget.sonuc ? "KAZANDINIZ" : "KAYBETTİNİZ",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: style,
                onPressed: () {
                  print("Tekrar denendi.");
                  Navigator.pop(context);
                },
                child: const Text(
                  "Tekrar Dene",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
