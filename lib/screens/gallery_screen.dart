import 'package:flutter/material.dart';
import 'package:flutter_application_3/providers/info_provider.dart';
import 'package:flutter_application_3/search/search_delegate.dart';
import 'package:flutter_application_3/widgets/widgets.dart';
import 'package:provider/provider.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<InfoProvider>(context);
    print(moviesProvider.onDisplayMovies);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Now Playing"),
          actions: [
            Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton(
                    onPressed: () => showSearch(
                        context: context, delegate: MovieSearchDelegate()),
                    icon: const Icon(Icons.search)))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              ProjectSlider(
                movies: moviesProvider.popularMovies,
                sliderTitle: "Destacados",
                onNextPage: () => moviesProvider.getPopularMovies(),
              )
            ],
          ),
        ));
  }
}
