import 'package:examenjimenez/ShowSearch.dart';
import 'package:examenjimenez/Stepper.dart';
import 'package:examenjimenez/adaptive.dart';
import 'package:examenjimenez/choiceChip.dart';
import 'package:examenjimenez/expansion_tile.dart';
import 'package:examenjimenez/fitted_box.dart';
import 'package:examenjimenez/menu.dart';
import 'package:examenjimenez/range_slider.dart';
import 'package:examenjimenez/scrollbar.dart';
import 'package:examenjimenez/show_modelbottomsheet.dart';
import 'package:examenjimenez/warp.dart';
import 'package:flutter/material.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Menu(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const MyStepper(),
        '/pantalla2': (context) => const MyFittedBox(),
        '/pantalla3': (context) => const MyShowSearch(),
        '/pantalla4': (context) => const MyAdaptive(),
        '/pantalla5': (context) => const MyScrollbar(),
        '/pantalla6': (context) => const MyChoiceChip(),
        '/pantalla7': (context) => const MyWrap(),
        '/pantalla8': (context) => const MyExpansionTile(),
        '/pantalla9': (context) => const MyRangeSlider(),
        '/pantalla10': (context) => const MyShowModelBottomSheet(),
      },
    );
  }
}
