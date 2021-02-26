import 'mi_servicio.dart';

class NuevaClase {
  String _nombre = "jose jose";
  String get nombre {
    return this._nombre;
  }
}

main() {
  final spotifyService = new MiServicio();
  spotifyService.url = "https://api.spotify.com";
  final spotifyService2 = new MiServicio();
  spotifyService2.url = "https://api.spotify.com/v3";
  print(spotifyService == spotifyService2);

  final nueva = new NuevaClase();
  print(nueva._nombre);
}
