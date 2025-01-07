import 'package:flutter/material.dart';

import 'calculadora.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                //color: Color.fromRGBO(0, 0, 139, 1),
                child: const Text(''),
              ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      // color: Colors.blue,
                      // child: const Text('Calendário de Corridas'
                      // ,style: TextStyle(color: Colors.white),)
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all( 
                          color: Colors.black, 
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black45,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(5, 15),
                          ),
                        ],
                      ),
                      child: const Calculadora()
                      ),
                    ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        // alignment: Alignment.center,
                        // color: Colors.black,
                        // child: const Text('Notícias e Atualizações'
                        //,style: TextStyle(color: Color(0xFFFFD700)),),
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                //color: Colors.yellow,
                child: const Text(
                  '',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
