import 'package:flutter/material.dart';
import 'package:latihan/movieData.dart';

class mainHome extends StatefulWidget {
  const mainHome({Key? key}) : super(key: key);

  @override
  State<mainHome> createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome> {

  static List<String> movieName = ['Cars', 'Up', 'Tangled', 'Ratatouille'];
  static List<String> movieYear = ['2006', '2009', '2010', '2007'];
  static List<String> movieRate = ['7,2/10', '8,3/10', '6,8/10', '8,1/10'];
  static List imageURL =
  [
    'https://i.pinimg.com/564x/ef/66/79/ef6679c17de80fa3a22835274097a046.jpg',
    'https://i.pinimg.com/564x/cd/ac/25/cdac25907202528f6cc79c22aaf4fd44.jpg',
    'https://i.pinimg.com/564x/74/f6/87/74f687c316ea2304bc42611f818495f2.jpg',
    'https://i.pinimg.com/564x/ad/13/20/ad13206fb7b7b05541b3bc2a7281fd2f.jpg'
  ];

  final List<movieData> movieList = List.generate(
      movieName.length,
          (index) =>
          movieData('${movieName[index]}', '${movieYear[index]}',
              '${movieRate[index]}', '${imageURL[index]}'));


  List<movieData>? movieDataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: Text('Movie Favorite List'),
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(movieList[index].movieName, style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                  ),
                  subtitle: Text(movieList[index].movieYear),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image(
                      image: NetworkImage(movieList[index].imageURL),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(movieList[index].movieName),
                          content: Text("Rating: ${movieList[index].movieRate}"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Close"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Show Dialog", style: TextStyle(
                      color: Colors.amber[600]
                  ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


