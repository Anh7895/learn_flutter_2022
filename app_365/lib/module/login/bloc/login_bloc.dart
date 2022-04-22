import 'package:bloc/bloc.dart';

import '../../../common/services/http/result_data.dart';
import '../model/result_login.dart';
import '../repo/login_repo.dart';
import 'login_event.dart';
import 'login_state.dart';
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());
  LoginRepo loginRepo = LoginRepo();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginCandidateButtonPressed) {
      yield LoginLoading();
      ResultData res =
          await loginRepo.loginCandidate(event.email, event.password);
      ResultLogin resultLogin = resultLoginFromJson(res.data);
      if (resultLogin.data.result) {
        yield LoginSuccess(resultLogin.data.message);
      } else {
        yield LoginFailure(resultLogin.error.message);
      }
    }
  }
}
