import 'package:flutter/material.dart';
import 'package:test_app/config/theme/app_theme.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, // Desactiva el ícono de regresar
        leading: PopupMenuButton(
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: InkWell(
                  child: const Text("Modificar"),
                  onTap: () {
                    Navigator.pop(context);
                    //ignore: avoid_print
                    print("Estas en Modificar");
                  },
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  child: const Text("Modificar"),
                  onTap: () {
                    Navigator.pop(context);
                    //ignore: avoid_print
                    print("Estas en Modificar");
                  },
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  child: const Text("Modificar"),
                  onTap: () {
                    Navigator.pop(context);
                    //ignore: avoid_print
                    print("Estas en Modificar");
                  },
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  child: const Text("Modificar"),
                  onTap: () {
                    Navigator.pop(context);
                    //ignore: avoid_print
                    print("Estas en Modificar");
                  },
                ),
              )
            ];
          },
          icon: const Icon(Icons.menu),
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Keidot',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.8,
              color: greenHigh,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: greenHigh.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Contenido',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'Servicios destacados',
                style: TextStyle(
                  color: darkGreen,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.2,
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.85, // Ajusta la altura de los elementos
                shrinkWrap:
                    true, // Permite que el GridView se ajuste automáticamente
                physics:
                    const NeverScrollableScrollPhysics(), // Elimina el scroll interno
                children: [
                  _gridItem("Jardinería", "assets/images/jardineria.png"),
                  _gridItem(
                      "Renta de maquinaria", "assets/images/maquinaria.png"),
                  _gridItem("Venta de plantas", "assets/images/plantas.png"),
                  _gridItem("Limpieza de hojas", "assets/images/limpieza.png"),
                  // Puedes seguir agregando más items y la pantalla se adaptará automáticamente
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Índice seleccionado
        selectedItemColor: darkGreen, // Color del ítem seleccionado
        unselectedItemColor: Colors.grey, // Color de los ítems no seleccionados
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Solicitar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Mensajes',
          ),
        ],
      ),
    );
  }

  Widget _gridItem(String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.black.withValues(alpha: 0.7), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
