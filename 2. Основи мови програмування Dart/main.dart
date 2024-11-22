void main() {
  const double start = -2;
  const double end = 3;
  const double step = 0.5;

  print(y = 16  x^2n);

  double x = start;
  double sum = 0;
  int count = 0;

  while (x = end) {
     Уникаємо ділення на нуль
    if (x == 0) {
      x += step;
      continue;
    }

    double y = 16  (x  x);
    print(x = $x, y = $y);

    sum += y;
    count++;
    x += step;
  }

  double average = sum  count;
  print(nСереднє арифметичне значень функції $average);
}
