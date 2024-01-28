namespace Diorama;

public partial class GamePlay : ContentPage
{

  string[] descrs;
  int count = 0;

  public GamePlay()
  {
    AddControls();
    descrs = ["You are walking through the woods", "You hear a noise behind you", "You are startled!", "You realize you are lost", "You died", "Game Over", "You failed, like you've failed at everything all the time"];
    InitializeComponent();
    SetTimer();

  }

  private void SetTimer()
  {
    Label label = new Label();
    Image fl2 = new Image();
    Image fl6 = new Image();
    Image fl3 = new Image();
    Image fl7 = new Image();

    Image fl4 = new Image();
    Image fl8 = new Image();

    Image fl5 = new Image();
    Image fl9 = new Image();
    if (Content is VerticalStackLayout vsl)
    {
      List<IVisualTreeElement> verticalStackLayout = (List<IVisualTreeElement>)vsl.GetVisualTreeDescendants();
      foreach (IVisualTreeElement vte in verticalStackLayout)
      {
      
        if (vte is Label)
        {
          label = (Label)vte;
          if (label.StyleId == "lblDescr")
          {
            label.Text = "Found label";
          }
        }
        if (vte is Image)
        {
          var image = (Image)vte;
          switch (image.StyleId)
          {
            case "fl2": fl2 = image; break;
            case "fl6": fl6 = image; break;
            case "fl3": fl3 = image; break;
            case "fl7": fl7 = image; break;
            case "fl4": fl4 = image; break;
            case "fl8": fl8 = image; break;
            case "fl5": fl5 = image; break;
            case "fl9": fl9 = image; break;
            default:
              break;
          }
        }
      }
    }


    IDispatcherTimer timer2ImageShow;
    timer2ImageShow = Dispatcher.CreateTimer(); // Application.Current.

    timer2ImageShow.Interval = TimeSpan.FromSeconds(.02);
    timer2ImageShow.Tick += (sender, e) => OnTimedEventLayer(fl2, fl6);
    timer2ImageShow.Start();

    IDispatcherTimer timer3ImageShow;
    timer3ImageShow = Dispatcher.CreateTimer();
    timer3ImageShow.Interval = TimeSpan.FromSeconds(.04);
    timer3ImageShow.Tick += (sender, e) => OnTimedEventLayer(fl3, fl7);
    timer3ImageShow.Start();

    IDispatcherTimer timer4ImageShow;
    timer4ImageShow = Dispatcher.CreateTimer();
    timer4ImageShow.Interval = TimeSpan.FromSeconds(.06);
    timer4ImageShow.Tick += (sender, e) => OnTimedEventLayer(fl4, fl8);
    timer4ImageShow.Start();

    IDispatcherTimer timerLabelUpdate;
    timerLabelUpdate = Dispatcher.CreateTimer();
    timerLabelUpdate.Interval = TimeSpan.FromSeconds(4);
    timerLabelUpdate.Tick += (sender, e) => OnTimedEventLabelLayer(label,  descrs);
    timerLabelUpdate.Start();

  }

  private void OnTimedEventLabelLayer(Label label, string[] labelMsgs)
  {   
    if (count <= 6)
    {
      //label.Text = $"OnTimedEventLabelLayer {count}  ";
      label.Text = labelMsgs[count];
      
      count++;
    }
  }

  private static void OnTimedEventLayer(Image firstImage, Image SecondImage)
  {
    //label.Text = $"OnTimedEvent Layer {layerCnt}; ";
    var move = firstImage.TranslationX;
    firstImage.TranslationX = move - 3;

    if (SecondImage.Opacity == 0)
    {
      SecondImage.Opacity = 1;
    }
    SecondImage.TranslationX = firstImage.TranslationX + 1200;

    if (SecondImage.TranslationX < 1)
    {
      firstImage.TranslationX = SecondImage.TranslationX;
      move = firstImage.TranslationX;
      firstImage.TranslationX = move - 3;
    }

  }

  public void AddControls()
  {
    var verticalStackLayout = new VerticalStackLayout
    {
      Spacing = 0,
      Padding = 0,
    };

    var grid = new Grid();
    grid.StyleId = "grid";

    Image fl1 = new Image { StyleId = "fl1", Source = ImageSource.FromFile("forestlayer1.png") }; // does not move
    Image fl2 = new Image { StyleId = "fl2", Source = ImageSource.FromFile("forestlayer2.png") }; 
    Image fl3 = new Image { StyleId = "fl3", Source = ImageSource.FromFile("forestlayer3.png") };
    Image fl4 = new Image { StyleId = "fl4", Source = ImageSource.FromFile("forestlayer4.png") };
    Image fl5 = new Image { StyleId = "fl5", Source = ImageSource.FromFile("forestlayer5.png") }; // move super slow

    Image fl6 = new Image { StyleId = "fl6", Source = ImageSource.FromFile("forestlayer2.png"), Opacity = 0 };
    Image fl7 = new Image { StyleId = "fl7", Source = ImageSource.FromFile("forestlayer3.png"), Opacity = 0 };
    Image fl8 = new Image { StyleId = "fl8", Source = ImageSource.FromFile("forestlayer4.png"), Opacity = 0 };
    Image fl9 = new Image { StyleId = "fl9", Source = ImageSource.FromFile("forestlayer5.png"), Opacity = 0 };
  
    grid.Children.Add(fl1);

    grid.Children.Add(fl2);
    grid.Children.Add(fl6);

    grid.Children.Add(fl3);
    grid.Children.Add(fl7);

    grid.Children.Add(fl4);
    grid.Children.Add(fl8);

    grid.Children.Add(fl5);
    grid.Children.Add(fl9);

    verticalStackLayout.Children.Add(grid);

    var label = new Label();
    //label.FontSize = 24;
    
    label.Text = "You are walking through a forest";
    label.StyleId = "lblDescr";
    verticalStackLayout.Children.Add(label);

    Content = verticalStackLayout;

  }

}


