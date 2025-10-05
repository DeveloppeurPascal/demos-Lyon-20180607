(* C2PP
  ***************************************************************************

  Présentation RAD Studio 10.2 Tokyo à Lyon le 7 juin 2018

  Copyright 2018 Patrick PREMARTIN under MIT license.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  DEALINGS IN THE SOFTWARE.

  ***************************************************************************

  Author(s) :
  Patrick PREMARTIN

  Site :
  https://samples.developpeur-pascal.fr/

  Project site :
  https://github.com/DeveloppeurPascal/demos-Lyon-20180607

  ***************************************************************************
  File last update : 2025-10-05T15:59:11.864+02:00
  Signature : 1927df1a8553abf75b929cfea9b487991f785e38
  ***************************************************************************
*)

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
