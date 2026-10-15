import 'package:flutter/material.dart';

/// Greeting card at the top of the home screen.
class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  // >>> Q6A5 START
  Widget _flame() {
    return const Icon(
      Icons.local_fire_department,
      size: 44,
      color: Colors.orange,
    );
  }
  // <<< Q6A5 END

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF7E57C2),
            Color(0xFF3F51B5),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          _flame(),
          const SizedBox(width: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning, Hero!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Keep your streak alive!',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
