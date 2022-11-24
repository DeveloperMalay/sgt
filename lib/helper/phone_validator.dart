extension PhoneValidator on String {
  bool isValidPhone() {
    return RegExp(
           r"^\+?0[0-9]{10}$")
        .hasMatch(this);
  }
}
