namespace Diorama
{
  public partial class MainPage : ContentPage
  {
    int count = 0;

    public MainPage()
    {
      InitializeComponent();
    }

    private void OnStartGameClicked(object sender, EventArgs e)
    {
      SemanticScreenReader.Announce(btnStartGame.Text);
      _ = Navigation.PushModalAsync(new GamePlay());
    }
  }

}
