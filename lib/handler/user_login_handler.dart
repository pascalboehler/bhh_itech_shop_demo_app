class UserLoginHandler {
  late String _userId;

  UserLoginHandler() {
    _userId = "";
  }

  void loginUser(String username, String password) {
    print("You are logged in");
    _userId = "Your returned token";
  }

  void logoutUser() {
    _userId = "";
  }

  String getUserToken() {
    return _userId;
  }
}