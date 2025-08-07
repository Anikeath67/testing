import 'package:flutter/material.dart';
import 'package:testing/models/Music.dart';
import 'package:testing/models/category.dart';
import 'package:testing/services/MusicOperation.dart';
import 'package:testing/services/category_operations.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(category.imageURL, fit: BoxFit.cover),
          Text(category.name, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  createlistofCategories() {
    List<Category> categoryList = CategoryOperations.getCategories();
    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();
    return categories;
  }

  Widget createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image.network(music.iMage, fit: BoxFit.cover),
          ),
          Text(music.nAme, style: TextStyle(color: Colors.white)),
          Text(music.dEsc, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: EdgeInsets.only(left: 10) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)),
      
          SizedBox(height: 10),
          SizedBox(
            height: 300,
            child: ListView.builder(
              //padding: EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return createMusic(musicList[index]);
              },
              itemCount: musicList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget createGrid() {
    return SizedBox(
      height: 280,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createlistofCategories(),
      ),
    );
  }

  createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(message, style: TextStyle(color: Colors.white)),

      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.settings, color: Colors.white),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 104, 59, 59), const Color.fromARGB(255, 16, 20, 16)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.3],
            ),
          ),
          child: Column(
            children: [
              createAppBar('Good morning'),
              SizedBox(height: 5),
              createGrid(),
              createMusicList('Made for you'),
              createMusicList('Popular PlayList'),
            ],
          ),
        ),
      ),
    );
    // child: Column(children: [createAppBar('Good Morning'), createGrid()]),
    //  ),
    //  );
  }
}
