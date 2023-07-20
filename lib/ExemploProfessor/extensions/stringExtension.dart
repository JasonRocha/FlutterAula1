extension StringValidEmail on String {
  bool isValidEmail() {
    return this.contains("@") && (this.contains("."));
  }
}