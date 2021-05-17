import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'dart:convert';

import 'package:permission_handler/permission_handler.dart';

class Art extends StatefulWidget {
  @override
  _ArtState createState() => _ArtState();
}

class _ArtState extends State<Art> {
  var url =
      "https://api.unsplash.com/search/photos?per_page=30&client_id=UbFCOlLSd-wAU4eb8tC7-_ESmwydoIochiVFyvbXHo4&query=art and culture";
  List data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    print(res.body);
    var decode = jsonDecode(res.body);
    data = decode["results"];
    setState(() {});
  }

  static Future<bool> _checkAndGetPermission() async {
    final PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    if (permission != PermissionStatus.granted) {
      final Map<PermissionGroup, PermissionStatus> permissions =
          await PermissionHandler()
              .requestPermissions(<PermissionGroup>[PermissionGroup.storage]);
      if (permissions[PermissionGroup.storage] != PermissionStatus.granted) {
        return null;
      }
    }
    return true;
  }

  _onTapProcess(context, values) {
    return CupertinoAlertDialog(
      title: new Text("Do you want to Download?"),
      actions: <Widget>[
        FlatButton(
          child: Text('Yes!'),
          onPressed: () async {
            if (_checkAndGetPermission() != null) {
              Dio dio = Dio();
              try {
                var dir = await getExternalStorageDirectory();
                await dio.download(values, "${dir.path}/$values.jpg");
                print("downloaded");
              } catch (e) {
                print(e);
              }
              Navigator.pop(context);
            } else {}
          },
        ),
        FlatButton(
          child: Text('No'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Art And Culture"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => _onTapProcess(
                                  context, data[index]['urls']['regular']));
                        },
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.network(
                              data[index]["urls"]["small"],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: data.length,
                )
              : Center(child: CircularProgressIndicator())),
    );
  }
}
