import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  Person person = new Person(size: 180);
  print(person.name);
}

class Person {
  String? name;
  int? age;
  String? sex;
  int? size;

  Person({this.name, this.age, this.sex, this.size});
}
Person person1= new Person(name: "Emile", age: 19, sex: "M", size: 170 );
Person person2= new Person(name: "Boris", age: 20, sex: "M", size: 180 );
Person person3= new Person(name: "Exaucé", age: 25, sex: "M", size: 175 );
Person person4= new Person(name: "Roméo", age: 24, sex: "M", size: 185 );
Person person5= new Person(name: "Ismael", age: 20, sex: "M", size: 188 );


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var names=[person1,person2,person3,person4,person5];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mon app"),
          backgroundColor: Color(0xFFB8A356),
        ),
        body:  ListView(
            children: [

              ... names.map((e) =>
                  ListTile(
                    leading: CircleAvatar(backgroundImage:  NetworkImage ('https://img.freepik.com/free-photo/rear-view-content-teenage-girl-with-toothy-smile_273609-44948.jpg?t=st=1709821602~exp=1709825202~hmac=2089727639d5f11526abfb6ed853e72240a62a621e0841c4eb957d413bf88987&w=740'),),
                    title: Text(e.name.toString() ),
                    subtitle: Text("Agé(e) de "+e.age.toString()+" ,de sexe "+e.sex.toString()+" et a une taille de  "+e.size.toString()+" cm"),
                  )
              ).toList()

            ]

        ),
        bottomNavigationBar:  NavigationBar(
          selectedIndex: 1,

          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'search',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Favoris',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.save),
          onPressed: () {  },),
      ),
    );
  }
}