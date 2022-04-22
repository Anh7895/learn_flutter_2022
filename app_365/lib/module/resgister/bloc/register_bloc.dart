import 'package:bloc/bloc.dart';

import '../../../common/services/http/result_data.dart';
import '../../intro/model/result_search.dart';
import '../model/register_result.dart';
import '../repo/register_repo.dart';
import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial());
  RegisterRepo registerRepo = RegisterRepo();

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is GetProvince) {
      yield RegisterLoading();
      ResultData res = await registerRepo.getDistrict();
      ResultGetProvince resultGetProvince = resultGetProvinceFromJson(res.data);
      if (resultGetProvince.data.result) {
        yield ListProvinceLoaded(resultGetProvince.data.tinhthanh);
      }
    }
    if (event is RegisterCandidateButtonPress) {
      yield RegisterLoading();
      ResultData res = await registerRepo.registerCandidate(
          event.avatar,
          event.userName,
          event.email,
          event.phone,
          event.password,
          event.rePassword,
          event.address,
          event.city,
          event.district,
          event.job,
          event.workplace,
          event.desiredProfession,
          event.day);
      ResultRegister resultRegister = resultRegisterFromJson(res.data);
      if (resultRegister.data.result) {
        yield RegisterSuccess(resultRegister.data.message);
      } else {
        yield RegisterFailure(resultRegister.error.message);
      }
    }
  }
}
