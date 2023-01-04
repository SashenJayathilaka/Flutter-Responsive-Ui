// ignore_for_file: unused_local_variable

void main(List<String> args) {
// find the even numbers

  for (var i = 0; i <= 10; i++) {
    /*  print("$i: For Loop"); */

    if (i % 2 == 0) {
      print(i);
    }
  }

  print("\n");

  // for in loop

  List planetLists = ["Mercury", "venus", "Earth", "Mars"];

  for (String planetList in planetLists) {
    print(planetList);
  }
}
