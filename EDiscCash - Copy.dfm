object frmEDiscCash: TfrmEDiscCash
  Left = 479
  Top = 175
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1578#1593#1610#1606' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601' '#1606#1602#1583#1610
  ClientHeight = 237
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panButton: TPanel
    Left = 0
    Top = 188
    Width = 352
    Height = 49
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      352
      49)
    object sbExit: TSpeedButton
      Left = 212
      Top = 3
      Width = 65
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1582#1585#1608#1580
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentBiDiMode = False
      OnClick = sbExitClick
    end
    object sbExportToExcel: TSpeedButton
      Left = 181
      Top = 4
      Width = 23
      Height = 25
      Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1705#1587#1604
      Anchors = [akTop, akRight]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbExportToExcelClick
    end
    object stbMain: TStatusBar
      Left = 1
      Top = 29
      Width = 350
      Height = 19
      Constraints.MaxHeight = 19
      Constraints.MinHeight = 19
      Panels = <>
      SimplePanel = True
      SimpleText = 
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#1576#1607' '#1578#1585#1578#1610#1576' :'
    end
    object BtnPost: TBitBtn
      Tag = 24070021
      Left = 280
      Top = 3
      Width = 65
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578
      TabOrder = 0
      OnClick = BtnPostClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 352
    Height = 188
    Align = alClient
    TabOrder = 0
    DesignSize = (
      352
      188)
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 350
      Height = 186
      Align = alClient
      DataSource = dsEDiscCash
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      Columns = <
        item
          Expanded = False
          FieldName = 'D_PERSENT'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_CHEQUE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_CHEQUE_7'
          Width = 68
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'D_DATE'
          Width = 75
          Visible = True
        end>
    end
    object XCalDBPlannerCalendar2: TXCalDBPlannerCalendar
      Left = 19
      Top = 26
      Width = 173
      Height = 161
      EventDayColor = clBlack
      EventMarkerColor = clYellow
      EventMarkerShape = evsCircle
      Anchors = [akTop, akRight]
      BackgroundPosition = bpTiled
      BevelOuter = bvSpace
      BorderWidth = 1
      Look = look3D
      DateDownColor = clNone
      DateHoverColor = clNone
      DateSelectColor = clTeal
      DayFont.Charset = ARABIC_CHARSET
      DayFont.Color = clWindowText
      DayFont.Height = -11
      DayFont.Name = 'Tahoma'
      DayFont.Style = []
      WeekFont.Charset = ARABIC_CHARSET
      WeekFont.Color = clWindowText
      WeekFont.Height = -11
      WeekFont.Name = 'Tahoma'
      WeekFont.Style = []
      WeekName = 'Wk'
      TextColor = clBlack
      SelectColor = clTeal
      SelectFontColor = clWhite
      InActiveColor = clGray
      HeaderColor = clNone
      FocusColor = clHighlight
      InversColor = clTeal
      WeekendColor = clRed
      StartDay = 7
      TodayFormat = '"Today:" dddd ddddd'
      Day = 4
      Month = 12
      Year = 771
      TabOrder = 1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      CaptionColor = clNone
      CaptionTextColor = clBlack
      OnDaySelect = XCalDBPlannerCalendar2DaySelect
      OnExit = XCalDBPlannerCalendar2Exit
      LineColor = clGray
      Line3D = True
      GradientStartColor = clWhite
      GradientEndColor = clBtnFace
      GradientDirection = gdHorizontal
      MonthGradientStartColor = clNone
      MonthGradientEndColor = clNone
      MonthGradientDirection = gdHorizontal
      HintPrevYear = 'Previous Year'
      HintPrevMonth = 'Previous Month'
      HintNextMonth = 'Next Month'
      HintNextYear = 'Next Year'
      Version = '1.7.4.0'
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      ParentFont = False
      XCalendar = PersianCalendar1
      Active = False
      AutoUpdate = True
    end
  end
  object qrEDiscCash: TQuery
    CachedUpdates = True
    OnNewRecord = qrEDiscCashNewRecord
    DatabaseName = 'SALES'
    SQL.Strings = (
      'select * from discountedcash_t')
    UpdateObject = usEDiscCash
    Left = 32
    Top = 124
    object qrEDiscCashD_CODE: TFloatField
      DisplayLabel = #1705#1583
      FieldName = 'D_CODE'
      Origin = 'SALES.DISCOUNTEDCASH_T.D_CODE'
    end
    object qrEDiscCashD_PERSENT: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1578#1582#1601#1610#1601#1610' '#1606#1602#1583#1610
      FieldName = 'D_PERSENT'
      Origin = 'SALES.DISCOUNTEDCASH_T.D_PERSENT'
      OnValidate = qrEDiscCashD_PERSENTValidate
    end
    object qrEDiscCashD_STATUS: TFloatField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'D_STATUS'
      Origin = 'SALES.DISCOUNTEDCASH_T.D_STATUS'
    end
    object qrEDiscCashD_DATE: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'D_DATE'
      Origin = 'SALES.DISCOUNTEDCASH_T.D_DATE'
      OnValidate = qrEDiscCashD_DATEValidate
      EditMask = '!9999/99/99;0;_'
      FixedChar = True
      Size = 8
    end
    object qrEDiscCashD_CHEQUE: TFloatField
      DisplayLabel = #1670#1705' '#1585#1608#1586
      FieldName = 'D_CHEQUE'
      Origin = 'SALES.DISCOUNTEDCASH_T.D_CODE'
      OnValidate = qrEDiscCashD_PERSENTValidate
    end
    object qrEDiscCashD_CHEQUE_7: TFloatField
      DisplayLabel = #1670#1705' '#1578#1575' 7 '#1585#1608#1586
      FieldName = 'D_CHEQUE_7'
      Origin = 'SALES.DISCOUNTEDCASH_T.D_CODE'
      OnValidate = qrEDiscCashD_PERSENTValidate
    end
  end
  object usEDiscCash: TUpdateSQL
    ModifySQL.Strings = (
      'update discountedcash_t'
      'set'
      '  D_CODE = :D_CODE,'
      '  D_PERSENT = :D_PERSENT,'
      '  D_STATUS = :D_STATUS,'
      '  D_DATE = :D_DATE,'
      '  D_CHEQUE = :D_CHEQUE,'
      '  D_CHEQUE_7 = :D_CHEQUE_7'
      'where'
      '  D_CODE = :OLD_D_CODE')
    InsertSQL.Strings = (
      'insert into discountedcash_t'
      '  (D_CODE, D_PERSENT, D_STATUS, D_DATE, D_CHEQUE, D_CHEQUE_7)'
      'values'
      
        '  (:D_CODE, :D_PERSENT, :D_STATUS, :D_DATE, :D_CHEQUE, :D_CHEQUE' +
        '_7)')
    DeleteSQL.Strings = (
      'delete from discountedcash_t'
      'where'
      '  D_CODE = :OLD_D_CODE')
    Left = 64
    Top = 124
  end
  object dsEDiscCash: TDataSource
    DataSet = qrEDiscCash
    Left = 88
    Top = 124
  end
  object PersianCalendar1: TPersianCalendar
    Left = 112
    Top = 24
  end
end
