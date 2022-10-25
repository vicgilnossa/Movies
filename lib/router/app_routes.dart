import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/models.dart';
import 'package:flutter_application_3/screens/avatar_screen.dart';
import 'package:flutter_application_3/screens/gallery_screen.dart';

import 'package:flutter_application_3/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuoptions = <MenuOption>[
    MenuOption(
        route: 'alertscreen',
        name: 'Alertscreen',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'cardscreen',
        name: 'King Gizzard Lizzard',
        screen: const CardScreen(),
        icon: Icons.music_note),
    MenuOption(
      route: 'listview1',
      name: 'Listview1',
      screen: const ListView1Screen(),
      icon: Icons.list_sharp,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview2',
      screen: const ListView2Screen(),
      icon: Icons.list_sharp,
    ),
    MenuOption(
      route: 'musicapphome',
      name: 'Musicapphome',
      screen: const MusicAppHomeScreen(),
      icon: Icons.list_sharp,
    ),
    MenuOption(
      route: 'avatarscreen',
      name: 'Avatarscreen',
      screen: const AvatarScreen(),
      icon: Icons.list_sharp,
    ),
    MenuOption(
      route: 'animatedscreen',
      name: 'Animated Screen',
      screen: const AnimatedScreen(),
      icon: Icons.list_sharp,
    ),
    MenuOption(
        route: 'adddatascreen',
        name: 'Add Data Screen',
        screen: const AddDataScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'sliderscreen',
        name: 'Slider Screen',
        screen: const SliderScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'listviewbuilderscreen',
        name: 'List View Builder Screen',
        screen: const ListviewBuilderScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'galleryscreen',
        name: 'TMDB Api Screen',
        screen: const GalleryScreen(),
        icon: Icons.movie),
    MenuOption(
        route: 'gallery2screen',
        name: 'Discogs Api Screen',
        screen: const Gallery2Screen(),
        icon: Icons.movie),
    MenuOption(
        route: 'detailscreen',
        name: 'Detail Screen',
        screen: const DetailScreen(),
        icon: Icons.play_arrow),
    MenuOption(
        route: 'detail2screen',
        name: 'Detail 2 Screen',
        screen: const Detail2Screen(),
        icon: Icons.play_arrow),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuoptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }
}
