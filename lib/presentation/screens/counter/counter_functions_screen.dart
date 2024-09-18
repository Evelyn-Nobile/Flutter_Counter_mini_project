import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter')),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              clickCounter != 1
                  ? 'clicks'
                  : 'click', // otra opción: 'click${clickCounter == 1 ? '' : 's'}'
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 15), // Espacio entre los botones
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return; // Para que no baje menos de cero
                clickCounter--;
              });
            },
            child: const Text(
              '-',
              style: TextStyle(fontSize: 30), // Ajusta el tamaño del signo
            ),
          ),
        ],
      ),
    );
  }
}
