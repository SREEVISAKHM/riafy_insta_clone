import 'package:flutter/material.dart';
import 'package:riafy_instagram_clone/controller/view_state.dart';
import 'package:riafy_instagram_clone/view/widget/feed.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ViewState viewState = Provider.of<ViewState>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined, color: Colors.black),
        title: Text(
          'Instagram',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        actions: [
          Transform.rotate(
            angle: -.6,
            child: Icon(
              Icons.send,
              color: Colors.black,
              size: 25,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: FutureBuilder(
          future: viewState.loadHomeData(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: ListView.builder(
                    itemCount: viewState.viewResponse.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Feed(
                        viewResponse: viewState.viewResponse[index],
                      );
                    },
                  ),
                ),
              );
            }
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.red,
            ),
            label: '',
          ),
        ],
        currentIndex: 0,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
