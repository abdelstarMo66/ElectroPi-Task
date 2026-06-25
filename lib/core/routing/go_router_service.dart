import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/di/dependency_injection.dart';
import 'package:mzady/core/routing/animation_route.dart';
import 'package:mzady/core/routing/router_observer.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/services/local/secure_utils.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mzady/features/authentication/presentation/screens/forgot_password_screen.dart';
import 'package:mzady/features/authentication/presentation/screens/login_screen.dart';
import 'package:mzady/features/authentication/presentation/screens/register_screen.dart';
import 'package:mzady/features/authentication/presentation/screens/reset_password_screen.dart';
import 'package:mzady/features/authentication/presentation/screens/verify_account_screen.dart';
import 'package:mzady/features/authentication/presentation/screens/verify_password_screen.dart';
import 'package:mzady/features/home/ui/all_categories_screen.dart';
import 'package:mzady/features/layout/layout_screen.dart';
import 'package:mzady/features/messages/ui/chat_details_screen.dart';
import 'package:mzady/features/messages/ui/search_messages_screen.dart';
import 'package:mzady/features/notification/ui/notifications_screen.dart';
import 'package:mzady/features/product/ui/category_products_screen.dart';
import 'package:mzady/features/product/ui/closing_soon_products_screen.dart';
import 'package:mzady/features/product/ui/featured_products_screen.dart';
import 'package:mzady/features/product/ui/premium_products_screen.dart';
import 'package:mzady/features/product/ui/product_details_screen.dart';
import 'package:mzady/features/profile/presentation/logic/profile_cubit.dart';
import 'package:mzady/features/profile/presentation/ui/add_new_address_screen.dart';
import 'package:mzady/features/profile/presentation/ui/address_screen.dart';
import 'package:mzady/features/profile/presentation/ui/change_password_screen.dart';
import 'package:mzady/features/profile/presentation/ui/contact_us_screen.dart';
import 'package:mzady/features/profile/presentation/ui/edit_profile_screen.dart';
import 'package:mzady/features/profile/presentation/ui/privacy_policy_screen.dart';
import 'package:mzady/features/profile/presentation/ui/settings_screen.dart';
import 'package:mzady/features/profile/presentation/ui/terms_of_service_screen.dart';
import 'package:mzady/features/search/ui/search_screen.dart';
import 'package:mzady/features/splash/splash_screen.dart';

class GoRouterService {
  static final router = GoRouter(
    initialLocation: Routes.layout,
    observers: [MyRouterObserver()],

    errorPageBuilder: (context, state) => AnimationRoute.fadeTransition(
      state: state,
      child: Scaffold(
        body: Center(
          child: Text('No route defined for this page: ${state.uri.path}'),
        ),
      ),
    ),

    redirect: (context, state) async {
      final bool isLoggedIn = await getIt<SecureMethods>().isLoggedIn();

      final bool isAuthRoute =
          state.uri.path.startsWith(RoutesKeys.splash) ||
          state.uri.path.startsWith(RoutesKeys.login) ||
          state.uri.path.startsWith(RoutesKeys.register);

      if (!isLoggedIn && !isAuthRoute) {
        return Routes.login;
      }

      if (isLoggedIn && isAuthRoute) {
        return Routes.layout;
      }

      return null;
    },
    routes: [
      // ================================ Start ================================
      GoRoute(
        path: RoutesKeys.splash,
        name: Routes.splash,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const SplashScreen(),
        ),
      ),

      GoRoute(
        path: RoutesKeys.login,
        name: Routes.login,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: RoutesKeys.forgotPassword,
            name: Routes.forgotPassword,
            pageBuilder: (context, state) => AnimationRoute.fadeTransition(
              state: state,
              child: BlocProvider(
                create: (context) => getIt<ForgotPasswordCubit>(),
                child: const ForgotPasswordScreen(),
              ),
            ),
            routes: [
              GoRoute(
                path: RoutesKeys.verifyPassword,
                name: Routes.verifyPassword,
                pageBuilder: (context, state) => AnimationRoute.fadeTransition(
                  state: state,
                  child: BlocProvider.value(
                    value: getIt<ForgotPasswordCubit>()..startTimer(),
                    child: const VerifyPasswordScreen(),
                  ),
                ),
              ),
            ],
          ),
          GoRoute(
            path: RoutesKeys.resetPassword,
            name: Routes.resetPassword,
            pageBuilder: (context, state) => AnimationRoute.fadeTransition(
              state: state,
              child: BlocProvider.value(
                value: getIt<ForgotPasswordCubit>(),
                child: const ResetPasswordScreen(),
              ),
            ),
          ),
        ],
      ),
      GoRoute(
        path: RoutesKeys.register,
        name: Routes.register,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: RoutesKeys.verifyAccount,
            name: Routes.verifyAccount,
            pageBuilder: (context, state) => AnimationRoute.fadeTransition(
              state: state,
              child: BlocProvider.value(
                value: getIt<RegisterCubit>()..startTimer(),
                child: const VerifyAccountScreen(),
              ),
            ),
          ),
        ],
      ),

      // ========================== Layout Application =========================
      GoRoute(
        path: RoutesKeys.layout,
        name: Routes.layout,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<ProfileCubit>()..getProfile(),
              ),
            ],
            child: const LayoutScreen(),
          ),
        ),
      ),

      // ================================ Home =================================
      GoRoute(
        path: Routes.categories,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const AllCategoriesScreen(),
        ),
      ),
      GoRoute(
        path: Routes.notifications,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const NotificationsScreen(),
        ),
      ),

      // =============================== product ===============================
      GoRoute(
        path: Routes.categoryProducts,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: CategoryProductsScreen(categoryName: state.extra as String),
        ),
      ),
      GoRoute(
        path: Routes.closingSoonProducts,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const ClosingSoonProductsScreen(),
        ),
      ),
      GoRoute(
        path: Routes.featuredProducts,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const FeaturedProductsScreen(),
        ),
      ),
      GoRoute(
        path: Routes.premiumProducts,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const PremiumProductsScreen(),
        ),
      ),
      GoRoute(
        path: Routes.productDetails,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const ProductDetailsScreen(),
        ),
      ),

      // ================================ Search ===============================
      GoRoute(
        path: Routes.search,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const SearchScreen(),
        ),
      ),

      // ============================== Messages ===============================
      GoRoute(
        path: Routes.searchMessages,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const SearchMessagesScreen(),
        ),
      ),
      GoRoute(
        path: Routes.chatDetails,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const ChatDetailsScreen(userName: 'Muhammed'),
        ),
      ),

      // =============================== Profile ===============================
      GoRoute(
        path: Routes.settings,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const SettingsScreen(),
        ),
      ),
      GoRoute(
        path: Routes.editProfile,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: BlocProvider.value(
            value: getIt<ProfileCubit>(),
            child: const EditProfileScreen(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.contactUs,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const ContactUsScreen(),
        ),
      ),
      GoRoute(
        path: Routes.privacyPolicy,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const PrivacyPolicyScreen(),
        ),
      ),
      GoRoute(
        path: Routes.termsOfService,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: const TermsOfServiceScreen(),
        ),
      ),
      GoRoute(
        path: Routes.address,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: BlocProvider.value(
            value: getIt<ProfileCubit>(),
            child: const MyAddressesScreen(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.addNewAddress,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: BlocProvider.value(
            value: getIt<ProfileCubit>(),
            child: const AddNewAddressScreen(),
          ),
        ),
      ),
      GoRoute(
        path: Routes.changePassword,
        pageBuilder: (context, state) => AnimationRoute.fadeTransition(
          state: state,
          child: BlocProvider.value(
            value: getIt<ProfileCubit>(),
            child: const ChangePasswordScreen(),
          ),
        ),
      ),
    ],
  );
}
