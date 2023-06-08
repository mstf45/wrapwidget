import 'package:flutter/material.dart';

class WrapWidgetKullanimi extends StatelessWidget {
  const WrapWidgetKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget Kullanımı'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            direction: Axis.vertical,
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < Colors.primaries.length/4; i++)
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.primaries[i],
                  ),
                  child: Center(
                    child: Text(
                      i.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
