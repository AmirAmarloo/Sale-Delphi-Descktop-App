object frmEGoodsDiscountQty: TfrmEGoodsDiscountQty
  Left = 303
  Top = 126
  Width = 684
  Height = 564
  BiDiMode = bdRightToLeft
  Caption = #1578#1582#1601#1610#1601#1575#1578' '#1585#1608#1610' '#1705#1575#1604#1575' - '#1578#1593#1583#1575#1583#1610
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panButton: TPanel
    Left = 0
    Top = 488
    Width = 676
    Height = 49
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      676
      49)
    object sbLast: TSpeedButton
      Left = 86
      Top = 3
      Width = 25
      Height = 25
      Hint = #1575#1606#1578#1607#1575
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333FF333333333333333003333333
        300033F88F333333388F333000033333300033F8888F3333388F333000000333
        300033F888888F33388F333000000003300033F88888888F388F333000000000
        000033F888888888888F333000000003300033F888888883388F333000000333
        300033F888888333388F333000033333300033F888833333388F333003333333
        3000333883333333388F33333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbLastClick
    end
    object sbNext: TSpeedButton
      Left = 60
      Top = 3
      Width = 25
      Height = 25
      Hint = #1576#1593#1583#1610
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333333FF333333333333333003333
        333333333F88F3333333333333000033333333333F8888F33333333333000000
        333333333F888888F333333333000000003333333F88888888F3333333000000
        000033333F8888888888333333000000003333333F8888888833333333000000
        333333333F8888883333333333000033333333333F8888333333333333003333
        3333333333883333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Margin = 5
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbNextClick
    end
    object sbPrev: TSpeedButton
      Left = 34
      Top = 3
      Width = 25
      Height = 25
      Hint = #1602#1576#1604#1610
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333333333333333333333333333333333333FF33333333333330033
        33333333333F88F33333333333000033333333333F8888F33333333300000033
        3333333F888888F3333333000000003333333F88888888F33333000000000033
        33338888888888F3333333000000003333333388888888F33333333300000033
        33333333888888F3333333333300003333333333338888F33333333333330033
        3333333333338833333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Margin = 1
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbPrevClick
    end
    object sbFirst: TSpeedButton
      Left = 8
      Top = 3
      Width = 25
      Height = 25
      Hint = #1575#1576#1578#1583#1575
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333333333333333333333333333333333333333FF33000333333330
        0333F883333333F88F330003333330000333F8833333F8888F33000333300000
        0333F88333F888888F330003300000000333F883F88888888F33000000000000
        0333F888888888888F330003300000000333F883388888888F33000333300000
        0333F883333888888F330003333330000333F883333338888F33000333333330
        0333F88333333338833333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Margin = 2
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbFirstClick
    end
    object sbExit: TSpeedButton
      Left = 457
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
      Left = 429
      Top = 4
      Width = 24
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
      Width = 674
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
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#1576#1607' '#1578#1585#1578#1610#1576' :'
    end
    object BtnPost: TBitBtn
      Tag = 24070018
      Left = 596
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
    object BtnDel: TBitBtn
      Tag = 24070019
      Left = 526
      Top = 3
      Width = 65
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601
      TabOrder = 1
      OnClick = BtnDelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 50
    Align = alTop
    TabOrder = 0
    DesignSize = (
      676
      50)
    object Label1: TLabel
      Left = 631
      Top = 16
      Width = 29
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1705#1575#1604#1575
    end
    object sbGood: TSpeedButton
      Left = 174
      Top = 12
      Width = 21
      Height = 20
      Hint = #1601#1607#1585#1587#1578
      Anchors = [akTop, akRight]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00700000000000
        00070FFFFFFFFF7FFFF00FFFF44FFF7FFFF007777447777777700FFFFFFFFF7F
        FFF007777447777777700FFFF44FFF7FFFF007774477777777700FF44FFFFF7F
        FFF007447774477777700F44FFF44F7FFFF007744444777777700FFFFFFFFF7F
        FFF000000000000000000F0CCCCCCCC0F0F00000000000000000}
      OnClick = sbGoodClick
    end
    object edGdsCode: TEdit
      Left = 515
      Top = 12
      Width = 113
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      OnExit = edGdsCodeExit
    end
    object edGdName: TEdit
      Left = 195
      Top = 12
      Width = 317
      Height = 21
      Anchors = [akTop, akRight]
      Color = clInfoBk
      Enabled = False
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 50
    Width = 676
    Height = 438
    Align = alClient
    DataSource = dsEGoodsDiscount
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GD_QTY'
        Title.Alignment = taCenter
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GD_PER_QTY'
        Title.Alignment = taCenter
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GD_AMOUNT'
        Title.Alignment = taCenter
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GD_DISTRATE'
        Title.Alignment = taCenter
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GD_DATE'
        Title.Alignment = taCenter
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GD_TODATE'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575' '#1578#1575#1585#1610#1582
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GD_DIS_GRP'
        Visible = False
      end>
  end
  object qrEGoodsDiscount: TQuery
    CachedUpdates = True
    BeforePost = qrEGoodsDiscountBeforePost
    AfterScroll = qrEGoodsDiscountAfterScroll
    OnNewRecord = qrEGoodsDiscountNewRecord
    DatabaseName = 'SALES'
    SQL.Strings = (
      'SELECT * FROM GOODSDICOUNT_QTY_T')
    UpdateObject = usEGoodsDiscount
    Left = 104
    Top = 104
    object qrEGoodsDiscountGD_GCODE: TStringField
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'GD_GCODE'
      Origin = 'SALES.GOODSDICOUNT_T.GD_GCODE'
      Size = 15
    end
    object qrEGoodsDiscountGD_QTY: TFloatField
      DisplayLabel = #1576#1607' '#1575#1586#1575#1610' '#1578#1593#1583#1575#1583
      FieldName = 'GD_QTY'
      Origin = 'SALES.GOODSDICOUNT_QTY_T.GD_QTY'
      OnValidate = qrEGoodsDiscountGD_QTYValidate
    end
    object qrEGoodsDiscountGD_PER_QTY: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1578#1582#1601#1610#1601#1610
      FieldName = 'GD_PER_QTY'
      Origin = 'SALES.GOODSDICOUNT_QTY_T.GD_PER_QTY'
      OnValidate = qrEGoodsDiscountGD_QTYValidate
    end
    object qrEGoodsDiscountGD_DATE: TStringField
      DisplayLabel = ' '#1575#1586' '#1578#1575#1585#1610#1582
      FieldName = 'GD_DATE'
      Origin = 'SALES.GOODSDICOUNT_T.GD_DATE'
      OnValidate = qrEGoodsDiscountGD_DATEValidate
      EditMask = '!9999/99/99;0;_'
      FixedChar = True
      Size = 8
    end
    object qrEGoodsDiscountCF_GOODNAME: TStringField
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldKind = fkCalculated
      FieldName = 'CF_GOODNAME'
      Size = 100
      Calculated = True
    end
    object qrEGoodsDiscountGD_MAX_QTY: TFloatField
      DisplayLabel = #1587#1602#1601' '#1578#1593#1583#1575#1583
      FieldName = 'GD_MAX_QTY'
      Origin = 'SALES.GOODSDICOUNT_QTY_T.GD_MAX_QTY'
      OnValidate = qrEGoodsDiscountGD_QTYValidate
    end
    object qrEGoodsDiscountGD_TODATE: TStringField
      DisplayLabel = #1578#1575' '#1578#1575'.'#1585#1610#1582
      FieldName = 'GD_TODATE'
      Origin = 'SALES.GOODSDICOUNT_QTY_T.GD_TODATE'
      EditMask = '!9999/99/99;0;_'
      FixedChar = True
      Size = 8
    end
    object qrEGoodsDiscountGD_DISTRATE: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1578#1582#1601#1610#1601' '#1581#1580#1605#1610
      FieldName = 'GD_DISTRATE'
      Origin = 'SALES.GOODSDICOUNT_QTY_T.GD_DISTRATE'
    end
    object qrEGoodsDiscountGD_AMOUNT: TFloatField
      DisplayLabel = #1581#1580#1605' '#1605#1576#1604#1594' '#1582#1585#1610#1583
      FieldName = 'GD_AMOUNT'
      Origin = 'SALES.GOODSDICOUNT_QTY_T.GD_AMOUNT'
      DisplayFormat = '#,'
    end
    object qrEGoodsDiscountGD_DIS_GRP: TStringField
      DisplayLabel = #1711#1585#1608#1607' '#1578#1582#1601#1610#1601
      FieldName = 'GD_DIS_GRP'
      Origin = 'SALES.GOODSDICOUNT_QTY_T.GD_DIS_GRP'
      Size = 15
    end
  end
  object usEGoodsDiscount: TUpdateSQL
    ModifySQL.Strings = (
      'update GOODSDICOUNT_QTY_T'
      'set'
      '  GD_GCODE = :GD_GCODE,'
      '  GD_QTY = :GD_QTY,'
      '  GD_PER_QTY = :GD_PER_QTY,'
      '  GD_DATE = :GD_DATE,'
      '  GD_MAX_QTY = :GD_MAX_QTY,'
      '  GD_TODATE = :GD_TODATE,'
      '  GD_DISTRATE = :GD_DISTRATE,'
      '  GD_AMOUNT = :GD_AMOUNT,'
      '  GD_DIS_GRP = :GD_DIS_GRP'
      'where'
      '  GD_GCODE = :OLD_GD_GCODE and'
      '  GD_QTY = :OLD_GD_QTY and'
      '  GD_DATE = :OLD_GD_DATE')
    InsertSQL.Strings = (
      'insert into GOODSDICOUNT_QTY_T'
      
        '  (GD_GCODE, GD_QTY, GD_PER_QTY, GD_DATE, GD_MAX_QTY, GD_TODATE,' +
        ' GD_DISTRATE, '
      '   GD_AMOUNT, GD_DIS_GRP)'
      'values'
      
        '  (:GD_GCODE, :GD_QTY, :GD_PER_QTY, :GD_DATE, :GD_MAX_QTY, :GD_T' +
        'ODATE, '
      '   :GD_DISTRATE, :GD_AMOUNT, :GD_DIS_GRP)')
    DeleteSQL.Strings = (
      'delete from GOODSDICOUNT_QTY_T'
      'where'
      '  GD_GCODE = :OLD_GD_GCODE and'
      '  GD_QTY = :OLD_GD_QTY and'
      '  GD_DATE = :OLD_GD_DATE')
    Left = 136
    Top = 104
  end
  object dsEGoodsDiscount: TDataSource
    DataSet = qrEGoodsDiscount
    Left = 168
    Top = 104
  end
end
