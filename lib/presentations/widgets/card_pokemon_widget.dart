import 'package:flutter/material.dart';

class CardPokemonWidget extends StatelessWidget {
  const CardPokemonWidget({
    super.key,
    required this.id,
    required this.name,
    required this.color,
    required this.image,
    this.icon,
  });
  final String id;
  final String name;
  final Color color;
  final String image;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$idº', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 2),
                Text(name, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600, fontSize: 21)),
                const SizedBox(height: 4),
                Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
                    child: Icon(
                      icon,
                      size: 16,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
            child: Stack(alignment: Alignment.center, children: [Image.network(image), Icon(icon, size: 100, color: Colors.white.withOpacity(0.2))]),
          )
        ],
      ),
    );
  }
}
