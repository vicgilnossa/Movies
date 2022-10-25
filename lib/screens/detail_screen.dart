import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/models.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Movie argument = ModalRoute.of(context)!.settings.arguments as Movie;

    print(argument.title);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            _PortadaInfoAlbum(
              movieId: argument.id,
            ),
            const _InformacionAlbum(),
          ]))
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Movie argument = ModalRoute.of(context)!.settings.arguments as Movie;
    return SliverAppBar(
      backgroundColor: Colors.deepPurple,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0),
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black26,
          child: Text(
            argument.originalTitle,
            style: const TextStyle(fontSize: 18),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class _PortadaInfoAlbum extends StatelessWidget {
  final int movieId;

  const _PortadaInfoAlbum({Key? key, required this.movieId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Movie argument = ModalRoute.of(context)!.settings.arguments as Movie;
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Hero(
            tag: argument.id,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage('assets/loading.gif'),
                image: NetworkImage(argument.fullPosterImg),
                height: 150,
                width: 110,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: size.width - 210),
                child: Text(
                  argument.title,
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Text(
                argument.originalLanguage,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${argument.voteAverage}',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Sello: Republic Records",
                    style: TextStyle(fontSize: 11),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Formato: Vinilo, LP, Album, Stereo",
                    style: TextStyle(fontSize: 11),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "País: Worldwide",
                    style: TextStyle(fontSize: 11),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Género: Rock",
                    style: TextStyle(fontSize: 11),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Estilo: Rock alternativo",
                    style: TextStyle(fontSize: 11),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _InformacionAlbum extends StatelessWidget {
  const _InformacionAlbum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Movie argument = ModalRoute.of(context)!.settings.arguments as Movie;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(argument.overview),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

class _ListaCanciones extends StatelessWidget {
  const _ListaCanciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: DataTable(
        columns: const [
          DataColumn(label: Text("Canción")),
          DataColumn(label: Text("Créditos"))
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text("Little Wonder")),
            DataCell(Text(
              "David Bowie, Mark Plati, Reeves Gabrels",
              style: TextStyle(fontSize: 12),
            )),
          ]),
          DataRow(cells: [
            DataCell(Text("Looking for satellites")),
            DataCell(
              Text(
                "David Bowie, Mark Plati, Reeves Gabrels",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(Text("Looking for satellites")),
            DataCell(
              Text(
                "David Bowie, Mark Plati, Reeves Gabrels",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(Text("Looking for satellites")),
            DataCell(
              Text(
                "David Bowie, Mark Plati, Reeves Gabrels",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
