import 'package:flutter/material.dart';
import 'package:nutri_message_flutter/models/user.dart';
import 'package:nutri_message_flutter/routes/friends/friend_controller.dart';

// class FriendsView extends StatefulWidget {
//   static const routeName = '/friend';
//   const FriendsView({super.key});

//   @override
//   State<FriendsView> createState() => _FriendsViewState();
// }

// class _FriendsViewState extends State<FriendsView> {
//   List<User> listFriend = [];
//   final _friendController = FriendController();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         elevation: 0,
//         // foregroundColor: Colors.black,
//         title: const Text(
//           "Notificaciones",
//           style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.w400,
//               color: Color.fromARGB(255, 255, 255, 255)),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: GridView.count(
//           crossAxisCount: 2,
//           // children: listUser.map((user) => UserWidget(user)).toList()
//         ),
//       ),
//     );
//   }
// }

// class UserWidget extends StatelessWidget {
//   final User user;
//   const UserWidget(this.user, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color.fromARGB(255, 0, 0, 0),
//       height: 50,
//       margin: EdgeInsets.only(top: 10, left: 10, right: 10),
//       padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
//       child: Container(
//         width: 100,
//         child: Row(
//           children: [
//             IconButton(
//               onPressed: () async {
//                 final _friendController = FriendController();
//                 await _friendController.postFriends();
//                 // try {
//                 //   await
//                 // } catch (e) {
//                 //   // how to send a toast flutter
//                 //   print(e.toString());
//                 // }
//               },
//               icon: const Icon(
//                 Icons.person_add,
//                 color: Colors.white,
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               width: 100,
//               child: Text(
//                 user.name,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400,
//                     color: Color.fromARGB(255, 255, 255, 255)),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class FriendView extends StatefulWidget {
  static const routeName = '/friend';
  const FriendView({super.key});

  @override
  State<FriendView> createState() => _FriendViewState();
}

class _FriendViewState extends State<FriendView> {
  List<bool> listFriends = [];
  // final _friendRequestController = FriendRequestController();

  @override
  void initState() {
    //   // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        // foregroundColor: Colors.black,
        title: const Text(
          "Solicitudes",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          // children: listFriends.map((user) => UserFRWidget(user)).toList()
        ),
      ),
    );
  }
}

class UserFRWidget extends StatelessWidget {
  final User user;
  const UserFRWidget(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      height: 50,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () async {
                final _friendRequestController = FriendRequestController();
                await _friendRequestController.postFriendsR(user.id);
                print(_friendRequestController.postFriendsR(user.id));
                // Navigator.pop(context);
                // print(context);
              },
              icon: const Icon(
                Icons.person_add,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              child: Text(
                user.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
