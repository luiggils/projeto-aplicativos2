import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contatos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Lista De Contatos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Contact> contacts = [
    Contact(initial: 'C', name: 'Tia Carmem'),
    Contact(initial: 'L', name: 'Dona Lúcia'),
    Contact(initial: 'A', name: 'Antônia'),
    Contact(initial: 'E', name: 'Eduarda'),
    Contact(initial: 'I', name: 'Isabela'),
    Contact(initial: 'M', name: 'Vó Maria'),
    Contact(initial: 'L', name: 'Vô Luiz'),
    Contact(initial: 'R', name: 'Xis Rei'),
    Contact(initial: 'T', name: 'Vh Telhas'),
    Contact(initial: 'S', name: 'Fármacia São João'),
    Contact(initial: 'R', name: 'Droga Raia'),
    Contact(initial: 'Z', name: 'Zeladoria'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar Contatos',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple[200],
                    child: Text(
                      contact.initial,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(contact.name),
                  onTap: () {
                      // Ação ao clicar no contato
                      print('Contato clicado: ${contact.name}');
                }
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class Contact {
  final String initial;
  final String name;

  Contact({required this.initial, required this.name});
}