void main() {
  var salary = 20000;

  if (salary > 20000) {
    print("You got promotion.");
  } else {
    print("you cannot get a promotion");
  }

  /*-----------------------------------*/

  var marks = 70;

  if (marks >= 90 && marks < 100) {
    print("A+ Grade");
  } else if (marks >= 80 && marks < 90) {
    print('A Grade');
  } else if (marks >= 75 && marks < 80) {
    print("A- Grade");
  } else if (marks >= 65 && marks < 75) {
    print("B+ Grade");
  } else if (marks >= 60 && marks < 65) {
    print("B Grade");
  } else if (marks >= 55 && marks < 60) {
    print("B- Grade");
  } else if (marks >= 50 && marks < 55) {
    print("C Grade");
  } else if (marks >= 35 && marks < 50) {
    print("S Grade");
  } else if (marks >= 0 && marks < 35) {
    print("You Are Fail");
  }else {
    print("your OutPut is Wrong");
  }
}
