import 'package:flutter/material.dart';
import 'menu_item.dart';
import 'recipe_screen.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItem menuItem;

  const MenuItemCard({
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
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              // Added Expanded to make the image expand to fit
              child: Image.asset(
                menuItem.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menuItem.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Cuplikan Resep: ${menuItem.recipe}', // Added recipe snippet
                    style: TextStyle(fontSize: 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Durasi: 30 menit', // Added estimated duration
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
