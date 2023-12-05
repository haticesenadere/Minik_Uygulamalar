import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medium_bloc/sayacmodel.dart';

class ikinciSayfa extends StatelessWidget {
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
            BlocBuilder<SayacCubit, int>(builder: (context, sayacDegeri) {
              return Text(
                "$sayacDegeri",
                style: const TextStyle(fontSize: 30),
              );
            }),
            ElevatedButton(
              onPressed: () {
                context.read<SayacCubit>().sayaciArttir();
              },
              child: const Text("Sayaç Arttır. "),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SayacCubit>().sayaciAzalt(2);
              },
              child: const Text("Sayaç Azalt. "),
            )
          ],
        ),
      ),
    );
  }
}
