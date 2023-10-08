import 'exportlinks.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    initialBinding: SplashBinding(),
    getPages: [
      GetPage(name: '/', page: () => Splash(), bindings: [SplashBinding()]),
      GetPage(name: '/Login', page: () => Login(), bindings: [LoginBinding()]),
      GetPage(
          name: '/driverSignup',
          page: () => const driverSignup(),
          transition: Transition.fade),
      GetPage(
          name: '/rideSignup',
          page: () => const rideSignup(),
          transition: Transition.zoom),
      GetPage(
          name: '/Home',
          page: () => const HomeScreen(),
          transition: Transition.zoom),
      GetPage(
          name: '/BookRide',
          page: () => const preBookRideScreen(),
          transition: Transition.zoom),
      GetPage(
          name: '/BookedRide',
          page: () => const PostBookedRideScreen(),
          transition: Transition.zoom),
      GetPage(
          name: '/FeedBack',
          page: () => const FeedBackScreen(),
          transition: Transition.zoom),
      GetPage(
          name: '/DriverHome',
          page: () => const DriverPickupScreen(),
          transition: Transition.zoom),
      GetPage(
          name: '/settings',
          page: () => const SettingScreen(),
          transition: Transition.zoom),
      GetPage(
          name: '/profile', page: () => Profile(), transition: Transition.zoom),
    ],
  ));
}
