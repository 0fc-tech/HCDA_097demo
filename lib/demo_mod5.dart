import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Mod5App());

class Mod5App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black)),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grand voyageur'.toUpperCase()),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CardGrandVoyageur(),
                SizedBox(height: 24.0,),
                Image.network(
                    width: 200,
                    height: 200,
                    "https://s2.qwant.com/thumbr/288x288/d/2/e9695e856906428cdbd4b50bbceb6bf46893a971afdf96fde6d9baa272ebd2/th.jpg?u=https%3A%2F%2Ftse.mm.bing.net%2Fth%3Fid%3DOIP.TT2eRyR-Cp5T5egTorcXAwAAAA%26pid%3DApi&q=0&b=1&p=0&a=0"),
                SizedBox(height: 24.0,),
                FilledButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.wallet),
                    label: Text("Ajouter à Google Wallet")),
                SizedBox(height: 24.0,),
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  height: 70.0,
                  child: Center(
                    child: Text("Mes points primes : 3008",
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 22.0
                      ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardGrandVoyageur extends StatelessWidget {
  const CardGrandVoyageur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 240.0,
      ),
    );
  }
}

