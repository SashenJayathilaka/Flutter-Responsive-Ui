void main() {
  // conditional expression

  // condition ? exp l : exp1

  // if condition is true, evaluate expr l (and returns its Value)

  // otherwise, evaluate and returns the value of expr 2

  int a = 2;
  int b = 3;

  int smallNumber = a < b ? a : b;

/*   if (a < b) {
    smallNumber = a;
  } else {
    smallNumber = b;
  }

  print("$smallNumber is smallest"); */

/*   a < b ? print("$a is Small") : print("$b is smaller"); */
  /* smallNumber = a < b ? a : b; */
  print("$smallNumber is smallest");

  // 2. exp l ?? exp 2

  // If exp 1 is non-null return its value the value: otherwise evaluate and returns the value of exp 2

  String name = "sashen";

  // ignore: unused_local_variable
  String nameToPrint = name ?? "Guest User";
  print(nameToPrint);
}
