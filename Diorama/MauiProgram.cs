using CommunityToolkit.Maui;
using CommunityToolkit.Maui.Markup;


namespace Diorama
{
  public static class MauiProgram
  {
    public static MauiApp CreateMauiApp()
    {
      var builder = MauiApp.CreateBuilder();
      builder
        .UseMauiApp<App>()
        .UseMauiCommunityToolkitMarkup()
        .UseMauiCommunityToolkit()
        .ConfigureFonts(fonts =>
        {
          fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
          fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
        });
      builder.Services.AddTransient<GamePlay>();
      builder.Services.AddTransient<MainPage>();

      Routing.RegisterRoute(nameof(GamePlay), typeof(GamePlay));
      return builder.Build();
    }
  }
}
