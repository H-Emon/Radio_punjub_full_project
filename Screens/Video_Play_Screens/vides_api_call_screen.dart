import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_punjab_today/Screens/Video_Play_Screens/video_play_details_screen.dart';
import '../../Api Call/Get_video_data/get_video_data.dart';





class VideoShowsScreen extends StatefulWidget {
  const VideoShowsScreen({Key? key}) : super(key: key);

  @override
  State<VideoShowsScreen> createState() => _VideoShowsScreenState();
}

class _VideoShowsScreenState extends State<VideoShowsScreen> {
  @override
  void initState() {
    super.initState();
    final videoModel = Provider.of<VideoDataClass>(context, listen: false);
    videoModel.getVideoData();
  }

  @override
  Widget build(BuildContext context) {
    final videoModel = Provider.of<VideoDataClass>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text(
          "News",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: videoModel.loading
          ? Container(
        color: Colors.grey,
      )
          : ListView.builder(
          itemCount: videoModel.videos!.video!.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => VideoCategory(
                            youtubeUrl:videoModel.videos!.video![index].url.toString()
                          )


                      ));
                    },
                    child: Container(
                      height:80,
                      width: 100,
                      color:Colors.red,
                      child:Text("paly"),
                    ),
                  ),
                ));
          }),
      bottomSheet: Container(
        height: 100,
        color: Colors.white,
        child: Card(
          child: ListTile(
            tileColor: Colors.white,
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/radio _logo.jpg',
                  width: 50,
                  height: 60,
                  fit: BoxFit.cover,
                )),
            title: Text(
              "Radio Punjab Today",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            trailing: Icon(
              Icons.pause,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

