import 'dart:io';

void main() {
  // Numbers
  int a = 10;
  double b = 10;

  // Strings
  String nombre = 'Tony';
  String nombreMultilinea = ''' 
          ola
          ola
          ''';

  // Boolean
  bool activo = false;
  bool corriendo = null;

  // Array

  var lista = [];
  lista..add("Hola")..add("CARLOS");
  List<String> personajes = ['Superman', 'Batman'];
  // List<String> personajes2 = new List(3);
  List<String> personajes3 = new List();
  personajes3.add('pepes');
  personajes3.add('Carlos');
  personajes3..add('Batmaan')..add('Superman')..add('Pepes');

  // Sets

  var villanos2 = {'Carlos', 'Maria', 'Maria'};
  Set<String> villanos = {'lex', 'nuevo'};
  villanos..add('pepe')..add('pepe');

  // Maps

  var ironMan = {'nombre': 'Tony', 'poder': 'Inteligencia y dinero'};
  Map<String, String> ironMan2s = {
    'nombre': 'Tony',
    'poder': 'Inteligencia y dinero'
  };
  final int nuevo = 1;
  const int nuevo2 = 1;
  print(a);
  print(b);

  int resultado = 10 ~/ 4; //Divicion entera exacta

  int bb = 10 % 3;
  print(bb);

  int variable = 14;
  variable ??= 20; // Si variable es null asiganar 20

  stdout.writeln('Hola mundo');

  String nombre2 = stdin.readLineSync();
  print(nombre2);

  // saludar2(mensaje: 'Carlos', nombre: )
}

// int saludar() {
//   return 0;
// }

void saludar(String mensaje, [String nombre = 'Insertar nombre']) {
  print('$mensaje $nombre');
}

void saludar2({String mensaje, String nombre = 'Insertar nombre'}) {
  print('$mensaje $nombre');
}
