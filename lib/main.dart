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
  String aletarVacio = '';
  bool isChecked_ = false;
  bool ischeked2 = false;

  List<Widget> contenedor = [];
  int _widgetCount = 0;

  void eliminarElemento(Key key) {
    setState(() {
      contenedor.removeWhere((widget) => widget.key == key);
    });
  }

  void addtask() {
    setState(() {
      _widgetCount++;
      Key newKey = UniqueKey();
      contenedor.add(
        ListTile(
          key: newKey,
          title: Text(username_),
          subtitle: Text(descrip),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Estado de la tarea"),
                  content: StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Column(
                        children: [
                          CheckboxListTile(
                            title: const Text("Tarea completada"),
                            value: isChecked_,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isChecked_ = newValue!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            value: ischeked2,
                            title: const Text('Tarea incompleta'),
                            onChanged: (bool? newValue2) {
                              setState(() {
                                ischeked2 = newValue2!;
                              });
                            },
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                              eliminarElemento(newKey);
                            },
                            child: const Text(
                              "Eliminar tarea",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        isChecked_ = false;
                        ischeked2 = false;
                      },
                      child: const Text('Cerrar'),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (isChecked_ == true && ischeked2 == true) {
                          } else if (isChecked_ == true) {
                            Navigator.of(context).pop();
                          } else if (ischeked2 == true) {
                            Navigator.of(context).pop();
                          }
                        });
                      },
                      child: const Text("Aceptar"),
                    )
                  ],
                );
              },
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Lista de Tareas'),
      ),
      body: Column(
        children: [
          Column(
            children: contenedor,
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
                        TextFormField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            labelText: 'Nombre corto',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const Text("DESCRIPCION"),
                        TextField(
                          controller: _controller2,
                          decoration: const InputDecoration(
                            labelText: "Pequeña descripcion",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Text(aletarVacio),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          String textoNombre = _controller.text;
                          String textoDescripcion = _controller2.text;
                          _controller.clear();
                          _controller2.clear();
                          setState(() {
                            if (textoNombre == null || textoNombre.isEmpty) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Error'),
                                    content: const Text(
                                      'El nombre no debe estar vacío',
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Cancelar'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              Navigator.of(context).pop();
                              username_ = textoNombre;
                              descrip = textoDescripcion;
                              addtask();
                            }
                          });
                        },
                        child: const Text('Aceptar'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {


                            
                            Navigator.of(context).pop();
                          });
                        },
                        child: const Text("cancel"),
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
