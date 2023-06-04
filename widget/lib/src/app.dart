import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Color(0xffaF0050), Color(0x00ef5350)],
                begin: Alignment.topCenter)),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200.0),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Datos Widgets'),
              subtitle: Text('Tarea 6-Unidad 2'),
              onTap: () {},
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Correo Electronico',
                suffixIcon: Icon(Icons.email),
                hintText: 'Ingrese su contraseña'
              ),
            ),
            TextField(
              obscureText: true,
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                hintText: 'Ingrese su contraseña',
                suffixIcon: Icon(Icons.star_half),
                helperText: 'Minimo 8 caracteres',
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
