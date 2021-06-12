import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riafy_instagram_clone/controller/view_state.dart';

class CommentView extends StatelessWidget {
  const CommentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ViewState viewState = Provider.of<ViewState>(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Comments',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder(
          future: viewState.loadComment(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: viewState.commentResponse.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  title: Row(
                    children: [
                      Text(
                        "${viewState.commentResponse[index].username} ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(viewState.commentResponse[index].comments)
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
