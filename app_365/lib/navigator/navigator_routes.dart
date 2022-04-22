import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../module/home/candidate_view/candidate_aplly_screen.dart';
import '../module/home/candidate_view/candidate_details_screen.dart';
import '../module/home/candidate_view/candidate_from_filter.dart';
import '../module/home/candidate_view/salary_screen.dart';
import '../module/home/candidate_view/save_candidate_screen.dart';
import '../module/home/candidate_view/search_candidate_from_filter.dart';
import '../module/home/candidate_view/search_filter_candidate.dart';
import '../module/home/candidate_view/search_job_screen.dart';
import '../module/home/home_employer/screen/home_employer_screen.dart';
import '../module/home/home_employer/screen/post_screen.dart';
import '../module/home/home_employer/screen/recruitment_screen.dart';
import '../module/home/home_employer/screen/solution_screen.dart';
import '../module/intro/screen/intro_screen.dart';
import '../module/intro/screen/option_intro.dart';
import '../module/login/screen/login_screen.dart';
import '../module/password_retrieval/screen/password_retrieval_screen.dart';
import '../module/resgister/screen/otp_authentication.dart';
import '../module/resgister/screen/register_candidate.dart';
import '../module/resgister/screen/register_recruitment_screen.dart';
import '../module/resgister/screen/select_city_screen.dart';
import '../module/resgister/screen/select_job_screen.dart';
import '../module/resgister/screen/select_work_sesion.dart';
import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ROUTE_INTRO:
      return MaterialPageRoute(builder: (_) => const IntroScreen());
    case ROUTE_OPTION_INTRO:
      return MaterialPageRoute(builder: (_) => const OptionIntroScreen());
    case ROUTE_LOGIN:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case ROUTE_REGISTER_CANDIDATE:
      return MaterialPageRoute(builder: (_) => const RegisterCandidateScreen());
    case ROUTE_REGISTER_RECRUITMENT:
      return MaterialPageRoute(builder: (_) => const RegisterRecruitmentScreen());
    case ROUTE_SELECT_CITY:
      return MaterialPageRoute(builder: (_) => const SelectCityScreen());
    case ROUTE_SELECT_JOB:
      return MaterialPageRoute(builder: (_) => const SelectJobScreen());
    case ROUTE_SELECT_SESSION:
      return MaterialPageRoute(builder: (_) => const SelectWorkSession());
    case ROUTE_OTP:
      return MaterialPageRoute(builder: (_) => const OTPAuthenticationScreen());
    case ROUTE_PASSWORD_RETRIEVAL:
      return MaterialPageRoute(builder: (_) => const PasswordRetrievalScreen());
    case ROUTE_HOME_EMPLOYER:
      return MaterialPageRoute(builder: (_) => const HomeEmployerScreen());
    case ROUTE_SOLUTION:
      return MaterialPageRoute(builder: (_) => const SolutionScreen());
    case ROUTE_POST:
      return MaterialPageRoute(builder: (_) => const PostScreen());
 case CANDIDATE_DETAILS:
      return MaterialPageRoute(builder: (_) => const CandidateDetailsScreen());


    case ROUTE_CANDIDATE_APPLLY:
      return MaterialPageRoute(builder: (_) => const CandidateApplyScreen());
    case ROUTE_CANDIDATE_FROM_FILTER:
      return MaterialPageRoute(builder: (_) => const CandidateFromFilterScreen());
    case ROUTE_SAVE_CANDIDATE:
      return MaterialPageRoute(builder: (_) => const SaveCandidateScreen());
    case ROUTE_RECRUITMENT:
      return MaterialPageRoute(builder: (_) => const RecruitmentScreen());
    case ROUTE_SEARCH_JOB:
      return MaterialPageRoute(builder: (_) => const SearchJobScreen());
    case ROUTE_SEARCH_CANDIDATE:
      return MaterialPageRoute(builder: (_) => const SearchCandidateFromFilterScreen());
    case ROUTE_SEARCH_FILTER:
      return MaterialPageRoute(builder: (_) => const SearchFilterCandidateScreen());
    case ROUTE_SALARY:
      return MaterialPageRoute(builder: (_) => const SalaryScreen());
    default:
      return MaterialPageRoute(builder: (_) => const IntroScreen());
  }
}
