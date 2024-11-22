import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const _pixelSize = 50.0; // Розмір пікселя
const _pixelColor = Colors.yellow; // Колір пікселя
const _borderColor = Colors.grey; // Колір границі
const _borderWidth = 1.0; // Розмір границі
const _borderRadius = 10.0; // Радіус кута

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pixel Art Number',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PixelArtScreen(title: 'Pixel Art: Number 1'),
    );
  }
}

class PixelArtScreen extends StatelessWidget {
  const PixelArtScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildNumberOne(),
        ),
      ),
    );
  }

  // Будуємо піксельний вигляд числа "1"
  List<Widget> _buildNumberOne() {
    return [
      _buildEmptyRow(), // Пустий рядок зверху
      _buildSinglePixelRow(1), // Верхній піксель
      _buildSinglePixelRow(1),
      _buildSinglePixelRow(1),
      _buildSinglePixelRow(1),
      _buildSinglePixelRow(1), // Нижній піксель
    ];
  }

  // Порожній рядок (для вирівнювання)
  Widget _buildEmptyRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (_) => _buildEmptyPixel()),
    );
  }

  // Рядок з одним пікселем
  Widget _buildSinglePixelRow(int pixelIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          if (i == pixelIndex) _buildPixel() else _buildEmptyPixel(),
      ],
    );
  }

  // Побудова пікселя
  Widget _buildPixel() {
    return Container(
      width: _pixelSize,
      height: _pixelSize,
      decoration: BoxDecoration(
        color: _pixelColor,
        borderRadius: BorderRadius.circular(_borderRadius),
        border: Border.all(color: _borderColor, width: _borderWidth),
      ),
    );
  }

  // Порожній контейнер
  Widget _buildEmptyPixel() {
    return SizedBox(
      width: _pixelSize,
      height: _pixelSize,
    );
  }
}
