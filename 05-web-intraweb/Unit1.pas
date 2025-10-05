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
  File last update : 2025-10-05T15:59:11.874+02:00
  Signature : 83e48530cb432b630a9757f489369c2889999820
  ***************************************************************************
*)

unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWHTMLControls, IWCompGrids,
  IWDBGrids, IWCompButton, IWCompEdit, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel, IWDBStdCtrls;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWEdit1: TIWEdit;
    IWButton1: TIWButton;
    IWURL1: TIWURL;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    EmployeeConnection: TFDConnection;
    EmployeeTable: TFDQuery;
    IWDBGrid1: TIWDBGrid;
    IWDBEdit1: TIWDBEdit;
    IWDBNavigator1: TIWDBNavigator;
    DataSource1: TDataSource;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  IWURL1.Caption := 'go to ' + IWEdit1.Text;
  IWURL1.hint := 'cliquez pour visiter ' + IWEdit1.Text;
  IWURL1.url := IWEdit1.Text;
end;

initialization

TIWForm1.SetAsMainForm;

end.
