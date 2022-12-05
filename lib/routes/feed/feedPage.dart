import 'package:flutter/material.dart';
import 'package:nutri_message_flutter/routes/login/login.dart';
import 'package:nutri_message_flutter/routes/friends/friend_view.dart';
import 'package:nutri_message_flutter/routes/people/people_view.dart';
import 'package:nutri_message_flutter/widgets/form_new_post.dart';
import 'package:nutri_message_flutter/routes/post/post_view.dart';

class FeedPage extends StatefulWidget {
  static String id = 'feedPage';
  static const routeName = '/feedPage';

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final _postController = PostView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        // foregroundColor: Color.fromARGB(255, 255, 0, 0),
        title: const Text(
          "nutri",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // IconButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, PeopleView.routeName);
              //     },
              //     icon: const Icon(
              //       Icons.person_add,
              //       color: Colors.black87,
              //     )),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.message,
                  color: Colors.black87,
                ),
              ),
            ],
          )
        ],
      ),
      body: Stack(children: [
        ListView(
          children: [
            FormNewPost(),
            ...[
              PostView(),
            ]
          ],
        ),
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.maxFinite,
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        // color: Colors.black,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.33,

                        child: Container(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, PeopleView.routeName);
                                  },
                                  icon: const Icon(
                                    Icons.person_add,
                                    color: Colors.black87,
                                  )),
                              Container(
                                alignment: Alignment.center,
                                width: 50,
                                child: Text("Agregar"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        // color: Colors.black,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.33,

                        child: Container(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, FriendView.routeName);
                                  },
                                  icon: const Icon(
                                    Icons.person,
                                    color: Colors.black87,
                                  )),
                              Container(
                                alignment: Alignment.center,
                                width: 55,
                                child: Text("Solicitud"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        // color: Colors.black,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.33,

                        child: Container(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, LoginPage.routeName);
                                },
                                icon: const Icon(
                                  Icons.exit_to_app,
                                  color: Colors.black87,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 38,
                                child: Text("Salir"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
