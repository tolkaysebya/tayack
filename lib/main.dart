import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme:  ThemeData.dark(),
    
    );
    
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,  
        title: const Text("321"),
        actions: [
          Icon(Icons.time_to_leave),
          Icon(Icons.message)
        ],
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){}, child: const Text("Кнопка")),
        OutlinedButton(onPressed: (){}, child:const Text("Кнопка") ),
        IconButton(onPressed: (){}, icon: Icon(Icons.add_home_work)),
        TextButton(onPressed: (){}, child: Text("Кнопка")),
        Row(
          children: [ElevatedButton(onPressed: (){}, child: const Text("Кнопка")),
        OutlinedButton(onPressed: (){}, child:const Text("Кнопка") ),
        IconButton(onPressed: (){}, icon: Icon(Icons.add_home_work)),
        TextButton(onPressed: (){}, child: Text("Кнопка")), ],
        )
      ]
      ),
      drawer: const Drawer(),
      bottomNavigationBar: const ListTile(
        title: Text("Заголовок"),
        subtitle: Text("Подзаголовок"),
        leading: Icon(Icons.account_box),
        trailing: Icon(Icons.new_label),
      ),
    );
  }
}