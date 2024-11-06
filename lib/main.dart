import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://www.adslzone.net/app/uploads-adslzone.net/2021/08/xokas.jpg"),
          fit: BoxFit.cover, // Ajuste para que la imagen cubra todo el fondo
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Etiqueta(), // Título "Sign in"
          SizedBox(height: 20), // Espacio entre el título y el campo de usuario
          CampoUser(),
          SizedBox(
              height: 10), // Espacio entre los campos de usuario y contraseña
          CampoPassword(),
          SizedBox(
              height: 20), // Espacio entre el campo de contraseña y el botón
          BotonEntrar(), // Botón de "Entrar"
        ],
      ),
    );
  }
}

class Etiqueta extends StatelessWidget {
  const Etiqueta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          "Sign in",
          style: TextStyle(fontSize: 25.0, color: Colors.blue),
        ),
      ),
    );
  }
}

class CampoUser extends StatelessWidget {
  const CampoUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Username',
          filled: true,
          fillColor: Colors.white.withOpacity(0.8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        ),
      ),
    );
  }
}

class CampoPassword extends StatelessWidget {
  const CampoPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        obscureText: true, // Oculta el texto para la contraseña
        decoration: InputDecoration(
          hintText: 'Password',
          filled: true,
          fillColor: Colors.white.withOpacity(0.8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        ),
      ),
    );
  }
}

class BotonEntrar extends StatelessWidget {
  const BotonEntrar({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Aquí puedes agregar la funcionalidad del botón, como navegación o validación de datos
        print("Botón Entrar presionado");
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        "Entrar",
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );
  }
}
