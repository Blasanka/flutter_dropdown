import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Person> persons = [
    Person(gender: "Male", url: "https://images.unsplash.com/photo-1555952517-2e8e729e0b44"),
    Person(gender: "Female", url: "https://images.unsplash.com/photo-1555952517-2e8e729e0b44"),
    Person(gender: "Other", url: "https://images.unsplash.com/photo-1555952517-2e8e729e0b44"),
  ];

  Person selectedPerson;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    selectedPerson = persons.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
              Text("Simple dropdown widget with string"),
              DropDown<String>(
                items: <String>["Male", "Female", "Other"],
                initialValue: "Female",
                hint: Text("Select gender"),
                onChanged: print,
              ),
              SizedBox(height: 20),
              Text("A dropdown with object and With custom widgets"),
              DropDown<Person>(
                items: persons,
//                initialValue: selectedPerson,
                hint: buildDropDownRow(persons.first),
                onChanged: (Person p) {
                  print(p.gender);
                  setState(() {
                    selectedPerson = p;
                  });
                },
                customWidgets: persons.map((p) => buildDropDownRow(p)).toList(),
                isExpanded: true,
              ),
              Text("Selected person's gender is: ${selectedPerson.gender}"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Row buildDropDownRow(Person person) {
    return Row(
      children: <Widget>[
        Expanded(child: Text(person.gender)),
        CircleAvatar(
          backgroundImage: NetworkImage(person.url),
        ),
      ],
    );
  }


}

class Person {
  final String gender;
  final String name;
  final String url;

  Person({this.name, this.gender, this.url});
}
