import '../knowit_exporter.dart';

/// this provides the default router delegate for the app
final routerProvider = Provider<GoRouter>(
  (ref) {
    // router delegate
    return GoRouter(
      initialLocation: initialPath,
      restorationScopeId: knowitId,
      // turn off history tracking in the browser for all navigation
      // routerNeglect: true,
      routes: [
        //* home page
        GoRoute(
          path: homePath,
          builder: (context, state) => const KnowItHome(),
        ),

        // * puzzle pagef
        GoRoute(
          path: puzzlePath,
          builder: (context, state) => const KnowItPuzzle(),
        ),

        // * profile page
        GoRoute(
          path: profilePath,
          builder: (context, state) => const KnowItProfile(),
        ),

        //* tips page
        GoRoute(
          path: tipsPath,
          builder: (context, state) => const KnowItTips(),
        ),
      ],

      // redirect: (_, state) {
      //   return null;
      // },
      // refreshListenable: GoRouterRefreshStream(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      // ),
      // errorBuilder: (context, state) => ThumbsErrorPage(state.error!),
      // log diagnostic info for your routes
      debugLogDiagnostics: true,
    );
  },
);
