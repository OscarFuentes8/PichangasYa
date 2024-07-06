import 'package:flutter/material.dart';

class ReservaHistorial {
  final String nombreUsuario;
  final String horarioReserva;
  final String detalle;

  ReservaHistorial({
    required this.nombreUsuario,
    required this.horarioReserva,
    required this.detalle,
  });
}

List<ReservaHistorial> historialReservas = [
  ReservaHistorial(
    nombreUsuario: 'Ana',
    horarioReserva: '12:30',
    detalle: 'privado',
  ),
  ReservaHistorial(
    nombreUsuario: 'Carlos',
    horarioReserva: '15:00',
    detalle: 'familiar',
  ),
  ReservaHistorial(
    nombreUsuario: 'Elena',
    horarioReserva: '19:30',
    detalle: 'amigas',
  ),
  ReservaHistorial(
    nombreUsuario: 'oscar',
    horarioReserva: '20:30',
    detalle: 'amigos',
  ),
];

class HistorialReservasPage extends StatelessWidget {
  const HistorialReservasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial de Reservas'),
      ),
      body: ListView.builder(
        itemCount: historialReservas.length,
        itemBuilder: (context, index) {
          final reserva = historialReservas[index];
          return ListTile(
            title: Text(reserva.nombreUsuario),
            subtitle: Text(
                'Horario: ${reserva.horarioReserva} - Detalle: ${reserva.detalle}'),
            leading: Icon(Icons.history),
            onTap: () {},
          );
        },
      ),
    );
  }
}
