import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'toplocation.dart';

class RodGeoLocator extends StatefulWidget {
  const RodGeoLocator({super.key});

  @override
  State<RodGeoLocator> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RodGeoLocator> {
  Future<LocationPermission> getPermissionGeolocator() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      return permission;
    } catch (e) {
      return LocationPermission.denied;
    }
  }

  Future<String?> getLocation() async {
    try {
      LocationPermission permission = await getPermissionGeolocator();

      if (permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse) {
        Position? position = await Geolocator.getCurrentPosition();
        List<Placemark> address = await placemarkFromCoordinates(
            position.latitude, position.longitude);
        return "${address[0].subAdministrativeArea}, ${address[0].isoCountryCode}";
      } else if (permission == LocationPermission.deniedForever) {
        return Geolocator.openLocationSettings().toString();
      }
    } on LocationServiceDisabledException catch (e) {
      e;
      return "Erro Inesperado";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getLocation(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return TopLocation(
            texto: snapshot.data?.toString().toUpperCase() ?? "none",
          );
        } else if (snapshot.hasError) {
          print(snapshot);
          return const TopLocation(texto: "Erro Inesperado");
        } else {
          return const TopLocation(texto: "Aguarde");
        }
      },
    );
  }
}
