import 'package:flutter/material.dart';
import 'menu_item.dart';

class RecipeScreen extends StatefulWidget {
  final MenuItem menuItem;

  const RecipeScreen({
    required this.menuItem,
  });

  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  int selectedPortions = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.menuItem.name),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              widget.menuItem.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Recipe:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              // Adjust the recipe based on selected portions
              widget.menuItem.recipe.replaceAllMapped(
                RegExp(r'(\d+)\s+(\w+)'), // Matches "x <unit>"
                (match) {
                  int originalPortion = int.parse(match.group(1)!);
                  String unit = match.group(2)!;
                  int adjustedPortion = originalPortion * selectedPortions;
                  return '$adjustedPortion $unit';
                },
              ),
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Instructions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              widget.menuItem.instructions,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Number of Portions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: selectedPortions.toDouble(),
              min: 1,
              max: 10,
              divisions: 9,
              onChanged: (value) {
                setState(() {
                  selectedPortions = value.toInt();
                });
              },
              label: selectedPortions.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
