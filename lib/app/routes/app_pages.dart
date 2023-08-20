import 'package:get/get.dart'; 
import '../modules/Adding_Center/bindings/adding_center_binding.dart';
import '../modules/Adding_Center/views/adding_center_view.dart';
import '../modules/CheckEmail/bindings/check_email_binding.dart';
import '../modules/CheckEmail/views/check_email_view.dart';
import '../modules/CreateChildCard/bindings/create_child_card_binding.dart';
import '../modules/CreateChildCard/views/create_child_card_view.dart';
import '../modules/DesktopScreen/bindings/desktop_screen_binding.dart';
import '../modules/DesktopScreen/views/desktop_screen_view.dart';
import '../modules/ForgetPassword/bindings/forget_password_binding.dart';
import '../modules/ForgetPassword/views/forget_password_view.dart';
import '../modules/HandlingData/bindings/handling_data_binding.dart';
import '../modules/HandlingData/views/handling_data_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/MobileScreen/bindings/mobile_screen_binding.dart';
import '../modules/MobileScreen/views/mobile_screen_view.dart';
import '../modules/ResetPassword/bindings/reset_password_binding.dart';
import '../modules/ResetPassword/views/reset_password_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/VerifyCode/bindings/verify_code_binding.dart';
import '../modules/VerifyCode/views/verify_code_view.dart';
import '../modules/ViewCardsTable/bindings/view_cards_table_binding.dart';
import '../modules/ViewCardsTable/views/view_cards_table_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/verifyCodeSignUp/bindings/verify_code_sign_up_binding.dart';
import '../modules/verifyCodeSignUp/views/verify_code_sign_up_view.dart';

// ignore_for_file: unused_import, ant_identifier_names, constant_identifier_names, prefer_const_constructors

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME_VIEW;

  static final routes = [
    GetPage(
      name: _Paths.HOME_VIEW,
      page: () => HomeView(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DESKTOP_SCREEN,
      page: () => DesktopScreenView(),
      // binding: DesktopScreenBinding(),
    ),
    GetPage(
      name: _Paths.MOBILE_SCREEN,
      page: () => MobileScreenView(),
      // binding: MobileScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      // binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      // binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => ForgetPasswordView(),
      // binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_CHILD_CARD,
      page: () => CreateChildCardView(),
      // binding: CreateChildCardBinding(),
    ),
    GetPage(
      name: _Paths.ADDING_CENTER,
      page: () => AddingCenterView(),
      // binding: AddingCenterBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_CODE,
      page: () => VerifyCodeView(),
      // binding: VerifyCodeBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      // binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_EMAIL,
      page: () => CheckEmailView(),
      // binding: CheckEmailBinding(),
    ),
    // GetPage(
    //   name: _Paths.VIEW_CARDS_TABLE,
    //   page: () => ViewCardsTableView(),
    //   binding: ViewCardsTableBinding(),
    // ),
    // GetPage(
    //   name: _Paths.HANDLING_DATA,
    //   page: () =>  HandlingDataView(),
    //   // binding: HandlingDataBinding(),
    // ),
    GetPage(
      name: _Paths.VERIFY_CODE_SIGN_UP,
      page: () => const VerifyCodeSignUpView(),
      // binding: VerifyCodeSignUpBinding(),
    ),
  ];
}
