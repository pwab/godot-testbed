using Godot;
using NAudio.Wave;
using System;

public class naudio_test : Node
{
    String outputFilePath = "recorded.wav";
    WaveInEvent waveIn = new WaveInEvent();
    WaveFileWriter writer = null;
    bool closing = false;

    public override void _Ready()
    {
        waveIn.DataAvailable += (s, a) =>
        {
            writer.Write(a.Buffer, 0, a.BytesRecorded);
            if (writer.Position > waveIn.WaveFormat.AverageBytesPerSecond * 30)
            {
                waveIn.StopRecording();
            }
        };
        
        waveIn.RecordingStopped += (s, a) =>
        {
            writer?.Dispose(); 
            writer = null;
            if (closing) 
            { 
                waveIn.Dispose();
            }
        };
    }
    
    private void _on_start_button_pressed()
    {
        GD.Print("START");
        writer = new WaveFileWriter(outputFilePath, waveIn.WaveFormat);
        waveIn.StartRecording(); 
    }


    private void _on_stop_button_pressed()
    {
        GD.Print("STOP");
        waveIn.StopRecording();
    }
}



