// TODO Implement this library.

String? validateName(String? name) {
  if (name == null || name.isEmpty || name.length < 6 || name.contains(' ')) {
    return 'Name must be at least 6 characters long and without spaces';
  }
  return null;
}

String? validateEmail(String? Email) {
  RegExp emailREgex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
  final isEmailValid = emailREgex.hasMatch(Email ?? '');
  if (!isEmailValid) {
    return 'please Enter a valid Email';
  }
  return null;
}

String? validateConfirmPassword(String? confirmPassword, String? password) {
  if (confirmPassword == null || confirmPassword.isEmpty) {
    return 'Confirm password is required';
  } else if (confirmPassword != password) {
    return 'Passwords do not match';
  }
  return null; // If the passwords match, return null (no error)
}

String? validatepass(String? pass) {
  if (pass == null || pass.isEmpty || pass.length < 6) {
    return 'Password must be at least 6 characters long';
  }
  return null;
}
