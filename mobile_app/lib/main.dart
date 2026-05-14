import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const PatitasApp());
}

class PatitasApp extends StatelessWidget {
  const PatitasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patitas Loja',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE67E22)),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE67E22),
        title: Text(
          '🐾 Patitas Loja',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset('assets/images/patitas_logo.png', height: 180),
          ),
          Text(
            'Tu app de adopción',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFE67E22),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: const [
                PetCard(name: 'Luna', breed: 'Mestiza', age: '2 años'),
                PetCard(name: 'Rocky', breed: 'Labrador', age: '1 año'),
                PetCard(name: 'Mia', breed: 'Persa', age: '3 años'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PetCard extends StatelessWidget {
  final String name;
  final String breed;
  final String age;

  const PetCard({
    super.key,
    required this.name,
    required this.breed,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Color(0xFFE67E22),
          child: Icon(Icons.pets, color: Colors.white),
        ),
        title: Text(
          name,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('$breed • $age', style: GoogleFonts.poppins()),
        trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFFE67E22)),
      ),
    );
  }
}
