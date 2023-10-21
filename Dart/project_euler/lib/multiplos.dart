void multiplos() {
  int r = 0, below = 1000;
  for (int i = 1; i < below; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      r += i;
    }
  }
  print(r);
}
