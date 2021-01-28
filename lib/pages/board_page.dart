import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:link_ver1/widgets/boardTile.dart';
import 'package:link_ver1/services/database_service.dart';
import 'package:link_ver1/helper/helper_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class BoardPage extends StatefulWidget {
  final String title;
  final String category;
  final String time_limit;
  final String body;
  final Timestamp create_time;
  final int max_person;

  final String userName;
  final String groupId;
  final String groupName;

  BoardPage({
    this.title,
    this.category,
    this.time_limit,
    this.body,
    this.create_time,
    this.max_person,
    this.groupId,
    this.groupName,
    this.userName,
  });
  @override
  _BoardPageState createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  Color priority = Color.fromARGB(250, 247, 162, 144);

  void print_test() {
    print('title : ' + widget.title);
    print('category : ' + widget.category);
    print('time limit : ' + widget.time_limit);
    print('body : ' + widget.body);
    //print('create time : ' + widget.create_time);
    print('max person : ' + widget.max_person.toString());
    print('group id : ' + widget.groupId);
    print('group name : ' + widget.groupName);
    print('user name : ' + widget.userName);
  }

  @override
  Widget build(BuildContext context) {
    print_test();
    return Scaffold(
      appBar: AppBar(
        title: Text('게시글 상세 정보'),
        centerTitle: true,
        backgroundColor: priority,
        elevation: 10.0,
      ),
      body: Container(
        //카테고리,제목,마감시간 text 컨테이너와 getBoard()가 Column으로 묶여있다
        child: Row(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        /*
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent)),
                            */
                        margin: const EdgeInsets.only(top: 30, left: 25),
                        child: Text(
                          '카테고리 : ' + widget.category,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(width: 150),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: ClipOval(
                          child: Material(
                            color: priority, // button color
                            child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: SizedBox(
                                  width: 45,
                                  height: 45,
                                  child: Icon(Icons.near_me_outlined)),
                              onTap: () {
                                DatabaseService().JoinChat(widget.groupId,
                                    widget.groupName, widget.userName);
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width),
                        /*
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent)),
                            */
                        padding: const EdgeInsets.only(top: 10, left: 25),
                        child: Text(
                          '제목 : ' + widget.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          // overflow: TextOverflow.ellipse,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    /*
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                        */
                    padding: const EdgeInsets.only(top: 10, left: 25),
                    child: Text(
                      '마감시간 : ' + widget.time_limit,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.875,
                          maxHeight: MediaQuery.of(context).size.height * 0.8),
                      margin: const EdgeInsets.only(
                          top: 30, left: 20, right: 20, bottom: 50),
                      padding: const EdgeInsets.only(
                          top: 15, left: 15, right: 15, bottom: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: priority, width: 3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '내용 : ' + widget.body,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.visible,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
