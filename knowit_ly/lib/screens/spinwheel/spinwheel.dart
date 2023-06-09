import 'package:flutter/cupertino.dart';

import '../../knowit_exporter.dart';
import 'components/game_selected_tile.dart';
import 'components/game_tip.dart';
import 'components/game_wheel.dart';

class KnowItSpinWheel extends ConsumerWidget {
  const KnowItSpinWheel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: padding16,
        child: Column(
          children: const [
            // tip
            GameTip(),

            // text
            VerticalSpace(of: spacing8),
            Expanded(child: Center(child: GameWheel())),
            VerticalSpace(of: spacing8),

            // game selected
            GameSelectedTile(),

            VerticalSpace(of: spacing16),

            // get tips button
            GetTipsButton(),
          ],
        ),
      ),
    );
  }
}

class GetTipsButton extends ConsumerWidget {
  const GetTipsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    // selected color
    final selectedColor = ref.watch(selectedSpinColorProvider);

    //
    return AppButton(
      text: "Get Sexual Health Tips",
      iconData: CupertinoIcons.doc_on_clipboard_fill,
      buttonColor: selectedColor,
      onTap: () {
        // go to tips page
        context.push(tipsPath);
      },
    );
  }
}
