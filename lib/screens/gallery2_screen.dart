import 'package:flutter/material.dart';
import 'package:flutter_application_3/providers/info_provider.dart';
import 'package:flutter_application_3/widgets/widgets.dart';
import 'package:provider/provider.dart';

class Gallery2Screen extends StatelessWidget {
  const Gallery2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<InfoProvider>(context);
    print(moviesProvider.onDisplayMovies);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi portafolio"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              ProjectSlider(
                movies: moviesProvider.popularMovies,
                sliderTitle: "Como fue",
                onNextPage: () => moviesProvider.getPopularMovies(),
              )
            ],
          ),
        ));
  }
}
