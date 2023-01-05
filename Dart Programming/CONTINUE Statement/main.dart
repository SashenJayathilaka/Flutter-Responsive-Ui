// ignore_for_file: unused_label

void main(List<String> args) {
  // CONTINUE KEYWORD
  // USING LABELS

/*   for (var i = 0; i <= 10; i++) {
/*     if (i % 2 == 0) {
      continue;
      /* break; */
    }

    print(i); */

  } */

  outer:
  for (var i = 0; i <= 3; i++) {
    for (var j = 0; j <= 3; j++) {
      if (i == 2 && j == 2) {
        continue outer;
      }
      print("$i $j");
    }
  }
}
