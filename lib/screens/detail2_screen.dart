import 'package:flutter/material.dart';
import 'package:flutter_application_3/themes/app_theme.dart';

class Detail2Screen extends StatelessWidget {
  const Detail2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String argument =
        ModalRoute.of(context)?.settings.arguments.toString() ?? "No argument";
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const _CustomAppBar(),
        SliverList(delegate: SliverChildListDelegate([const _PosterTitle()]))
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppTheme.primary,
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
          child: const Text(
            'Nombre del proyecto',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class _PosterTitle extends StatelessWidget {
  const _PosterTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      color: Colors.amber,
      width: 200,
      height: 300,
      child: FadeInImage(
          fit: BoxFit.cover,
          placeholder: AssetImage("assets/loading.gif"),
          image: AssetImage("assets/no-image.jpg")),
    );
  }
}
