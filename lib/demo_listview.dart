import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  final plats = [  "Coq au vin",  "Sushi",  "Paella",  "Pizza margherita",  "Boeuf bourguignon",  "Tacos al pastor",  "Moussaka",  "Pho",  "Lasagne",  "Curry de poulet",  "Choucroute",  "Pad thaï",  "Ratatouille",  "Feijoada",  "Risotto aux champignons",  "Bibimbap",  "Bouillabaisse",  "Goulash",  "Chili con carne",  "Canard à l'orange",  "Salade niçoise",  "Bortsch",  "Tiramisu",  "Cassoulet",  "Dim sum",  "Ceviche",  "Poulet tikka masala",  "Moules-frites",  "Osso buco",  "Falafel",  "Tarte Tatin",  "Baba ganoush",  "Croissant",  "Poutine",  "Spaghetti carbonara",  "Fish and chips",  "Gazpacho",  "Crème brûlée",  "Sauerbraten",  "Mafe",  "Pierogi",  "Empanadas",  "Baklava",  "Tom yum",  "Soupe à l'oignon",  "Mole poblano",  "Wiener Schnitzel",  "Beef Wellington",  "Raclette",  "Couscous"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body:ListView.separated(
            itemCount: plats.length,
            separatorBuilder: (context, index) =>Divider(),
            itemBuilder: (context, index) =>
              ListTile(
                title: Text(plats[index]),
              ),
        ),
      ),
    );
  }
}
