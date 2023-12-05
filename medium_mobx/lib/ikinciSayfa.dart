import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:medium_mobx/sayacmodel.dart';

import 'sayacmodel.dart';

class ikinciSayfa extends StatelessWidget {
  var sayacModelNesne =
      sayacModel(); //sayacmodel sayfasında ki methodlarıma ulaşmak için değişkenimi atadım.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("İkinci Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) {
                return Text(
                  "${sayacModelNesne.sayac}",
                  style: const TextStyle(
                    fontSize: 36,
                  ),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  sayacModelNesne.sayaciArttir();
                },
                child: const Text("Sayaç Arttır. ")),
            ElevatedButton(
                onPressed: () {
                  sayacModelNesne.sayaciAzalt(2);
                },
                child: const Text("Sayaç Azalt. "))
          ],
        ),
      ),
    );
  }
}
