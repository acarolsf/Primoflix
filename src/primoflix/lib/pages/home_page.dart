import 'package:flutter/material.dart';
import 'package:primoflix/widgets/relevant_movie_list_view.dart';
import 'package:primoflix/widgets/section_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      body: SingleChildScrollView(
        child: Column(children: [
          RelevantMoviesListView(), 
          SectionView(sectionTitle: "Continue de onde parou"),
          SectionView(sectionTitle: "Categorias"),
          SectionView(sectionTitle: "Populares"),
        ]),
      )
    );
  }
}
