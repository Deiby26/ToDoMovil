import 'package:flutter/material.dart';
import 'controller/functions.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const data = 'UNIVERSIDAD DE MEDELLIN!';
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Lista de Tareas"),),
        body: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: const [
                Text("Tarea 1 "),
                Text("Tarea 2 "),
                Text("Tarea 3")],
            ),
             TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Formulario()),
                );

              },
               child: 
               const Text("Agregar", style: TextStyle(color: Colors.white)))
          
          ],
        )
        
      ),
    );
  }
}



class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    String data = "holamundo";
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(data),
        ),
      ),
    );
  }
}



