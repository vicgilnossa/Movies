import 'package:flutter/material.dart';

import '../models/movie.dart';

class ProjectSlider extends StatefulWidget {
  final String? sliderTitle;
  final List<Movie> movies;
  final Function onNextPage;
  const ProjectSlider(
      {Key? key,
      required this.sliderTitle,
      required this.movies,
      required this.onNextPage})
      : super(key: key);

  @override
  State<ProjectSlider> createState() => _ProjectSliderState();
}

class _ProjectSliderState extends State<ProjectSlider> {
  final ScrollController scrollControler = new ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollControler.addListener(() {
      if (scrollControler.position.pixels >=
          scrollControler.position.maxScrollExtent - 500) {
        widget.onNextPage();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.sliderTitle != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.sliderTitle!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          Expanded(
            child: ListView.builder(
              controller: scrollControler,
              scrollDirection: Axis.horizontal,
              itemCount: widget.movies.length,
              itemBuilder: (_, int index) => _PosterCard(widget.movies[index]),
            ),
          )
        ],
      ),
    );
  }
}

class _PosterCard extends StatelessWidget {
  final Movie movie;
  const _PosterCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detailscreen',
                arguments: movie),
            child: FadeInImage(
                placeholder: const AssetImage("assets/loading.gif"),
                image: NetworkImage(movie.fullPosterImg)),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            movie.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
