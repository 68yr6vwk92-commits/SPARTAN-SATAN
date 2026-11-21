
import 'package:flutter/material.dart';

void main() {
  runApp(const SpartanSatanApp());
}

class SpartanSatanApp extends StatelessWidget {
  const SpartanSatanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPARTAN SATAN',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color neonGreen = Color(0xFF39FF14);
  static const Color bloodRed = Color(0xFFE32636);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              const SizedBox(height: 25),

              const Text(
                'SPARTAN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 5,
                ),
              ),

              const Text(
                'SATAN',
                style: TextStyle(
                  color: neonGreen,
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 7,
                ),
              ),

              const SizedBox(height: 12),

              Container(
                height: 3,
                width: 110,
                color: bloodRed,
              ),

              const Spacer(),

              const Icon(
                Icons.shield,
                color: neonGreen,
                size: 105,
              ),

              const SizedBox(height: 18),

              const Text(
                'FORGE YOUR STRENGTH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              workoutCard(
                title: 'RUNNING',
                subtitle: 'GPS • DISTANCE • SPEED',
                icon: Icons.directions_run,
                color: neonGreen,
                onTap: () {},
              ),

              const SizedBox(height: 18),

              workoutCard(
                title: 'BOXING',
                subtitle: '5 ROUNDS • 3:00 / 1:00',
                icon: Icons.sports_mma,
                color: bloodRed,
                onTap: () {},
              ),

              const Spacer(),

              const Text(
                'DISCIPLINE IS EVERYTHING',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 11,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  Widget workoutCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 112,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          foregroundColor: color,
          side: BorderSide(color: color, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: const Color(0xFF101010),
        ),
        child: Row(
          children: [
            const SizedBox(width: 12),
            Icon(icon, size: 42, color: color),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white70,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: color, size: 18),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
