unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Ani, FMX.ExtCtrls,
  FMX.Filter.Effects, FMX.Effects, System.Math.Vectors, FMX.Edit, FMX.Layers3D,
  FMX.Controls3D, FMX.Objects3D, FMX.Viewport3D, FMX.Menus, FMX.MaterialSources;

type
  TForm1 = class(TForm)
    FlowLayout1: TFlowLayout;
    Layout1: TLayout;
    Button1: TButton;
    VertScrollBox1: TVertScrollBox;
    ImageViewer1: TImageViewer;
    BitmapListAnimation1: TBitmapListAnimation;
    ReflectionEffect1: TReflectionEffect;
    BandsEffect1: TBandsEffect;
    TilerEffect1: TTilerEffect;
    Viewport3D1: TViewport3D;
    Sphere1: TSphere;
    Layer3D1: TLayer3D;
    FloatAnimation1: TFloatAnimation;
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    ScrollBar1: TScrollBar;
    MainMenu1: TMainMenu;
    TextureMaterialSource1: TTextureMaterialSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
  private
    FButtonNumber: integer;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  btn: TButton;
begin
  inc(FButtonNumber);
  btn := Button1.Clone(Self) as TButton;
  with (btn) do
  begin
    Text := FButtonNumber.ToString;
    parent := FlowLayout1;
    onclick := Button1.onclick;
  end;
  tanimator.AnimateFloat(btn, 'RotationAngle', FButtonNumber * 10 mod 360, 5);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  showmessage(Edit1.Text);
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Sphere1.Position.Z := ScrollBar1.Value - 50;
end;

end.
