import 'package:get/get.dart';

import '../modules/AddTaskDialogBox/bindings/add_task_dialog_box_binding.dart';
import '../modules/AddTaskDialogBox/views/add_task_dialog_box_view.dart';
import '../modules/CreateNewCategory/bindings/create_new_category_binding.dart';
import '../modules/CreateNewCategory/views/create_new_category_view.dart';
import '../modules/FocusMood/bindings/focus_mood_binding.dart';
import '../modules/FocusMood/views/focus_mood_view.dart';
import '../modules/HomeNotEmpty/bindings/home_not_empty_binding.dart';
import '../modules/HomeNotEmpty/views/home_not_empty_view.dart';
import '../modules/HomeScreen/bindings/home_screen_binding.dart';
import '../modules/HomeScreen/views/home_screen_view.dart';
import '../modules/Onboading/bindings/onboading_binding.dart';
import '../modules/Onboading/views/onboading_view.dart';
import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/TaskScreen/bindings/task_screen_binding.dart';
import '../modules/TaskScreen/views/task_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro/views/intro_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/startscreen/bindings/startscreen_binding.dart';
import '../modules/startscreen/views/startscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INTRO;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const IntroView(),
      //   binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.ONBOADING,
      page: () => const OnboadingView(),
      binding: OnboadingBinding(),
    ),
    GetPage(
      name: _Paths.STARTSCREEN,
      page: () => const StartscreenView(),
      binding: StartscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TASK_DIALOG_BOX,
      page: () => const AddTaskDialogBoxView(),
      binding: AddTaskDialogBoxBinding(),
    ),
    GetPage(
      name: _Paths.HOME_NOT_EMPTY,
      page: () => const HomeNotEmpty(),
      binding: HomeNotEmptyBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEW_CATEGORY,
      page: () => const CreateNewCategoryView(),
      binding: CreateNewCategoryBinding(),
    ),
    GetPage(
      name: _Paths.TASK_SCREEN,
      page: () => const TaskScreenView(),
      binding: TaskScreenBinding(),
    ),
    GetPage(
      name: _Paths.FOCUS_MOOD,
      page: () => const FocusMoodView(),
      binding: FocusMoodBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
