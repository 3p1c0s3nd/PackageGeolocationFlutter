# geolocation_info_ip

Este package permite obtener informacion de la ip donde el dispositivo se encuentra conectado a internet.

```json
{
"ip": "xx.xx.xx.xx",
"network": "xx.xx.xx.xx/25",
"version": "IPv4",
"city": "Bogota",
"region": "Bogota D.C.",
"region_code": "DC",
"country": "CO",
"country_name": "Colombia",
"country_code": "CO",
"country_code_iso3": "COL",
"country_capital": "Bogota",
"country_tld": ".co",
"continent_code": "SA",
"in_eu": false,
"postal": "XXXXXX",
"latitude": x.xxxxx,
"longitude": -xx.xxxx,
"timezone": "America/Bogota",
"utc_offset": "-xx00",
"country_calling_code": "+57",
"currency": "COP",
"currency_name": "Peso",
"languages": "es-CO",
"country_area": xxxxxxx,
"country_population": xxxxxxxx,
"asn": "XXXXXXXX",
"org": "XXXXXXXXXX"
}
```


## Example


```dart
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
  String ip = '';//Obtenemos solo la ip
  Future<void> cargar() async {
    GeolocationModel apiGeo = await ApiGeo.getGeolocation();
    setState(() {
      ip = apiGeo.ip;
    });
    //print(apiGeo);
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

```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
# PackageGeolocationFlutter
