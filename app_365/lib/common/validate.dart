class Validate {
  static String? validatePhone(String? value) {
    if (value!.trim().isEmpty || value.trim() == '') {
      return 'Số điện thoại không được để trống';
    }
    if (value.trim().length < 9 || value.trim().length > 11) {
      return 'Số điện thoại hợp lệ từ 9-11 số';
    }
    return null;
  }

  static String? validateNotEmpty(String? value) {
    return value!.trim().isEmpty ? 'Xin hãy điền vào phần này' : null;
  }

  static String? validatePassword(String? value) {
    if (value!.trim().isEmpty || value.trim() == '') {
      return 'Mật khẩu không được để trống';
    }

    if (value.trim().length < 6 || value.trim().length > 32) return 'Mật khẩu phải từ 6 đến 31 ký tự';
    return null;
  }

  static String? validateNewPassword(String? value, String? value2) {
    if (value!.trim().isEmpty) return 'Mật khẩu không được để trống';

    if (value.trim().length < 6) return 'Mật khẩu phải từ 6 đến 31 ký tự';
    if (value.trim() != value2!.trim()) return 'Không trùng khớp';
    return null;
  }

  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return 'Họ và tên không được để trống!';
    } else if (value.trim().length < 6) {
      return 'Họ và tên phải lớn hơn 6 kí tự';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value!.isEmpty) {
      return 'Email không được để trống!';
    } else if (!emailRegExp.hasMatch(value.trim())) {
      return 'Email không hợp lệ.';
    }
    return null;
  }
}
