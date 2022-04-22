import 'package:bloc/bloc.dart';

import '../../../common/services/http/result_data.dart';
import '../model/result_home_candidate.dart';
import '../repo/home_repo.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());
  HomeRepo homeRepo = HomeRepo();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetDataHomeCandidate) {
      yield HomeLoading();
      ResultData res = await homeRepo.getDataHomeCandidate('');
      ResultHomeCandidate resultHomeCandidate =
          resultHomeCandidateFromJson(res.data);
      if (resultHomeCandidate.data.result) {
        yield DataHomeLoaded(
            listNewJob: resultHomeCandidate.data.viecLam.vieclamNew,
            listJobType: resultHomeCandidate.data.viecLam.loaiVieclam,
            listJobHighSalary: resultHomeCandidate.data.viecLam.vieclamSalary,
            listOutstandingJobs: resultHomeCandidate.data.viecLam.vieclamNn);
      } else {
        yield HomeFailure(resultHomeCandidate.error.message);
      }
    }
  }
}
