import '../../knowit_exporter.dart';

class KnowItHome extends ConsumerWidget {
  const KnowItHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          knowItFull,
          height: 40,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight / 2),
          child: Padding(
            padding: padding8,
            child: AnimatedSwitcher(
              duration: quarterSeconds,
              child: Text(
                "Spin The Wheel",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 22.5,
                  color: knowItWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      body: const KnowItSpinWheel(),
    );
  }
}
