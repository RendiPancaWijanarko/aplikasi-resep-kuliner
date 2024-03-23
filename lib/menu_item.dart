import 'package:flutter/material.dart';
import 'recipe_screen.dart';

class MenuItem {
  final String name;
  final String image;
  final String recipe;
  final String instructions;
  final String category;
  final String duration;

  MenuItem({
    required this.name,
    required this.image,
    required this.recipe,
    required this.instructions,
    required this.category,
    required this.duration,
  });
}

class MenuItemCard extends StatelessWidget {
  final MenuItem menuItem;

  const MenuItemCard({
    super.key,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeScreen(menuItem: menuItem),
          ),
        );
      },
      child: Expanded(
        child: Card(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      menuItem.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        menuItem.name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${menuItem.recipe}...',
                        style: const TextStyle(fontSize: 14),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.access_time, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            '${menuItem.duration}',
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
