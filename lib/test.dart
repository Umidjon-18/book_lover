void main(List<String> args) {
  bool isValid(String s) {
    if (s.length.isOdd) return false;
    var list = s.split("");
    var stack = [];
    for (var i in list) {
      if (i == "(") {
        stack.add(")");
      } else if (i == "[") {
        stack.add("]");
      } else if (i == "{") {
        stack.add("}");
      } else if (stack.isEmpty || stack.removeLast() != i) {
        return false;
      }
    }

    return stack.isEmpty;
  }

  print(isValid("(({{}}))[]"));
}
