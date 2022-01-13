import 'package:login_template/product/models/base_models/base_data_model.dart';

class UserModel extends BaseModel {
  String userId = "";
  String? userName;
  String? userNick;

  UserModel.fromJson(Map<String, dynamic> json) {
    this.userId = json["userID"] ?? "";
    this.userName = json["userName"];
    this.userNick = json["userNick"];
  }
}
