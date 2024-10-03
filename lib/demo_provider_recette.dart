import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=> Recette()),
      ] ,
      child: MyApp(),
)
);
class MyApp extends StatelessWidget {
  final plats = [  "Coq au vin",  "Sushi",  "Paella",  "Pizza margherita",  "Boeuf bourguignon",  "Tacos al pastor",  "Moussaka",  "Pho",  "Lasagne",  "Curry de poulet",  "Choucroute",  "Pad thaï",  "Ratatouille",  "Feijoada",  "Risotto aux champignons",  "Bibimbap",  "Bouillabaisse",  "Goulash",  "Chili con carne",  "Canard à l'orange",  "Salade niçoise",  "Bortsch",  "Tiramisu",  "Cassoulet",  "Dim sum",  "Ceviche",  "Poulet tikka masala",  "Moules-frites",  "Osso buco",  "Falafel",  "Tarte Tatin",  "Baba ganoush",  "Croissant",  "Poutine",  "Spaghetti carbonara",  "Fish and chips",  "Gazpacho",  "Crème brûlée",  "Sauerbraten",  "Mafe",  "Pierogi",  "Empanadas",  "Baklava",  "Tom yum",  "Soupe à l'oignon",  "Mole poblano",  "Wiener Schnitzel",  "Beef Wellington",  "Raclette",  "Couscous"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: PagePlats(plats: plats),
    );
  }
}

class PagePlats extends StatelessWidget {
  const PagePlats({
    super.key,
    required this.plats,
  });

  final List<String> plats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Badge(
                label: Text("${context.watch<Recette>().listePlats.length}"),
                child: Icon(Icons.list_alt))
          )
        ],
      ),
      body:ListViewPlats(plats: plats),
    );
  }
}

class ListViewPlats extends StatelessWidget {
  const ListViewPlats({
    super.key,
    required this.plats,
  });

  final List<String> plats;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: plats.length,
        separatorBuilder: (context, index) =>Divider(),
        itemBuilder: (context, index) =>
          ListTile(
            onTap: (){
              context.read<Recette>().addPlat(plats[index]);
            },
            trailing: IconButton(
                onPressed: (){
                  context.read<Recette>().removePlat(plats[index]);
                },
                icon: Icon(Icons.remove)),
            title: Text(plats[index]),
          ),
    );
  }
}

class Recette with ChangeNotifier{
  final List<String> listePlats = [];

  void addPlat(String plat){
    listePlats.add(plat);
    notifyListeners();
  }
  void removePlat(String plat){
    listePlats.remove(plat);
    notifyListeners();
  }
}






