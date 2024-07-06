import 'package:flutter/material.dart';

class ReservaAdquirida {
  final String nombreUsuario;
  final String horarioReserva;
  final String detalle;

  ReservaAdquirida({
    required this.nombreUsuario,
    required this.horarioReserva,
    required this.detalle,
  });
}

List<ReservaAdquirida> reservasAdquiridas = [
  ReservaAdquirida(
    nombreUsuario: 'Rodrigo',
    horarioReserva: '14:00',
    detalle: 'futbitol familiar',
  ),
  ReservaAdquirida(
    nombreUsuario: 'María',
    horarioReserva: '18:30',
    detalle: ' privada',
  ),
  ReservaAdquirida(
    nombreUsuario: 'Juan',
    horarioReserva: '20:00',
    detalle: 'futbitol entre amigos',
  ),
  ReservaAdquirida(
    nombreUsuario: 'pablo',
    horarioReserva: '21:00',
    detalle: 'futbitol entre patas',
  ),
  ReservaAdquirida(
    nombreUsuario: 'oscar',
    horarioReserva: '20:00',
    detalle: 'futbitol familiares',
  ),
];

class ReservasAdquiridasPage extends StatelessWidget {
  const ReservasAdquiridasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservas Adquiridas'),
      ),
      body: ListView.builder(
        itemCount: reservasAdquiridas.length,
        itemBuilder: (context, index) {
          final reserva = reservasAdquiridas[index];
          return ListTile(
            title: Text(reserva.nombreUsuario),
            subtitle: Text(
                'Horario: ${reserva.horarioReserva} - Detalle: ${reserva.detalle}'),
            leading: Icon(Icons.event),
            onTap: () {},
          );
        },
      ),
    );
  }
}
