object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 974
  Height = 375
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 16
    Top = 16
    Width = 113
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Saisissez une URL'
  end
  object IWEdit1: TIWEdit
    Left = 16
    Top = 38
    Width = 297
    Height = 21
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 0
    Text = 'IWEdit1'
  end
  object IWButton1: TIWButton
    Left = 16
    Top = 65
    Width = 75
    Height = 25
    Caption = 'IWButton1'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnClick = IWButton1Click
  end
  object IWURL1: TIWURL
    Left = 104
    Top = 73
    Width = 209
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    TargetOptions.AddressBar = False
    TerminateApp = False
    UseTarget = False
    FriendlyName = 'IWURL1'
    TabOrder = 2
    RawText = False
    Caption = 'IWURL1'
  end
  object IWButton2: TIWButton
    Left = 16
    Top = 174
    Width = 297
    Height = 25
    Caption = 'Developpeur Pascal'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    ScriptEvents = <
      item
        EventCode.Strings = (
          '$('#39'#IWEDIT1'#39').attr('#39'value'#39','#39'http://www.developpeur-pascal.fr'#39');')
        Event = 'onClick'
      end>
    TabOrder = 3
  end
  object IWButton3: TIWButton
    Left = 16
    Top = 143
    Width = 297
    Height = 25
    Caption = 'Barnsten'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton3'
    ScriptEvents = <
      item
        EventCode.Strings = (
          '$('#39'#IWEDIT1'#39').attr('#39'value'#39','#39'http://www.barnsten.com'#39');')
        Event = 'onClick'
      end>
    TabOrder = 4
  end
  object IWButton4: TIWButton
    Left = 16
    Top = 112
    Width = 297
    Height = 25
    Caption = 'Embarcadero'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton4'
    ScriptEvents = <
      item
        EventCode.Strings = (
          '$('#39'#IWEDIT1'#39').attr('#39'value'#39','#39'http://www.embarcadero.com'#39');')
        Event = 'onClick'
      end>
    TabOrder = 5
  end
  object IWDBGrid1: TIWDBGrid
    Left = 368
    Top = 16
    Width = 561
    Height = 300
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = 'IWDBGrid1'
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <>
    DataSource = DataSource1
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid1'
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgIndicator, dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clNone
    TabOrder = -1
  end
  object IWDBEdit1: TIWDBEdit
    Left = 368
    Top = 322
    Width = 561
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWDBEdit1'
    MaxLength = 15
    ReadOnly = True
    SubmitOnAsyncEvent = True
    TabOrder = 6
    AutoEditable = False
    DataField = 'FIRST_NAME'
    PasswordPrompt = False
    DataSource = DataSource1
  end
  object IWDBNavigator1: TIWDBNavigator
    Left = 328
    Top = 16
    Width = 34
    Height = 120
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    DataSource = DataSource1
    FriendlyName = 'IWDBNavigator1'
    ImageHeight = 24
    ImageWidth = 24
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Orientation = orVertical
  end
  object EmployeeConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    Connected = True
    LoginPrompt = False
    Left = 51
    Top = 226
  end
  object EmployeeTable: TFDQuery
    Active = True
    Connection = EmployeeConnection
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE')
    Left = 147
    Top = 226
  end
  object DataSource1: TDataSource
    DataSet = EmployeeTable
    Left = 152
    Top = 288
  end
end
