unit WebModuleUnit1;

interface

uses System.SysUtils, System.Classes, Web.HTTPApp;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

uses System.netencoding;

var
  i: integer = 0;

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := '<html><head><title>Application Serveur Web</title></head><body>';
  if Request.Method = 'GET' then
  begin
    Response.Content := Response.Content + '<p>UserAgent : ' + TNetEncoding.HTML.decode(Request.UserAgent) + '</p>';
    Response.Content := Response.Content + '<p>Content : ' + TNetEncoding.HTML.encode(Request.Content) + '</p>';
    Response.Content := Response.Content + '<p>ContentEncoding : ' + TNetEncoding.HTML.encode(Request.ContentEncoding) + '</p>';
    Response.Content := Response.Content + '<p>PathInfo : ' + TNetEncoding.HTML.encode(Request.PathInfo) + '</p>';
    Response.Content := Response.Content + '<p>PathTranslated : ' + TNetEncoding.HTML.encode(Request.PathInfo) + '</p>';
    Response.Content := Response.Content + '<p>Query : ' + TNetEncoding.HTML.encode(Request.Query) + '</p>';
    if (Request.QueryFields.Values['i'] = 'x') then
      inc(i)
    else if (Request.QueryFields.Values['i'] = '0') then
      i := 0;
    Response.Content := Response.Content + '<p>i=' + i.ToString + '</p>';
  end
  else
  begin
    Response.Content := 'Seuls les accès GET sont autorisés !';
  end;
  Response.Content := Response.Content + '<ul>';
  Response.Content := Response.Content + '<li><a href="/Dossier/Page.html">/Dossier/Page.html</a></li>';
  Response.Content := Response.Content + '<li><a href="SousDossier/">SousDossier/</a></li>';
  Response.Content := Response.Content + '<li><a href="Programme.php?param1=oups&param2=glups">Programme.php?param1=oups&amp;param2=glups</a></li>';
  Response.Content := Response.Content + '<li><a href="InitialiseCompteur?i=0">InitialiseCompteur?i=0</a></li>';
  Response.Content := Response.Content + '<li><a href="Compteur?i=x">Compteur?i=x</a></li>';
  Response.Content := Response.Content + '</ul>';
  Response.Content := Response.Content + '</body></html>';
end;

end.
