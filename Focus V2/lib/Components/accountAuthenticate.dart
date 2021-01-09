import 'accounts.dart';

class Account {
  String user;
  String password;
  int index;
  bool authenticated = false;
  bool idclash = true;
  String url;
  var data;

  Account(this.user, this.password);

  void checkValidAccount() {
    if (useridlist.contains(this.user)) {
      index = useridlist.indexOf(user);
      if (passwordslist[index] == this.password) {
        authenticated = true;
      } else {
        authenticated = false;
      }
    }
  }

  void createAccount() {
    if (!useridlist.contains(this.user)) {
      useridlist.add(this.user);
      passwordslist.add(this.password);
      idclash = false;
    } else {
      idclash = true;
    }
  }
}
