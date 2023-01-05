// ignore_for_file: unused_label

void main(List<String> args) {
  // break keyword

  myOuterLoop: // using Labels
  for (var i = 0; i <= 3; i++) {
    innerLoop:
    for (var j = 0; j <= 3; j++) {
      print("$i $j");
      if (i == 2 && j == 2) {
        break myOuterLoop;
      }
    }

/*     if (i == 5) {
      break;
    } */
  }
}
