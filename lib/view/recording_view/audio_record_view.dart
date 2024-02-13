import 'package:final_year_project/api/sound_player.dart';
import 'package:final_year_project/api/sound_recorder.dart';
import 'package:final_year_project/widgets/timer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


//audio recording and viewing screen

class AudioRecordingAndViewing extends StatefulWidget {
  const AudioRecordingAndViewing({super.key});

  @override
  State<AudioRecordingAndViewing> createState() => _AudioRecordingAndViewingState();
}

class _AudioRecordingAndViewingState extends State<AudioRecordingAndViewing> {
  final recorder = SoundRecorder();
  final timeController = TimeController();

  @override
  void initState() {
    super.initState();
    recorder.init();
  }

  @override
  void dispose() {
    recorder.dispose();
    super.dispose();

  }
  @override
    Widget buildStart() {
    final isRecording = recorder.isRecording;
    final icon = isRecording ? Icons.stop : Icons.start;
    final text = isRecording ? 'STOP' : 'START';
    final primary= isRecording? Colors.red : Colors.white;
    final onPrimmary = isRecording? Colors.white : Colors.black;

    return ElevatedButton.icon(style:ElevatedButton.styleFrom(minimumSize:const Size(175, 50),
    primary: primary,
    onPrimary: onPrimmary),
    icon:  Icon(icon),
    label: Text(
      text,
      style: TextStyle(fontSize: 16,)
    ),
    onPressed: ()async{
      await recorder.toggleRecording();
      final isRecording = recorder.isRecording;
      setState(() {});

      if(isRecording){
        timeController.startTimer();
      }else{
        timeController.stopTimer();
      }
    },
    );
  }

  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) { });
    return  Scaffold(
      appBar: AppBar(title: const Text('Voice Recording'),
      centerTitle: true,),
      body: Center(
        child: buildStart(),
      ),
    );
  }
}