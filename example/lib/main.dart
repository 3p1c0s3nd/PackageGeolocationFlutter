import 'package:flutter/material.dart';
import 'package:geolocation_info_ip/geolocation_info_ip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String ip = '';
  Future<void> cargar() async {
    GeolocationModel apiGeo = await ApiGeo.getGeolocation();
    setState(() {
      ip = apiGeo.ip;
    });
    print(apiGeo);
  }

  @override
  void initState() {
    super.initState();
    cargar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Text('IP: ${ip}'),
      ),
    );
  }
}
