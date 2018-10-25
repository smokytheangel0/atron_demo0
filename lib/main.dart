import 'package:flutter/material.dart'; 
//this is the view root for case managers
import 'spacing/leader/leader_view.dart' as leader;
//this is the view root for supervisory volunteers
import 'matron/matron_view.dart' as matron;
//this is the view root for employers
import 'nation/nation_view.dart' as nation;
//this is the view root for financial contributors
import 'patron/patron_view.dart' as patron;
//this is the view root for students
import 'spacing/student/student_view.dart' as student;
//this is the view for site leaders and NGO architect
import 'spacing/chief/chief_view.dart' as chief;

//this is the left tab view
import 'login_view.dart' as login;
//this is the right tab view
import 'signup_view.dart' as signup;

//this is the root file for functionality
import 'common/functions.dart' as functions;
//this is the file for objects (including widgets)
import 'common/objects.dart' as objects;


void main() {
  runApp(new MaterialApp(
    home: new PageFrame0(),
    /*
    routes: <String, WidgetBuilder> {
      '/LeaderView': (BuildContext context) => new leader.LeaderView(),
      '/MatronView': (BuildContext context) => new matron.MatronView(),
      '/NationView': (BuildContext context) => new nation.NationView(),
      '/PatronView': (BuildContext context) => new patron.PatronView(),
      '/StudentView': (BuildContext context) => new student.StudentView(),
      '/ChiefView': (BuildContext context) => new chief.ChiefView(),
    }
  */
  ));
}

class PageFrame0 extends StatefulWidget {
  @override
  PageFrame0State createState() => new PageFrame0State();
}


class PageFrame0State extends State<PageFrame0>
with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 3);

  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<bool> _onWillPop() {
    if (controller.index == 0) {
      return new Future<bool>.value(true);
    } else {
      controller.index = 0;
      return new Future<bool>.value(false);
    }
  }

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget> [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                child: SliverAppBar(
                  backgroundColor: const Color(0xff000000),
                  title: Text("*atron"),
                  pinned: true,
                  expandedHeight: 256.0,
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      fit: StackFit.expand,
                      children: <Widget> [
                        Image.asset(
                          'assets/trees_and_me.jpg',
                          fit: BoxFit.cover,
                          height: 256.0
                        )
                      ]
                    )
                  ),

                  bottom: TabBar(
                    controller: controller,
                    tabs: <Tab>[
                      Tab(
                        icon: ImageIcon(
                          AssetImage("assets/loginIcon.png")
                        )
                      ),
                      Tab(
                        icon:ImageIcon(
                          AssetImage("assets/signupIcon.png")
                        )
                      )
                    ],
                  )
                )
              )
            ];
          },
          body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new login.LoginView(),
              new signup.SignupView(),
            ]
          )
        )
      )
    );
  }
}