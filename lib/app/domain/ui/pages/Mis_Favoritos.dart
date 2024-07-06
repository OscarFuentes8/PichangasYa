import 'package:flutter/material.dart';

class CanchaFavorita {
  final String nombreUsuario;
  final String nombreCancha;
  final String ubicacion;

  CanchaFavorita({
    required this.nombreUsuario,
    required this.nombreCancha,
    required this.ubicacion,
  });
}

List<CanchaFavorita> canchasFavoritas = [
  CanchaFavorita(
    nombreUsuario: 'Rodrigo',
    nombreCancha: 'Cancha A',
    ubicacion: 'Calle Principal 123',
  ),
  CanchaFavorita(
    nombreUsuario: 'Rodrigo',
    nombreCancha: 'Cancha B',
    ubicacion: 'Avenida Central 456',
  ),
  CanchaFavorita(
    nombreUsuario: 'Rodrigo',
    nombreCancha: 'Cancha C',
    ubicacion: 'Boulevard Norte 789',
  ),
];

class MisFavoritosPage extends StatelessWidget {
  const MisFavoritosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Favoritos'),
      ),
      body: ListView.builder(
        itemCount: canchasFavoritas.length,
        itemBuilder: (context, index) {
          final cancha = canchasFavoritas[index];
          return ListTile(
            title: Text('Nombre de la Cancha: ${cancha.nombreCancha}'),
            subtitle: Text(
                'Ubicación: ${cancha.ubicacion} - Usuario: ${cancha.nombreUsuario}'),
            leading: Icon(Icons.sports_soccer),
            onTap: () {},
          );
        },
      ),
    );
  }
}
