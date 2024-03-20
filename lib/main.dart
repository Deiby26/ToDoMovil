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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String username_ = '';
  String descrip = '';
  bool? ischeked_ = false;

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
            title: Text(username_),
            subtitle: Text(descrip),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Estado de la tarea"),
                    content: Column(
                      children: [
                        CheckboxListTile(
                            title: const Text("Tarea completada"),
                            value: ischeked_,
                            onChanged: (bool? newValue) {
                              setState(() {
                                ischeked_ = newValue;
                              });
                            }),
                        TextButton(
                          style:
                              TextButton.styleFrom(backgroundColor: Colors.red),
                          onPressed: () {},
                          child: const Text(
                            "Eliminar tarea",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cerrar'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Nueva Tarea'),
                    content: Column(
                      children: [
                        const Text("NOMBRE"),
                        TextField(
                            controller: _controller,
                            decoration: const InputDecoration(
                              labelText: 'Nombre corto',
                              border: OutlineInputBorder(),
                            )),
                        const Text("DESCRIPCION"),
                        TextField(
                          controller: _controller2,
                          decoration: const InputDecoration(
                              labelText: "Pequeña descripcion",
                              border: OutlineInputBorder()),
                        )
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          String textoNombre = _controller.text;
                          String textoDescripcion = _controller2.text;
                          Navigator.of(context).pop();
                          _controller.clear();
                          _controller2.clear();
                          print(textoNombre);
                          print(textoDescripcion);
                          setState(() {
                            username_ = textoNombre;
                            descrip = textoDescripcion;
                          });
                        },
                        child: const Text('Aceptar'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Cancelar"))
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
