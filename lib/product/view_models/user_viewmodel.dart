import 'package:get/get.dart';
import 'package:login_template/core/consts/app/page_state.dart';
import 'package:login_template/product/models/data_models/user_model.dart';

class UserViewModel extends GetxController {
  var _state = PageState.IDLE;
  UserModel? _user;

  set state(PageState value) {
    _state = value;
    update();
  }

  PageState get state => _state;

  UserModel? get user => _user;

  Future<UserModel?> getLogin(String email, String password) async {
    state = PageState.BUSY;
    // TODO add user login service.
    state = PageState.IDLE;
    return user;
  }
}
