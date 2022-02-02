import 'package:get/get.dart';

import 'package:prod_family/app/modules/About_The_App/bindings/about_the_app_binding.dart';
import 'package:prod_family/app/modules/About_The_App/views/about_the_app_view.dart';
import 'package:prod_family/app/modules/Account_Info/bindings/account_info_binding.dart';
import 'package:prod_family/app/modules/Account_Info/views/account_info_view.dart';
import 'package:prod_family/app/modules/Cart/bindings/cart_binding.dart';
import 'package:prod_family/app/modules/Cart/views/cart_view.dart';
import 'package:prod_family/app/modules/Dashboard/bindings/dashboard_binding.dart';
import 'package:prod_family/app/modules/Dashboard/views/dashboard_view.dart';
import 'package:prod_family/app/modules/FAQ/bindings/faq_binding.dart';
import 'package:prod_family/app/modules/FAQ/views/faq_view.dart';
import 'package:prod_family/app/modules/Favorit/bindings/favorit_binding.dart';
import 'package:prod_family/app/modules/Favorit/views/favorit_view.dart';
import 'package:prod_family/app/modules/Help/bindings/help_binding.dart';
import 'package:prod_family/app/modules/Help/views/help_view.dart';
import 'package:prod_family/app/modules/Login/bindings/login_binding.dart';
import 'package:prod_family/app/modules/Login/views/login_view.dart';
import 'package:prod_family/app/modules/Markit/bindings/markit_binding.dart';
import 'package:prod_family/app/modules/Markit/views/markit_view.dart';
import 'package:prod_family/app/modules/My_Orders/bindings/my_orders_binding.dart';
import 'package:prod_family/app/modules/My_Orders/views/my_orders_view.dart';
import 'package:prod_family/app/modules/Policy/bindings/policy_binding.dart';
import 'package:prod_family/app/modules/Policy/views/policy_view.dart';
import 'package:prod_family/app/modules/Product_Details/bindings/product_details_binding.dart';
import 'package:prod_family/app/modules/Product_Details/views/product_details_view.dart';
import 'package:prod_family/app/modules/Recently_See/bindings/recently_see_binding.dart';
import 'package:prod_family/app/modules/Recently_See/views/recently_see_view.dart';
import 'package:prod_family/app/modules/Register/bindings/register_binding.dart';
import 'package:prod_family/app/modules/Register/views/register_view.dart';
import 'package:prod_family/app/modules/Register_D/bindings/register_d_binding.dart';
import 'package:prod_family/app/modules/Register_D/views/register_d_view.dart';
import 'package:prod_family/app/modules/Seller_Profile/bindings/seller_profile_binding.dart';
import 'package:prod_family/app/modules/Seller_Profile/views/seller_profile_view.dart';
import 'package:prod_family/app/modules/Setting/bindings/setting_binding.dart';
import 'package:prod_family/app/modules/Setting/views/setting_view.dart';
import 'package:prod_family/app/modules/Splsh_Screen/bindings/splsh_screen_binding.dart';
import 'package:prod_family/app/modules/Splsh_Screen/views/splsh_screen_view.dart';
import 'package:prod_family/app/modules/home/bindings/home_binding.dart';
import 'package:prod_family/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLSH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLSH_SCREEN,
      page: () => SplshScreenView(),
      binding: SplshScreenBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.FAVORIT,
      page: () => FavoritView(),
      binding: FavoritBinding(),
    ),
    GetPage(
      name: _Paths.MARKIT,
      page: () => MarkitView(),
      binding: MarkitBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_D,
      page: () => RegisterDView(),
      binding: RegisterDBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_INFO,
      page: () => AccountInfoView(),
      binding: AccountInfoBinding(),
    ),
    GetPage(
      name: _Paths.MY_ORDERS,
      page: () => MyOrdersView(),
      binding: MyOrdersBinding(),
    ),
    GetPage(
      name: _Paths.RECENTLY_SEE,
      page: () => RecentlySeeView(),
      binding: RecentlySeeBinding(),
    ),
    GetPage(
      name: _Paths.FAQ,
      page: () => FaqView(),
      binding: FaqBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_THE_APP,
      page: () => AboutTheAppView(),
      binding: AboutTheAppBinding(),
    ),
    GetPage(
      name: _Paths.POLICY,
      page: () => PolicyView(),
      binding: PolicyBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SELLER_PROFILE,
      page: () => SellerProfileView(),
      binding: SellerProfileBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
