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
                    title: const Text('Nombre de la tarea'),
                    content: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: 'Ingrese el nombre de la tarea',
                        border: OutlineInputBorder(),
                      ),

                    ),
                    //Aqui tengo que construir lo de la descripcion 
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
          //const Text("universidad de medellin")
        ],
      ),
    );
  }
}
