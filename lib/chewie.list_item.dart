import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class ChewieListItem extends StatefulWidget{
  //contains the video that we will play
  final VideoPlayerController videoPlayerController;
  final bool looping;

  ChewieListItem(
    {
      @required this.videoPlayerController,
      this.looping,
      Key key,
    })  : super(key:key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();

}
class _ChewieListItemState extends State<ChewieListItem>{
  ChewieController _chewieController;

  @override
  void initState(){
    super.initState();

    _chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.asset("video/video_fpp.mp4"),
      aspectRatio: 3/2,
      autoPlay: true,
      showControlsOnInitialize: true,
      autoInitialize: true,
      looping: true,
    

      errorBuilder: (context,errorMessage){
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Chewie(
                  controller: _chewieController,
                  
                ),
              );
  }
  

@override
void dispose(){
  super.dispose();

  widget.videoPlayerController.dispose();
  _chewieController.dispose();
}
}