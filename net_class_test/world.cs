using Godot;
using Microsoft.Xna.Framework;
using MathNet.Numerics.LinearAlgebra;
using MathNet.Symbolics;
using Expr = MathNet.Symbolics.Expression;
using System.Diagnostics;
using NAudio.Wave;

public class world : Node2D
{
    public override void _Ready()
    {
        /// Test if MonoGame is working
        GD.Print("\n");
        GD.Print(MathHelper.E);

        /// Test if MathNet.Numerics is working
        GD.Print("\n");
        // Solve a random linear equation system
        var matrix_A = Matrix<double>.Build.DenseOfArray(new double[,] {
            { 3, 2, -1 },
            { 2, -2, 4 },
            { -1, 0.5, -1 }
        });
        var vector_b = Vector<double>.Build.Dense(new double[] {
            1,
            -2,
            0
        });
        Vector<double> vector_x = matrix_A.Solve(vector_b);
        GD.Print(vector_x.ToString());

        /// Test if MathNet.Symbolics is working
        GD.Print("\n");
        var a = Expr.Symbol("a");
        var b = Expr.Symbol("b");
        var c = Expr.Symbol("c");
        var d = Expr.Symbol("d");

        GD.Print(Infix.Format(a + a));                 // returns 2*a
        GD.Print(Infix.Format(a * a));                    // returns a^2
        GD.Print(Infix.Format((a / b / (c * a)) * (c * d / a) / d));  // returns 1/(a*b)

        /// Test if System.Diagnostics is working
        GD.Print("\n");
        Process[] processlist = Process.GetProcesses();

        foreach (Process theprocess in processlist)
        {
            GD.Print("Process: " + theprocess.ProcessName + "ID: " + theprocess.Id);
        }

        /// Test if NAudio is working
        GD.Print("\n");
        int waveInDevices = WaveIn.DeviceCount;
        for (int waveInDevice = 0; waveInDevice < waveInDevices; waveInDevice++)
        {
            WaveInCapabilities deviceInfo = WaveIn.GetCapabilities(waveInDevice);
            GD.Print("Device " + waveInDevice + ": " + deviceInfo.ProductName + ", " + deviceInfo.Channels + " channels");
        }

        WaveIn waveIn = new WaveIn();
        waveIn.DeviceNumber = 0;
        waveIn.DataAvailable += WaveInDataAvailable;
        int sampleRate = 8000; // 8 kHz
        int channels = 1; // mono
        waveIn.WaveFormat = new WaveFormat(sampleRate, channels);
        waveIn.StartRecording();
    }

    void WaveInDataAvailable(object sender, WaveInEventArgs e)
    {
        float sample32 = 0;

        for (int index = 0; index < e.BytesRecorded; index += 2)
        {
            short sample = (short)((e.Buffer[index + 1] << 8) |
                                    e.Buffer[index + 0]);
            sample32 = sample / 32768f;
        }

        GD.Print(sample32);
    }

    //    public override void _Process(float delta)
    //    {
    //    }
}
