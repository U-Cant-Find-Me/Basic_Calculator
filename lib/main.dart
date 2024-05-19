import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final getFirstText = TextEditingController();
  final getSecondText = TextEditingController();
  double ans = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter Value ',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                Icon(Icons.arrow_downward,
                  color: Colors.purple       ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: getFirstText,
                decoration: const InputDecoration(
                  hintText: '0',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.cyan,
                      width: 2,
                    )
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter Another Value ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_downward,
                  color: Colors.purple,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: getSecondText,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: '0',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Colors.cyan,
                        width: 2,
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {
                  double value1 = double.parse(getFirstText.text);
                  double value2 = double.parse(getSecondText.text);
                  setState(() {
                    ans = value1 + value2;
                  });
                },
                  child: const FaIcon(FontAwesomeIcons.plus,
                    color: Colors.purple,
                  )
                ),
                ElevatedButton(onPressed: () {
                  double value1 = double.parse(getFirstText.text);
                  double value2 = double.parse(getSecondText.text);
                  setState(() {
                    ans = value1 - value2;
                  });
                },
                    child: const FaIcon(FontAwesomeIcons.minus,
                      color: Colors.purple,
                    )
                ),
                ElevatedButton(onPressed: () {
                  double value1 = double.parse(getFirstText.text);
                  double value2 = double.parse(getSecondText.text);
                  setState(() {
                    ans = value1 * value2;
                  });
                },
                    child: const FaIcon(FontAwesomeIcons.xmark,
                      color: Colors.purple,
                    )
                ),
                ElevatedButton(onPressed: () {
                  double value1 = double.parse(getFirstText.text);
                  double value2 = double.parse(getSecondText.text);
                  setState(() {
                    ans = value1 / value2;
                  });
                },
                    child: const FaIcon(FontAwesomeIcons.divide,
                      color: Colors.purple,
                    )
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Your Result is',
              style: TextStyle(
                fontSize: 25,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$ans',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
