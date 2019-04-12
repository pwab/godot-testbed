using Godot;
using System;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using System.Drawing.Imaging;

public class sprite : Sprite
{
    public Bitmap image;
    public Graphics graphics;
    public byte[] imagearray;
    public Godot.Image gdimage;
    public Godot.ImageTexture gdimagetexture;
    private float time;
    private float elapsed_time;
    private int screen_width;
    private int screen_height;

    public override void _Ready()
    {
        GD.Print("\n>>> Image Test <<<");
        
        // Get the screen size
        screen_width = Screen.PrimaryScreen.Bounds.Width;
        screen_height = Screen.PrimaryScreen.Bounds.Height;
        
        image = new Bitmap(screen_width, screen_height);
        time = 0;
        elapsed_time = 0;
        
        // Load by path
        //image = new Bitmap("C:/Users/pwab/AppData/Roaming/Godot/app_userdata/image_test/icon.png");
    }

    public override void _Process(float delta)
    {
        elapsed_time += 1;
        time += delta;
        
        if (time > 0.1) {
            // Loading Bitmap
            // Load a screenshot
            graphics = Graphics.FromImage(image);
            graphics.CopyFromScreen(0, 0, 0, 0, image.Size);
            image.Save("C:/Users/pwab/AppData/Roaming/Godot/app_userdata/screenrecorder/" + elapsed_time.ToString() + ".png", ImageFormat.Png);
            
            // Load by path
            //image = new Bitmap("C:/Users/pwab/AppData/Roaming/Godot/app_userdata/image_test/icon.png");
            
            // Converting to PoolByteArray (aka byte[])
            imagearray = ImageToByteArray(image);
            //GD.Print("PoolByteArray Data String: ", BitConverter.ToString(imagearray));
            
            // Creating a Godot Image
            gdimage = new Godot.Image();
            gdimage.LoadPngFromBuffer(imagearray);
            
            // Creating a Godot Texture
            gdimagetexture = new Godot.ImageTexture();
            gdimagetexture.CreateFromImage(gdimage);
    
            // Setting the texture to the sprite
            this.Texture = gdimagetexture;
            
            // Reset timer
            time = 0;
        }
    }

    public byte[] ImageToByteArray(System.Drawing.Image imageIn)
    {
       using (var ms = new MemoryStream())
       {
          imageIn.Save(ms, imageIn.RawFormat);
          return  ms.ToArray();
       }
    }
}
