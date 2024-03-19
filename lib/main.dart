import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lista de tareas'),
      ),
      body: Column(
        children: [
           ListTile(
            title:  const Text("Lista de pendientes"),
            subtitle: const Text("Universidad de Medellin"),
            onTap: () {
              print("HOLAMUNDO");
            },
            

          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Nueva Tarea'),
                    content:  Column(
                      children: [
                        const Text("NOMBRE"),
                        TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            labelText:  'Nombre corto',
                            border: OutlineInputBorder(),
                          )
                        ),
                        const Text("DESCRIPCION"),
                        TextField(
                          controller: _controller2,
                          decoration: const InputDecoration(
                            labelText: "Pequeña descripcion",
                            border: OutlineInputBorder()
                          ),
                        
                        )
                    ],),      
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          String textoIngresado = _controller.text;
                          Navigator.of(context).pop();
                          _controller.clear();
                          print(textoIngresado);
                        },
                        child: const Text('Aceptar'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Agregar'),
          ),
        ],
      ),
    );
  }
}
