
import 'package:cinemapedia/config/presentation/providers/movies/movies_slideshow_provider.dart';
import 'package:cinemapedia/config/presentation/widgets/shared/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cinemapedia/config/presentation/providers/movies/providers.dart';


import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: _HomeView()),
      bottomNavigationBar: CustomBottomNavigation(),

      );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
   final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);


    final slideshowMovies = ref.watch(moviesSlideShowProvider);

    



    return Column(
      
      children: [

        const CustomAppbar(),

        MoviesSlideshow(movies: slideshowMovies),

        MovieHorizontalListview (
          
          movie: nowPlayingMovies,

          title: 'En Cines',
          subtitle: 'Lunes ',
          
          
          
          )





      




      ],
    

    
    );
  }
}
