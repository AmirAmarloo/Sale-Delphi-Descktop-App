object FrmESaleProp: TFrmESaleProp
  Left = 144
  Top = 42
  Width = 1038
  Height = 661
  BiDiMode = bdRightToLeft
  Caption = #1662#1610#1588#1606#1607#1575#1583' '#1601#1585#1608#1588
  Color = clWindow
  Ctl3D = False
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 425
    Width = 1022
    Height = 6
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnFace
    ParentColor = False
  end
  object Panel4: TPanel
    Left = 0
    Top = 28
    Width = 1022
    Height = 397
    Align = alClient
    TabOrder = 1
    object dbgrOffer: TDBGrid
      Left = 1
      Top = 191
      Width = 1020
      Height = 161
      Align = alClient
      DataSource = DM_IntSales.dsEIntOfferDet
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = dbgrOfferColEnter
      OnColExit = dbgrOfferColExit
      OnDrawColumnCell = dbgrOfferDrawColumnCell
      OnEditButtonClick = dbgrOfferEditButtonClick
      OnEnter = dbgrOfferEnter
      OnKeyDown = dbgrOfferKeyDown
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'OFSEQ'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1585#1583#1610#1601
          Width = 31
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'GDS_CODE'
          Title.Alignment = taCenter
          Title.Caption = #1603#1583' '#1605#1581#1589#1608#1604
          Width = 92
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'GDS_DESCF'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605
          Width = 300
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'UNT_DESC'
          Title.Alignment = taCenter
          Title.Caption = #1608#1575#1581#1583
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OFPRICE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OFQTY'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583
          Width = 56
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CF_PACKVALUE'
          Title.Alignment = taCenter
          Title.Caption = #1576#1587#1578#1607' '#1576#1606#1583#1610
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ABATE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CF_PERABAT'
          Title.Alignment = taCenter
          Width = 64
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CF_TAX'
          Title.Caption = #1605#1575#1604#1610#1575#1578' '#1608' '#1593#1608#1575#1585#1590
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CASH_ABATE'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CF_PERCASHABATE'
          Visible = False
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'TOTCOST'
          Title.Alignment = taCenter
          Title.Caption = #1602#1610#1605#1578' '#1603#1604
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PACK_TYPE'
          PickList.Strings = (
            #1705#1610#1587#1607
            #1580#1593#1576#1607
            #1601#1604#1607
            #1576#1588#1705#1607
            #1705#1610#1587#1607' 40 '#1705#1610#1604#1608#1610#1610)
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1576#1587#1578#1607' '#1576#1606#1583#1610
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'GDSINFO'
          Title.Alignment = taCenter
          Title.Caption = #1605#1588#1582#1589#1607' '#1705#1575#1604#1575
          Visible = False
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CF_USERPRICE'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OF_REALQTY'
          Visible = False
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1020
      Height = 190
      Align = alTop
      TabOrder = 0
      DesignSize = (
        1020
        190)
      object Label6: TLabel
        Left = 937
        Top = 11
        Width = 37
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1588#1578#1585#1610
      end
      object Label13: TLabel
        Left = 937
        Top = 100
        Width = 26
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1608#1711#1575#1606
      end
      object Label15: TLabel
        Left = 451
        Top = 32
        Width = 53
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1575#1602#1578#1589#1575#1583#1610
      end
      object sbCustNo: TSpeedButton
        Left = 583
        Top = 6
        Width = 21
        Height = 22
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
        OnClick = sbCustNoClick
      end
      object Label9: TLabel
        Left = 937
        Top = 123
        Width = 25
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1570#1583#1585#1587
      end
      object Label8: TLabel
        Left = 937
        Top = 146
        Width = 40
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578
      end
      object lbSecCust: TLabel
        Left = 523
        Top = 11
        Width = 58
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1588#1578#1585#1610' '#1608#1610#1688#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object SpeedButton1: TSpeedButton
        Left = 583
        Top = 51
        Width = 21
        Height = 22
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
        OnClick = SpeedButton1Click
      end
      object Label19: TLabel
        Left = 937
        Top = 56
        Width = 29
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1586#1610#1578#1608#1585
      end
      object SpeedButton2: TSpeedButton
        Left = 583
        Top = 73
        Width = 21
        Height = 22
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
        OnClick = SpeedButton2Click
      end
      object Label20: TLabel
        Left = 937
        Top = 78
        Width = 40
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1581#1589#1610#1604#1583#1575#1585
      end
      object SpeedButton3: TSpeedButton
        Left = 583
        Top = 95
        Width = 21
        Height = 22
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
        OnClick = SpeedButton3Click
      end
      object Label21: TLabel
        Left = 217
        Top = 99
        Width = 80
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ' '#1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585
      end
      object Label22: TLabel
        Left = 451
        Top = 54
        Width = 21
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1604#1601#1606
        FocusControl = DBEdit6
      end
      object Label23: TLabel
        Left = 453
        Top = 76
        Width = 26
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1588#1608#1585
        FocusControl = DBEdit7
      end
      object Label24: TLabel
        Left = 217
        Top = 76
        Width = 22
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1607#1585
        FocusControl = DBEdit8
      end
      object Label26: TLabel
        Left = 451
        Top = 11
        Width = 20
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1585#1608#1607
        FocusControl = DBEdit10
      end
      object Label27: TLabel
        Left = 217
        Top = 54
        Width = 27
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1587#1610#1585
        FocusControl = DBEdit11
      end
      object Label25: TLabel
        Left = 215
        Top = 32
        Width = 86
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' '#1605#1585#1580#1593
        Visible = False
      end
      object Label28: TLabel
        Left = 217
        Top = 11
        Width = 68
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1608#1575#1581#1583' '#1601#1585#1608#1588
        Visible = False
      end
      object Label29: TLabel
        Left = 217
        Top = 122
        Width = 86
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ' '#1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607' '#1607#1583#1575#1610#1575
        Visible = False
      end
      object SpeedButton4: TSpeedButton
        Left = 318
        Top = 118
        Width = 21
        Height = 22
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
        OnClick = SpeedButton4Click
      end
      object Label32: TLabel
        Left = 862
        Top = 168
        Width = 17
        Height = 13
        Caption = #1575#1606#1576#1575#1585
      end
      object SpeedButton5: TSpeedButton
        Left = 583
        Top = 163
        Width = 21
        Height = 22
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
        OnClick = SpeedButton5Click
      end
      object Label33: TLabel
        Left = 937
        Top = 33
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583#1601#1585#1608#1588#1711#1575#1607
      end
      object SpeedButton6: TSpeedButton
        Left = 583
        Top = 28
        Width = 21
        Height = 22
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
        OnClick = SpeedButton6Click
      end
      object SpeedButton7: TSpeedButton
        Left = 16
        Top = 163
        Width = 113
        Height = 22
        Caption = #1601#1575#1705#1578#1608#1585' '#1578#1582#1601#1610#1601
        OnClick = SpeedButton7Click
      end
      object Label36: TLabel
        Left = 451
        Top = 100
        Width = 28
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1587#1578#1575#1606
        FocusControl = DBEdit16
      end
      object Label38: TLabel
        Left = 340
        Top = 168
        Width = 146
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1606#1575#1587#1607' '#1587#1601#1575#1585#1588' '#1601#1585#1608#1588' '#1575#1610#1606#1578#1585#1606#1578#1610
      end
      object dbedEcCode: TDBEdit
        Left = 340
        Top = 29
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CF_CECODE'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 14
      end
      object dbedCustName: TDBEdit
        Left = 605
        Top = 8
        Width = 252
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CF_CUSTNAME'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 1
      end
      object dbedOFComm: TDBEdit
        Left = 858
        Top = 97
        Width = 75
        Height = 19
        Anchors = [akTop, akRight]
        DataField = 'OFCOMM'
        DataSource = DM_IntSales.dsEIntOffer
        TabOrder = 8
        OnExit = dbedOFCommExit
      end
      object dbedCustNO: TDBEdit
        Left = 858
        Top = 8
        Width = 75
        Height = 19
        Anchors = [akTop, akRight]
        DataField = 'CUSTNO'
        DataSource = DM_IntSales.dsEIntOffer
        TabOrder = 0
        OnExit = dbedCustNOExit
      end
      object dbedCustAdr: TDBEdit
        Left = 340
        Top = 120
        Width = 593
        Height = 19
        Anchors = [akTop, akRight]
        DataField = 'ORDADDRESS'
        DataSource = DM_IntSales.dsEIntOffer
        TabOrder = 10
      end
      object dbmOFDesc: TDBMemo
        Left = 340
        Top = 141
        Width = 593
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'OFDESC'
        DataSource = DM_IntSales.dsEIntOffer
        MaxLength = 240
        TabOrder = 11
      end
      object dbedVCode: TDBEdit
        Left = 858
        Top = 53
        Width = 75
        Height = 19
        Anchors = [akTop, akRight]
        DataField = 'ORD_DELV_NO'
        DataSource = DM_IntSales.dsEIntOffer
        TabOrder = 4
        OnExit = dbedVCodeExit
      end
      object DBEdit3: TDBEdit
        Left = 605
        Top = 53
        Width = 252
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CF_VISITORNAME'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 5
      end
      object dbedDriver: TDBEdit
        Left = 858
        Top = 75
        Width = 75
        Height = 19
        Anchors = [akTop, akRight]
        DataField = 'PRJCODE'
        DataSource = DM_IntSales.dsEIntOffer
        MaxLength = 6
        TabOrder = 6
        OnExit = dbedDriverExit
      end
      object DBEdit4: TDBEdit
        Left = 605
        Top = 75
        Width = 252
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CF_DRIVERNAME'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 7
      end
      object DBEdit2: TDBEdit
        Left = 605
        Top = 97
        Width = 252
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CF_CARNAME'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 340
        Top = 51
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CUSTTEL'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 15
      end
      object DBEdit7: TDBEdit
        Left = 340
        Top = 73
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CF_COUNTRYNAME'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 16
      end
      object DBEdit8: TDBEdit
        Left = 105
        Top = 73
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CUST_CTCODE'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 17
      end
      object DBEdit10: TDBEdit
        Left = 340
        Top = 8
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CUSTTYPE_CODE'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 18
      end
      object DBEdit11: TDBEdit
        Left = 105
        Top = 51
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CUST_DIR'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 19
      end
      object edHavale: TEdit
        Left = 105
        Top = 96
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        Enabled = False
        TabOrder = 20
      end
      object DBEdit9: TDBEdit
        Left = 105
        Top = 29
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'OFDLVDTE'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 21
        Visible = False
      end
      object edBranchName: TEdit
        Left = 105
        Top = 8
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        Enabled = False
        TabOrder = 22
      end
      object edOfferDoc: TEdit
        Left = 105
        Top = 119
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        Enabled = False
        TabOrder = 23
        Visible = False
      end
      object DBEdit12: TDBEdit
        Left = 858
        Top = 165
        Width = 75
        Height = 19
        Anchors = [akTop, akRight]
        DataField = 'STK_CODE'
        DataSource = DM_IntSales.dsEIntOffer
        TabOrder = 12
        OnExit = DBEdit12Exit
      end
      object DBEdit13: TDBEdit
        Left = 605
        Top = 165
        Width = 252
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CF_STKDESC'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 13
      end
      object DBEdit14: TDBEdit
        Left = 858
        Top = 30
        Width = 75
        Height = 19
        Anchors = [akTop, akRight]
        DataField = 'C_CODE'
        DataSource = DM_IntSales.dsEIntOffer
        MaxLength = 6
        TabOrder = 2
        OnExit = DBEdit14Exit
      end
      object DBEdit15: TDBEdit
        Left = 605
        Top = 30
        Width = 252
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CF_STOREDESC'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 3
      end
      object DBEdit16: TDBEdit
        Left = 340
        Top = 97
        Width = 108
        Height = 19
        Anchors = [akTop, akRight]
        Color = clInfoBk
        DataField = 'CUST_STATE'
        DataSource = DM_IntSales.dsEIntOffer
        Enabled = False
        TabOrder = 24
      end
      object DBEdit18: TDBEdit
        Left = 208
        Top = 165
        Width = 125
        Height = 19
        Anchors = [akTop, akRight]
        DataField = 'ONLINESALE_NO'
        DataSource = DM_IntSales.dsEIntOffer
        TabOrder = 25
        OnExit = dbedOFCommExit
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 352
      Width = 1020
      Height = 44
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        1020
        44)
      object Label5: TLabel
        Left = 938
        Top = 14
        Width = 69
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1590#1575#1601#1575#1578' '#1608' '#1603#1587#1608#1585
      end
      object Label7: TLabel
        Left = 605
        Top = 14
        Width = 78
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1606#1575#1582#1575#1604#1589
      end
      object sbSale: TSpeedButton
        Left = 16
        Top = 11
        Width = 98
        Height = 26
        GroupIndex = 1
        Down = True
        Caption = #1601#1585#1608#1588
        OnClick = sbSaleClick
      end
      object sbLostSales: TSpeedButton
        Left = 120
        Top = 11
        Width = 98
        Height = 26
        GroupIndex = 1
        Caption = #1601#1585#1608#1588' '#1575#1586' '#1583#1587#1578' '#1585#1601#1578#1607
        OnClick = sbLostSalesClick
      end
      object Label34: TLabel
        Left = 875
        Top = 14
        Width = 53
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601
      end
      object Label35: TLabel
        Left = 391
        Top = 14
        Width = 67
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1585#1575#1587' '#1605#1580#1575#1586' ('#1585#1608#1586')'
      end
      object edGrossPrice: TEdit
        Left = 471
        Top = 11
        Width = 130
        Height = 19
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        Color = clInfoBk
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 741
        Top = 11
        Width = 130
        Height = 19
        Anchors = [akTop, akRight]
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 307
        Top = 11
        Width = 70
        Height = 19
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        Color = clInfoBk
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  object panButton: TPanel
    Left = 0
    Top = 566
    Width = 1022
    Height = 56
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      1022
      56)
    object sbLast: TSpeedButton
      Left = 88
      Top = 5
      Width = 23
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
      Top = 5
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
      Top = 5
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
      Top = 5
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
      Left = 788
      Top = 5
      Width = 75
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
    object spDesign: TSpeedButton
      Left = 118
      Top = 5
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      OnClick = spDesignClick
    end
    object stbMain: TStatusBar
      Left = 1
      Top = 36
      Width = 1020
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
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#1576#1607' '#1578#1585#1578#1610#1576' :'
    end
    object btnPost: TBitBtn
      Tag = 24070241
      Left = 943
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578
      TabOrder = 0
      OnClick = btnPostClick
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
    object btnDelete: TBitBtn
      Tag = 24070251
      Left = 866
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601
      TabOrder = 1
      OnClick = btnDeleteClick
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
    object btnNoControl: TBitBtn
      Left = 319
      Top = 5
      Width = 102
      Height = 25
      Caption = #1593#1583#1605' '#1578#1575#1610#1610#1583
      TabOrder = 3
      Visible = False
      OnClick = btnNoControlClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnControl: TBitBtn
      Tag = 24070261
      Left = 319
      Top = 5
      Width = 102
      Height = 25
      Caption = #1578#1575#1610#1610#1583' '#1605#1583#1610#1585' '#1601#1585#1608#1588
      TabOrder = 2
      Visible = False
      OnClick = btnControlClick
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
    object bbPreview: TBitBtn
      Left = 172
      Top = 5
      Width = 25
      Height = 25
      Constraints.MaxHeight = 25
      Constraints.MaxWidth = 25
      Constraints.MinHeight = 25
      Constraints.MinWidth = 25
      TabOrder = 5
      OnClick = bbPreviewClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777700000000000077000FFFFFFFFFF070000FFFFFFF000000070FFFFFF08778
        00770FFFFF0877E8F0770FFFFF07777870770FFFFF07E77870770FFFFF08EE78
        F0770FFFFFF0877807770FFFFFFF000077770FFFFFFFFFF077770FFFFFFF0000
        77770FFFFFFF070777770FFFFFFF007777770000000007777777}
    end
    object bbPrint: TBitBtn
      Left = 145
      Top = 5
      Width = 25
      Height = 25
      TabOrder = 6
      OnClick = bbPreviewClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777700000000000777707777777770707700000000000007070777777BBB77
        0007077777788877070700000000000007700777777777707070700000000007
        0700770FFFFFFFF070707770F00000F000077770FFFFFFFF077777770F00000F
        077777770FFFFFFFF07777777000000000777777777777777777}
    end
    object ComboBox1: TComboBox
      Left = 203
      Top = 8
      Width = 100
      Height = 21
      ItemHeight = 13
      TabOrder = 7
      Text = #1601#1585#1605#1578'1'
      Items.Strings = (
        #1601#1585#1605#1578'1'
        #1601#1585#1605#1578'2'
        #1601#1585#1605#1578'3')
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 501
      Top = -1
      Width = 170
      Height = 36
      Anchors = [akTop, akRight]
      Caption = #1608#1590#1593#1610#1578
      Columns = 2
      DataField = 'OFDLVPLACE'
      DataSource = DM_IntSales.dsEIntOffer
      Items.Strings = (
        #1575#1576#1591#1575#1604
        #1593#1583#1605' '#1575#1576#1591#1575#1604)
      TabOrder = 8
      Values.Strings = (
        '1'
        '0')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 28
    Align = alTop
    TabOrder = 0
    OnExit = Panel1Exit
    DesignSize = (
      1022
      28)
    object Label1: TLabel
      Left = 937
      Top = 7
      Width = 62
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 412
      Top = 7
      Width = 120
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1578#1593#1610#1610#1606' '#1606#1585#1582' '#1605#1589#1608#1576'  '#1705#1575#1604#1575
    end
    object Label3: TLabel
      Left = 705
      Top = 7
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 937
      Top = 30
      Width = 69
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
      Visible = False
    end
    object Label11: TLabel
      Left = 423
      Top = 30
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1593#1578#1576#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 937
      Top = 52
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1586#1605#1575#1606' '#1578#1581#1608#1610#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label16: TLabel
      Left = 423
      Top = 52
      Width = 54
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1608#1590#1593#1610#1578' '#1601#1585#1605
      ParentBiDiMode = False
      Visible = False
    end
    object Label12: TLabel
      Left = 671
      Top = 30
      Width = 99
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588' '#1578#1581#1608#1610#1604
      Visible = False
    end
    object Label14: TLabel
      Left = 937
      Top = 75
      Width = 50
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1604' '#1578#1581#1608#1610#1604
      Visible = False
    end
    object sbList: TSpeedButton
      Left = 804
      Top = 2
      Width = 21
      Height = 22
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
      OnClick = sbListClick
    end
    object chbRAmani: TSpeedButton
      Left = 13
      Top = 1
      Width = 20
      Height = 25
      Caption = #1576#1585#1711#1588#1578' '#1575#1586' '#1575#1605#1575#1606#1610
      Flat = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      OnClick = chbRAmaniClick
    end
    object dbedOFNum: TDBEdit
      Left = 827
      Top = 4
      Width = 107
      Height = 19
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'OFNUM'
      DataSource = DM_IntSales.dsEIntOffer
      ParentBiDiMode = False
      TabOrder = 0
      OnExit = dbedOFNumExit
      OnKeyDown = dbedOFNumKeyDown
      OnKeyPress = dbedOFNumKeyPress
    end
    object dbedReqID: TDBEdit
      Left = 85
      Top = 4
      Width = 77
      Height = 19
      Anchors = [akTop, akRight]
      DataField = 'CUST_REQNO'
      DataSource = DM_IntSales.dsEIntOffer
      MaxLength = 15
      TabOrder = 3
      Visible = False
    end
    object dbedBIDate: TDBEdit
      Left = 341
      Top = 27
      Width = 77
      Height = 19
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'OFVALDTE'
      DataSource = DM_IntSales.dsEIntOffer
      ParentBiDiMode = False
      TabOrder = 5
      Visible = False
      OnExit = dbedBIDateExit
      OnKeyPress = dbedBIDateKeyPress
    end
    object dbedOFDte: TDBEdit
      Left = 589
      Top = 4
      Width = 108
      Height = 19
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'OFDATE'
      DataSource = DM_IntSales.dsEIntOffer
      ParentBiDiMode = False
      TabOrder = 1
      OnExit = dbedOFDteExit
    end
    object dbedOFDlvDte: TDBEdit
      Left = 557
      Top = 57
      Width = 377
      Height = 19
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'OFDLVDTE'
      DataSource = DM_IntSales.dsEIntOffer
      ParentBiDiMode = False
      TabOrder = 6
      Visible = False
    end
    object dbedReqDte: TDBEdit
      Left = 898
      Top = 27
      Width = 108
      Height = 19
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clHighlightText
      DataField = 'CUST_REQDATE'
      DataSource = DM_IntSales.dsEIntOffer
      ParentBiDiMode = False
      TabOrder = 4
      Visible = False
      OnExit = dbedReqDteExit
    end
    object dbedStat: TDBEdit
      Left = 341
      Top = 49
      Width = 77
      Height = 19
      Anchors = [akTop, akRight]
      Color = clInfoBk
      DataField = 'OFSTAT'
      DataSource = DM_IntSales.dsEIntOffer
      Enabled = False
      ReadOnly = True
      TabOrder = 7
      Visible = False
    end
    object dbedORD_DELV_NO: TDBEdit
      Left = 557
      Top = 27
      Width = 109
      Height = 19
      Anchors = [akTop, akRight]
      Color = clInfoBk
      DataField = 'ORD_DELV_NO'
      DataSource = DM_IntSales.dsEIntOffer
      Enabled = False
      ReadOnly = True
      TabOrder = 2
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 133
      Top = 136
      Width = 593
      Height = 19
      Anchors = [akTop, akRight]
      DataField = 'OFDLVPLACE'
      DataSource = DM_IntSales.dsEIntOffer
      TabOrder = 8
      Visible = False
    end
    object cbAmani: TCheckBox
      Left = 0
      Top = 3
      Width = 61
      Height = 20
      Caption = #1575#1605#1575#1606#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnClick = cbAmaniClick
    end
    object DBEdit5: TDBEdit
      Left = 281
      Top = 4
      Width = 121
      Height = 19
      TabStop = False
      Anchors = [akTop, akRight]
      DataField = 'OFVALDTE'
      DataSource = DM_IntSales.dsEIntOffer
      TabOrder = 10
      OnExit = DBEdit5Exit
    end
    object chbAddedTax: TCheckBox
      Left = 112
      Top = 5
      Width = 81
      Height = 17
      Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
      Checked = True
      State = cbChecked
      TabOrder = 11
      Visible = False
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 541
    Width = 1022
    Height = 25
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      1022
      25)
    object Label17: TLabel
      Left = 358
      Top = 7
      Width = 72
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1582#1575#1604#1589
    end
    object Label18: TLabel
      Left = 177
      Top = 7
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1583#1575#1583' '#1606#1587#1582
    end
    object Label30: TLabel
      Left = 925
      Top = 7
      Width = 97
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1605#1593' '#1578#1582#1601#1610#1601' '#1586#1610#1585' '#1601#1575#1705#1578#1608#1585
    end
    object Label31: TLabel
      Left = 554
      Top = 7
      Width = 88
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' '#1578#1582#1601#1610#1601
    end
    object Label37: TLabel
      Left = 724
      Top = 7
      Width = 73
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1581#1605#1604' '#1608' '#1606#1602#1604
    end
    object edNetPrice: TEdit
      Left = 234
      Top = 4
      Width = 120
      Height = 19
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
    end
    object ComboBox2: TComboBox
      Left = 117
      Top = 3
      Width = 49
      Height = 21
      Anchors = [akTop, akRight]
      ItemHeight = 13
      TabOrder = 1
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
    end
    object Edit1: TEdit
      Left = 804
      Top = 4
      Width = 117
      Height = 19
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 436
      Top = 4
      Width = 115
      Height = 19
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit17: TDBEdit
      Left = 647
      Top = 3
      Width = 75
      Height = 19
      Anchors = [akTop, akRight]
      DataField = 'OFDISTVAL1'
      DataSource = DM_IntSales.dsEIntOffer
      TabOrder = 4
    end
  end
  object dbgrValidity: TDBGrid
    Left = 0
    Top = 431
    Width = 1022
    Height = 110
    Align = alBottom
    DataSource = DM_IntSales.dsEOffValidity
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = dbgrValidityColEnter
    OnEditButtonClick = dbgrValidityEditButtonClick
    OnKeyDown = dbgrValidityKeyDown
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'ADCODE'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583
        Width = 187
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'ADDDESC'
        Title.Alignment = taCenter
        Title.Caption = #1588#1585#1581
        Width = 248
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'ADDTYPE'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593
        Width = 60
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'ADKIND'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1605#1576#1604#1594
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADVAL'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594' ( '#1575#1590#1575#1601#1575#1578' / '#1603#1587#1608#1585' )'
        Width = 141
        Visible = True
      end>
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 644
    Top = 576
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 100000
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        OnGetText = ppDBText3GetText
        DataField = 'GDS_DESCF'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3979
        mmLeft = 84138
        mmTop = 529
        mmWidth = 77258
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'OFPRICE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = ',#.###'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3979
        mmLeft = 39158
        mmTop = 529
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        OnGetText = ppDBText17GetText
        DataField = 'TOTLSUM'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = ',#.###'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3979
        mmLeft = 7673
        mmTop = 529
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText9'
        DataField = 'GDS_CODE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4498
        mmLeft = 183886
        mmTop = 529
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText10'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 70908
        mmTop = 529
        mmWidth = 10583
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      BeforePrint = ppFooterBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 103452
      mmPrintPosition = 0
      object lbl1: TppLabel
        UserName = 'lbl1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 7144
        mmWidth = 7154
        BandType = 8
      end
      object lblNo1: TppLabel
        UserName = 'lblNo1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 7144
        mmWidth = 8467
        BandType = 8
      end
      object lblDsc1: TppLabel
        UserName = 'lblDsc1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 53170
        mmTop = 7144
        mmWidth = 28321
        BandType = 8
      end
      object lblVal1: TppLabel
        UserName = 'lblVal1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 7927
        mmTop = 7144
        mmWidth = 28321
        BandType = 8
      end
      object lbl2: TppLabel
        UserName = 'lbl2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 17463
        mmWidth = 7154
        BandType = 8
      end
      object lblNo2: TppLabel
        UserName = 'lblNo2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 17463
        mmWidth = 8467
        BandType = 8
      end
      object lblDsc2: TppLabel
        UserName = 'lblDsc2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 53181
        mmTop = 17463
        mmWidth = 28575
        BandType = 8
      end
      object lblVal2: TppLabel
        UserName = 'lblVal2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 7927
        mmTop = 17463
        mmWidth = 28321
        BandType = 8
      end
      object lblVal3: TppLabel
        UserName = 'lblVal3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 7927
        mmTop = 28046
        mmWidth = 28321
        BandType = 8
      end
      object lblDsc3: TppLabel
        UserName = 'lblDsc3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 53181
        mmTop = 28046
        mmWidth = 28575
        BandType = 8
      end
      object lblNo3: TppLabel
        UserName = 'lblNo3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 28046
        mmWidth = 8467
        BandType = 8
      end
      object lbl3: TppLabel
        UserName = 'lbl3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 28046
        mmWidth = 7154
        BandType = 8
      end
      object lbl4: TppLabel
        UserName = 'lbl4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 37306
        mmWidth = 7154
        BandType = 8
      end
      object lbl5: TppLabel
        UserName = 'lbl5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 47361
        mmWidth = 7154
        BandType = 8
      end
      object lblNo4: TppLabel
        UserName = 'lblNo4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 37306
        mmWidth = 8467
        BandType = 8
      end
      object lblDsc4: TppLabel
        UserName = 'Label501'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 53181
        mmTop = 37306
        mmWidth = 28575
        BandType = 8
      end
      object lblVal4: TppLabel
        UserName = 'lblVal4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 7927
        mmTop = 37306
        mmWidth = 28321
        BandType = 8
      end
      object lblVal5: TppLabel
        UserName = 'lblVal5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 7927
        mmTop = 47361
        mmWidth = 28321
        BandType = 8
      end
      object lblDsc5: TppLabel
        UserName = 'lblDsc5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 53181
        mmTop = 47361
        mmWidth = 28575
        BandType = 8
      end
      object lblNo5: TppLabel
        UserName = 'lblNo5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 47361
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = 'Label100'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 149976
        mmTop = 55563
        mmWidth = 14859
        BandType = 8
      end
      object ppLabel98: TppLabel
        UserName = 'Label201'
        Caption = 'Label201'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 21389
        mmTop = 55298
        mmWidth = 14859
        BandType = 8
      end
      object pplbdbcalc1: TppLabel
        UserName = 'lbdbcalc1'
        Caption = 'lbdbcalc1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 20669
        mmTop = 0
        mmWidth = 15579
        BandType = 8
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 297000
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 103717
        mmLeft = 9260
        mmTop = 83608
        mmWidth = 191559
        BandType = 9
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 9260
        mmTop = 96573
        mmWidth = 191294
        BandType = 9
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 102129
        mmLeft = 186796
        mmTop = 83873
        mmWidth = 1588
        BandType = 9
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 102923
        mmLeft = 162190
        mmTop = 83873
        mmWidth = 1323
        BandType = 9
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 103452
        mmLeft = 82550
        mmTop = 83608
        mmWidth = 794
        BandType = 9
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 103188
        mmLeft = 69056
        mmTop = 83873
        mmWidth = 1588
        BandType = 9
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 67469
        mmLeft = 9260
        mmTop = 187325
        mmWidth = 191559
        BandType = 9
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 9260
        mmTop = 106627
        mmWidth = 191294
        BandType = 9
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9260
        mmTop = 116681
        mmWidth = 191294
        BandType = 9
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9260
        mmTop = 126471
        mmWidth = 191294
        BandType = 9
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 9260
        mmTop = 136525
        mmWidth = 191294
        BandType = 9
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 9260
        mmTop = 146579
        mmWidth = 191294
        BandType = 9
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 9260
        mmTop = 156634
        mmWidth = 191294
        BandType = 9
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 9260
        mmTop = 166688
        mmWidth = 191294
        BandType = 9
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9260
        mmTop = 176477
        mmWidth = 191294
        BandType = 9
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9525
        mmTop = 198173
        mmWidth = 73025
        BandType = 9
      end
      object ppLabel24: TppLabel
        UserName = 'Label25'
        Caption = #1580#1605#1593' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 75142
        mmTop = 191294
        mmWidth = 6085
        BandType = 9
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9260
        mmTop = 207963
        mmWidth = 74613
        BandType = 9
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9260
        mmTop = 218017
        mmWidth = 73290
        BandType = 9
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9260
        mmTop = 228071
        mmWidth = 73290
        BandType = 9
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9525
        mmTop = 238125
        mmWidth = 73025
        BandType = 9
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 9525
        mmTop = 248180
        mmWidth = 191294
        BandType = 9
      end
      object ppLabel25: TppLabel
        UserName = 'Label26'
        Caption = #1580#1605#1593' '#1605#1576#1604#1594' ('#1582#1575#1604#1589' )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 248709
        mmWidth = 22490
        BandType = 9
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170657
        mmLeft = 39158
        mmTop = 83873
        mmWidth = 3704
        BandType = 9
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60854
        mmLeft = 82550
        mmTop = 187325
        mmWidth = 529
        BandType = 9
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 82021
        mmTop = 207963
        mmWidth = 118798
        BandType = 9
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 24606
        mmLeft = 186796
        mmTop = 183621
        mmWidth = 2117
        BandType = 9
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = #1581#1587#1575#1576' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 189442
        mmTop = 189442
        mmWidth = 8202
        BandType = 9
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #1580#1575#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 190236
        mmTop = 195263
        mmWidth = 6615
        BandType = 9
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = #1588#1585#1603#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 189971
        mmTop = 200819
        mmWidth = 7408
        BandType = 9
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89927
        mmTop = 189707
        mmWidth = 92372
        BandType = 9
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 96870
        mmTop = 195263
        mmWidth = 85429
        BandType = 9
      end
      object ppLabel19: TppLabel
        UserName = 'Label5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 89418
        mmTop = 200290
        mmWidth = 92880
        BandType = 9
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppBDEPipeline1
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 182827
        mmTop = 189707
        mmWidth = 3969
        BandType = 9
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppBDEPipeline1
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 182827
        mmTop = 195263
        mmWidth = 3969
        BandType = 9
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppBDEPipeline1
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 182827
        mmTop = 200555
        mmWidth = 3175
        BandType = 9
      end
      object ppLabel28: TppLabel
        UserName = 'Label105'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 164846
        mmTop = 259292
        mmWidth = 34121
        BandType = 9
      end
      object ppLabel30: TppLabel
        UserName = 'Label106'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4149
        mmLeft = 146167
        mmTop = 259292
        mmWidth = 13377
        BandType = 9
      end
      object ppLabel32: TppLabel
        UserName = 'Label107'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 121995
        mmTop = 259292
        mmWidth = 17441
        BandType = 9
      end
      object ppLabel33: TppLabel
        UserName = 'Label108'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 79671
        mmTop = 259292
        mmWidth = 34629
        BandType = 9
      end
      object ppLabel73: TppLabel
        UserName = 'Label109'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 29633
        mmTop = 258498
        mmWidth = 21929
        BandType = 9
      end
      object ppLabel77: TppLabel
        UserName = 'Label1011'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 12700
        mmLeft = 15081
        mmTop = 273844
        mmWidth = 184415
        BandType = 9
      end
      object ppLabel78: TppLabel
        UserName = 'Label1012'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4487
        mmLeft = 40470
        mmTop = 289984
        mmWidth = 39963
        BandType = 9
      end
      object ppLabel79: TppLabel
        UserName = 'Label1013'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 93409
        mmTop = 290248
        mmWidth = 47879
        BandType = 9
      end
      object ppLabel21: TppLabel
        UserName = 'Label12'
        Caption = #1585#1583#1610#1601
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 189971
        mmTop = 88371
        mmWidth = 6350
        BandType = 9
      end
      object ppLabel20: TppLabel
        UserName = 'Label11'
        Caption = #1603#1583#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 88371
        mmWidth = 21431
        BandType = 9
      end
      object ppLabel31: TppLabel
        UserName = 'Label10'
        Caption = #1606#1575#1605' /'#1605#1583#1604' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 88371
        mmWidth = 52123
        BandType = 9
      end
      object ppLabel27: TppLabel
        UserName = 'Label13'
        Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 46567
        mmTop = 88371
        mmWidth = 17198
        BandType = 9
      end
      object ppLabel26: TppLabel
        UserName = 'Label14'
        Caption = #1605#1576#1604#1594' '#1603#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 88371
        mmWidth = 13758
        BandType = 9
      end
      object ppLabel81: TppLabel
        UserName = 'Label16'
        Caption = #1578#1608#1590#1610#1581#1575#1578':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 185473
        mmTop = 208757
        mmWidth = 12435
        BandType = 9
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        OnGetText = ppDBCalc2GetText
        DataField = 'TOTLSUM'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = ',#.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        OnCalc = ppDBCalc2Calc
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 190236
        mmWidth = 26458
        BandType = 9
      end
      object ppLabel16: TppLabel
        UserName = 'Label24'
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 74083
        mmTop = 88371
        mmWidth = 5292
        BandType = 9
      end
      object ppDBText10: TppDBText
        UserName = 'DBText11'
        DataField = 'OFDESC'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 31485
        mmLeft = 89694
        mmTop = 215107
        mmWidth = 107421
        BandType = 9
      end
      object ppDBText11: TppDBText
        UserName = 'DBText12'
        DataField = 'OFNUM'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 46038
        mmWidth = 14288
        BandType = 9
      end
      object ppDBText12: TppDBText
        UserName = 'DBText14'
        DataField = 'OFDATE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '!99/99/00;0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 26723
        mmTop = 53975
        mmWidth = 14288
        BandType = 9
      end
      object ppLabel22: TppLabel
        UserName = 'Label102'
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 186002
        mmTop = 71173
        mmWidth = 14817
        BandType = 9
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        OnGetText = ppDBText3GetText
        DataField = 'CUSTNAME'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3969
        mmLeft = 108744
        mmTop = 71438
        mmWidth = 75142
        BandType = 9
      end
      object ppLabel5: TppLabel
        UserName = 'Label6'
        Caption = #1588#1605#1575#1585#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 6879
        mmTop = 45773
        mmWidth = 8467
        BandType = 9
      end
      object ppLabel11: TppLabel
        UserName = 'Label17'
        Caption = #1578#1575#1585#1610#1582':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 53975
        mmWidth = 7144
        BandType = 9
      end
      object ppLabel13: TppLabel
        UserName = 'Label19'
        Caption = #1662#1610#1608#1587#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 62706
        mmWidth = 7673
        BandType = 9
      end
      object ppLine22: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 19050
        mmTop = 50271
        mmWidth = 26988
        BandType = 9
      end
      object ppLine27: TppLine
        UserName = 'Line104'
        Pen.Style = psDot
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 19050
        mmTop = 58208
        mmWidth = 26988
        BandType = 9
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Pen.Style = psDot
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 19050
        mmTop = 65881
        mmWidth = 26988
        BandType = 9
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 35983
        mmLeft = 9260
        mmTop = 7408
        mmWidth = 191559
        BandType = 9
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        mmHeight = 35983
        mmLeft = 172773
        mmTop = 7408
        mmWidth = 28046
        BandType = 9
      end
      object ppLabel14: TppLabel
        UserName = 'Label21'
        Caption = #1588#1585#1705#1578' '#1662#1582#1588' '#1583#1705#1578#1585' '#1593#1576#1610#1583#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 136621
        mmTop = 10319
        mmWidth = 34036
        BandType = 9
      end
      object ppLabel17: TppLabel
        UserName = 'Label23'
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578' : 2044'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 142611
        mmTop = 16669
        mmWidth = 28046
        BandType = 9
      end
      object ppLabel34: TppLabel
        UserName = 'Label27'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5038
        mmLeft = 49753
        mmTop = 23019
        mmWidth = 120904
        BandType = 9
      end
      object ppLabel35: TppLabel
        UserName = 'Label28'
        Caption = #1578#1604#1601#1606' : 77123551'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 142123
        mmTop = 29369
        mmWidth = 28533
        BandType = 9
      end
      object ppLabel36: TppLabel
        UserName = 'Label29'
        Caption = #1705#1575#1585#1582#1575#1606#1607' : '#1582#1610#1575#1576#1606' '#1575#1578#1581#1575#1583' '#1582#1610#1575#1576#1575#1606' 11 '#1594#1585#1576#1610' '#1662#1604#1575#1705' 7    '#1578#1604#1601#1606' : 77123551'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 88022
        mmTop = 35983
        mmWidth = 82635
        BandType = 9
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Pen.Width = 2
        mmHeight = 8467
        mmLeft = 84931
        mmTop = 45508
        mmWidth = 115888
        BandType = 9
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Pen.Width = 2
        mmHeight = 8467
        mmLeft = 84931
        mmTop = 53181
        mmWidth = 115888
        BandType = 9
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Pen.Width = 2
        mmHeight = 8467
        mmLeft = 50271
        mmTop = 60854
        mmWidth = 150548
        BandType = 9
      end
      object ppLabel37: TppLabel
        UserName = 'Label30'
        Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605' : '#1662#1610#1588#1606#1607#1575#1583' '#1601#1585#1608#1588' ( '#1662#1610#1588' '#1601#1575#1705#1578#1608#1585' )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 138748
        mmTop = 46831
        mmWidth = 60748
        BandType = 9
      end
      object ppLabel38: TppLabel
        UserName = 'Label31'
        Caption = #1590#1605#1610#1605#1607' '#1585#1608#1610#1607' _ '#1583#1587#1578#1608#1585#1575#1604#1593#1605#1604' ) : '#1585#1608#1610#1607' '#1576#1575#1586#1606#1711#1585#1610' '#1602#1585#1575#1585#1583#1575#1583' ( '#1601#1585#1608#1588' '#1583#1575#1582#1604#1610' )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 100013
        mmTop = 54240
        mmWidth = 99484
        BandType = 9
      end
      object ppLine10: TppLine
        UserName = 'Line11'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 7144
        mmLeft = 162454
        mmTop = 61383
        mmWidth = 1323
        BandType = 9
      end
      object ppLine11: TppLine
        UserName = 'Line22'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 7144
        mmLeft = 133350
        mmTop = 61383
        mmWidth = 1323
        BandType = 9
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 7144
        mmLeft = 91017
        mmTop = 61383
        mmWidth = 1323
        BandType = 9
      end
      object ppLabel39: TppLabel
        UserName = 'Label32'
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 185209
        mmTop = 62177
        mmWidth = 14288
        BandType = 9
      end
      object ppLabel40: TppLabel
        UserName = 'Label33'
        Caption = 'IFC.BF.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 163248
        mmTop = 62177
        mmWidth = 14817
        BandType = 9
      end
      object ppLabel41: TppLabel
        UserName = 'Label34'
        Caption = '131'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 177800
        mmTop = 62177
        mmWidth = 7144
        BandType = 9
      end
      object ppLabel12: TppLabel
        UserName = 'Label20'
        Caption = #1588#1605#1575#1585#1607' '#1608#1610#1585#1575#1610#1588':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 139965
        mmTop = 62177
        mmWidth = 21960
        BandType = 9
      end
      object ppLabel42: TppLabel
        UserName = 'Label35'
        Caption = #1578#1575#1585#1610#1582' '#1608#1610#1585#1575#1610#1588':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 112184
        mmTop = 62177
        mmWidth = 20828
        BandType = 9
      end
      object ppLabel43: TppLabel
        UserName = 'Label36'
        Caption = #1588#1605#1575#1585#1607' '#1589#1601#1581#1607' : )1( '#1575#1586' (1)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 52812
        mmTop = 61913
        mmWidth = 37634
        BandType = 9
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = #1583#1585#1582#1608#1575#1587#1578' '#1605#1588#1578#1585#1610':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 176477
        mmTop = 76994
        mmWidth = 24257
        BandType = 9
      end
      object ppDBText8: TppDBText
        UserName = 'DBText1'
        DataField = 'CUST_REQNO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 124090
        mmTop = 76994
        mmWidth = 19579
        BandType = 9
      end
      object ppLabel9: TppLabel
        UserName = 'Label7'
        Caption = #1593#1591#1601' '#1576#1607' '#1583#1608#1585#1606#1711#1575#1585' '#1588#1605#1575#1585#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4657
        mmLeft = 144463
        mmTop = 76994
        mmWidth = 31665
        BandType = 9
      end
      object ppDBText9: TppDBText
        UserName = 'DBText2'
        DataField = 'CUSTFAX'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 68263
        mmWidth = 13229
        BandType = 9
      end
      object ppLabel44: TppLabel
        UserName = 'Label9'
        Caption = #1605#1608#1585#1582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 116152
        mmTop = 76729
        mmWidth = 7408
        BandType = 9
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'CUST_REQDATE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '!99/99/00;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 94456
        mmTop = 76994
        mmWidth = 21167
        BandType = 9
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = #1576#1607' '#1575#1587#1578#1581#1590#1575#1585' '#1605#1610#1585#1587#1575#1606#1583':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 65352
        mmTop = 76994
        mmWidth = 28310
        BandType = 9
      end
      object ppLabel85: TppLabel
        UserName = 'Label15'
        Caption = '88/302/'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 15346
        mmTop = 46038
        mmWidth = 11599
        BandType = 9
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'Fax'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 8996
        mmTop = 67998
        mmWidth = 4953
        BandType = 9
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'OFNUM'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDesigner: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReport3
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 570
    Top = 584
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DM_IntSales.dsRSaleProp
    OpenDataSource = False
    UserName = 'BDEPipeline1'
    Left = 528
    Top = 584
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'OFNUM'
      FieldName = 'OFNUM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'OFDATE'
      FieldName = 'OFDATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'OFVALDTE'
      FieldName = 'OFVALDTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'OFDLVDTE'
      FieldName = 'OFDLVDTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'CUSTNAME'
      FieldName = 'CUSTNAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'OFCOMM'
      FieldName = 'OFCOMM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'GDS_CODE'
      FieldName = 'GDS_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'GDS_DESCF'
      FieldName = 'GDS_DESCF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'GDS_DESCL'
      FieldName = 'GDS_DESCL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'GDS_UNTS'
      FieldName = 'GDS_UNTS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'UNT_DESC'
      FieldName = 'UNT_DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField12: TppField
      FieldAlias = 'OFQTY'
      FieldName = 'OFQTY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField13: TppField
      FieldAlias = 'OFPRICE'
      FieldName = 'OFPRICE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField14: TppField
      FieldAlias = 'OFDESC'
      FieldName = 'OFDESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField15: TppField
      FieldAlias = 'CUSTADD'
      FieldName = 'CUSTADD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField16: TppField
      FieldAlias = 'TOTLSUM'
      FieldName = 'TOTLSUM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField17: TppField
      FieldAlias = 'CUST_REQNO'
      FieldName = 'CUST_REQNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField18: TppField
      FieldAlias = 'CUSTNO'
      FieldName = 'CUSTNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField19: TppField
      FieldAlias = 'CUST_REQDATE'
      FieldName = 'CUST_REQDATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField20: TppField
      FieldAlias = 'GDS_DESC'
      FieldName = 'GDS_DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField21: TppField
      FieldAlias = 'GDS_DESC1'
      FieldName = 'GDS_DESC1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField22: TppField
      FieldAlias = 'GDS_DESC2'
      FieldName = 'GDS_DESC2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField23: TppField
      FieldAlias = 'COST_PACK'
      FieldName = 'COST_PACK'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField24: TppField
      FieldAlias = 'PACK_TYPE'
      FieldName = 'PACK_TYPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField25: TppField
      FieldAlias = 'REDUCTION_PACK'
      FieldName = 'REDUCTION_PACK'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField26: TppField
      FieldAlias = 'PACKPRICE'
      FieldName = 'PACKPRICE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField27: TppField
      FieldAlias = 'SUMPRICE'
      FieldName = 'SUMPRICE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField28: TppField
      FieldAlias = 'OFDLVPLACE'
      FieldName = 'OFDLVPLACE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField29: TppField
      FieldAlias = 'CUSTFAX'
      FieldName = 'CUSTFAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField30: TppField
      FieldAlias = 'INFO_DESC'
      FieldName = 'INFO_DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 485
    Top = 584
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 100000
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4498
        mmLeft = 185738
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText4'
        OnGetText = ppDBText3GetText
        DataField = 'GDS_DESCF'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 5292
        mmLeft = 132557
        mmTop = 1323
        mmWidth = 51858
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText8'
        DataField = 'GDS_DESC'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 84138
        mmTop = 1323
        mmWidth = 43656
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText101'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4498
        mmLeft = 68792
        mmTop = 1323
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText5'
        DataField = 'OFPRICE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = ',#.###'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4498
        mmLeft = 38629
        mmTop = 1323
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'TOTLSUM'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = ',#.###'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4498
        mmLeft = 7673
        mmTop = 1323
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'GDS_DESC1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 84138
        mmTop = 5821
        mmWidth = 43656
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'GDS_DESC2'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4498
        mmLeft = 84138
        mmTop = 10319
        mmWidth = 43656
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppPageStyle2: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 297000
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 132027
        mmLeft = 9260
        mmTop = 83608
        mmWidth = 191559
        BandType = 9
      end
      object ppLine31: TppLine
        UserName = 'Line5'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 127265
        mmLeft = 186796
        mmTop = 83873
        mmWidth = 1588
        BandType = 9
      end
      object ppLine33: TppLine
        UserName = 'Line7'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 127794
        mmLeft = 82550
        mmTop = 83608
        mmWidth = 794
        BandType = 9
      end
      object ppLine34: TppLine
        UserName = 'Line9'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 127265
        mmLeft = 69056
        mmTop = 83873
        mmWidth = 1588
        BandType = 9
      end
      object ppShape8: TppShape
        UserName = 'Shape6'
        Pen.Width = 2
        mmHeight = 10583
        mmLeft = 9260
        mmTop = 210873
        mmWidth = 191559
        BandType = 9
      end
      object ppLabel64: TppLabel
        UserName = 'Label26'
        Caption = #1580#1605#1593' '#1705#1604':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5165
        mmLeft = 186532
        mmTop = 213784
        mmWidth = 12023
        BandType = 9
      end
      object ppLine49: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 137319
        mmLeft = 39158
        mmTop = 83873
        mmWidth = 3704
        BandType = 9
      end
      object ppLabel86: TppLabel
        UserName = 'Label12'
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5546
        mmLeft = 189400
        mmTop = 89959
        mmWidth = 7493
        BandType = 9
      end
      object ppLabel87: TppLabel
        UserName = 'Label11'
        Caption = #1606#1575#1605' '#1601#1585#1570#1608#1585#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 149490
        mmTop = 89959
        mmWidth = 15610
        BandType = 9
      end
      object ppLabel88: TppLabel
        UserName = 'Label10'
        Caption = #1605#1588#1582#1589#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 100013
        mmTop = 89959
        mmWidth = 12435
        BandType = 9
      end
      object ppLabel89: TppLabel
        UserName = 'Label13'
        Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5546
        mmLeft = 47863
        mmTop = 91017
        mmWidth = 15610
        BandType = 9
      end
      object ppLabel90: TppLabel
        UserName = 'Label14'
        Caption = #1602#1610#1605#1578' '#1705#1604' '#1576#1607' '#1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5546
        mmLeft = 14880
        mmTop = 89959
        mmWidth = 22098
        BandType = 9
      end
      object ppLabel92: TppLabel
        UserName = 'Label24'
        Caption = #1608#1586#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5556
        mmLeft = 74083
        mmTop = 89959
        mmWidth = 6879
        BandType = 9
      end
      object ppDBText18: TppDBText
        UserName = 'DBText12'
        DataField = 'OFNUM'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4763
        mmLeft = 29369
        mmTop = 45508
        mmWidth = 10319
        BandType = 9
      end
      object ppDBText19: TppDBText
        UserName = 'DBText14'
        DataField = 'OFDATE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '!99/99/00;0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6085
        mmLeft = 28046
        mmTop = 53446
        mmWidth = 12965
        BandType = 9
      end
      object ppLabel93: TppLabel
        UserName = 'Label9'
        Caption = #1583#1585#1582#1608#1575#1587#1578' '#1605#1588#1578#1585#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 174096
        mmTop = 76994
        mmWidth = 26501
        BandType = 9
      end
      object ppLabel94: TppLabel
        UserName = 'Label102'
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 186129
        mmTop = 70115
        mmWidth = 14690
        BandType = 9
      end
      object ppDBText20: TppDBText
        UserName = 'DBText3'
        OnGetText = ppDBText3GetText
        DataField = 'CUSTNAME'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6138
        mmLeft = 108215
        mmTop = 70115
        mmWidth = 75142
        BandType = 9
      end
      object ppDBText21: TppDBText
        UserName = 'DBText1'
        DataField = 'CUST_REQNO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6085
        mmLeft = 128852
        mmTop = 76729
        mmWidth = 11642
        BandType = 9
      end
      object ppDBText22: TppDBText
        UserName = 'DBText2'
        DataField = 'CUST_REQDATE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '!99/99/00;0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6138
        mmLeft = 103188
        mmTop = 76729
        mmWidth = 17463
        BandType = 9
      end
      object ppLabel95: TppLabel
        UserName = 'Label6'
        Caption = #1588#1605#1575#1585#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 6085
        mmLeft = 794
        mmTop = 45508
        mmWidth = 8996
        BandType = 9
      end
      object ppLabel96: TppLabel
        UserName = 'Label17'
        Caption = #1578#1575#1585#1610#1582':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 2117
        mmTop = 53711
        mmWidth = 7673
        BandType = 9
      end
      object ppLabel97: TppLabel
        UserName = 'Label19'
        Caption = #1662#1610#1608#1587#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 1058
        mmTop = 60590
        mmWidth = 8731
        BandType = 9
      end
      object ppLine55: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 19050
        mmTop = 50271
        mmWidth = 26988
        BandType = 9
      end
      object ppLine58: TppLine
        UserName = 'Line104'
        Pen.Style = psDot
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 19050
        mmTop = 58208
        mmWidth = 26988
        BandType = 9
      end
      object ppLine59: TppLine
        UserName = 'Line28'
        Pen.Style = psDot
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 19050
        mmTop = 65088
        mmWidth = 26988
        BandType = 9
      end
      object ppShape10: TppShape
        UserName = 'Shape3'
        Pen.Width = 2
        mmHeight = 8467
        mmLeft = 84931
        mmTop = 45508
        mmWidth = 115888
        BandType = 9
      end
      object ppShape11: TppShape
        UserName = 'Shape4'
        Pen.Width = 2
        mmHeight = 8467
        mmLeft = 84931
        mmTop = 53181
        mmWidth = 115888
        BandType = 9
      end
      object ppShape12: TppShape
        UserName = 'Shape5'
        Pen.Width = 2
        mmHeight = 8467
        mmLeft = 50271
        mmTop = 60854
        mmWidth = 150548
        BandType = 9
      end
      object ppLabel106: TppLabel
        UserName = 'Label30'
        Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605' : '#1662#1610#1588#1606#1607#1575#1583' '#1601#1585#1608#1588' ( '#1662#1610#1588' '#1601#1575#1705#1578#1608#1585' )'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6689
        mmLeft = 137848
        mmTop = 46302
        mmWidth = 61426
        BandType = 9
      end
      object ppLabel107: TppLabel
        UserName = 'Label31'
        Caption = #1590#1605#1610#1605#1607' '#1585#1608#1610#1607'('#1583#1587#1578#1608#1585#1575#1604#1593#1605#1604') : '#1585#1608#1610#1607' '#1576#1575#1586#1606#1711#1585#1610' '#1602#1585#1575#1585#1583#1575#1583' ('#1601#1585#1608#1588' '#1583#1575#1582#1604#1610' )'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 102394
        mmTop = 53711
        mmWidth = 96838
        BandType = 9
      end
      object ppLine60: TppLine
        UserName = 'Line11'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 7144
        mmLeft = 162454
        mmTop = 61383
        mmWidth = 1323
        BandType = 9
      end
      object ppLine61: TppLine
        UserName = 'Line22'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 7144
        mmLeft = 133350
        mmTop = 61383
        mmWidth = 1323
        BandType = 9
      end
      object ppLine62: TppLine
        UserName = 'Line29'
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 7144
        mmLeft = 91017
        mmTop = 61383
        mmWidth = 1323
        BandType = 9
      end
      object ppLabel108: TppLabel
        UserName = 'Label32'
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6689
        mmLeft = 184150
        mmTop = 61648
        mmWidth = 15198
        BandType = 9
      end
      object ppLabel109: TppLabel
        UserName = 'Label33'
        Caption = 'IFC.BF.'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6138
        mmLeft = 164042
        mmTop = 61913
        mmWidth = 10795
        BandType = 9
      end
      object ppLabel110: TppLabel
        UserName = 'Label34'
        Caption = '131'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 176477
        mmTop = 61913
        mmWidth = 6477
        BandType = 9
      end
      object ppLabel111: TppLabel
        UserName = 'Label20'
        Caption = #1588#1605#1575#1585#1607' '#1608#1610#1585#1575#1610#1588':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6689
        mmLeft = 139742
        mmTop = 61648
        mmWidth = 22183
        BandType = 9
      end
      object ppLabel112: TppLabel
        UserName = 'Label35'
        Caption = #1578#1575#1585#1610#1582' '#1608#1610#1585#1575#1610#1588':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6689
        mmLeft = 111591
        mmTop = 61648
        mmWidth = 21421
        BandType = 9
      end
      object ppLabel113: TppLabel
        UserName = 'Label36'
        Caption = #1588#1605#1575#1585#1607' '#1589#1601#1581#1607' : 1 '#1575#1586' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6689
        mmLeft = 54737
        mmTop = 61383
        mmWidth = 30353
        BandType = 9
      end
      object ppLabel114: TppLabel
        UserName = 'Label37'
        Caption = #1593#1591#1601' '#1576#1607' '#1583#1608#1585#1606#1711#1575#1585' '#1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 141023
        mmTop = 76994
        mmWidth = 31369
        BandType = 9
      end
      object ppLabel115: TppLabel
        UserName = 'Label44'
        Caption = #1576#1607' '#1575#1587#1578#1581#1590#1575#1585' '#1605#1610#1585#1587#1575#1606#1583':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 75936
        mmTop = 76465
        mmWidth = 27051
        BandType = 9
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        Caption = #1607#1585' '#1705#1610#1604#1608#1711#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5546
        mmLeft = 47715
        mmTop = 85725
        mmWidth = 15875
        BandType = 9
      end
      object ppLabel60: TppLabel
        UserName = 'Label1001'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 41551
        mmTop = 212990
        mmWidth = 142071
        BandType = 9
      end
      object ppLabel6: TppLabel
        UserName = 'Label1'
        Caption = 
          #1578#1575#1610#1610#1583' '#1662#1610#1588#1606#1607#1575#1583' '#1601#1585#1608#1588' '#1576#1607' '#1605#1606#1586#1604#1607' '#1601#1585#1608#1588' '#1606#1607#1575#1610#1610' '#1578#1604#1602#1610' '#1582#1608#1575#1607#1583' '#1588#1583' '#1548' '#1604#1584#1575' '#1582#1608#1575#1607#1588 +
          #1605#1606#1583' '#1575#1587#1578' '#1583#1585' '#1589#1608#1585#1578' '#1578#1575#1610#1610#1583' '#1548' '#1605#1581#1604' '#1584#1610#1604' '#1585#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 33073
        mmTop = 224367
        mmWidth = 167482
        BandType = 9
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = #1605#1607#1585' '#1608' '#1575#1605#1590#1575#1569' '#1608' '#1576#1607' '#1583#1601#1578#1585' '#1605#1585#1705#1586#1610' '#1587#1575#1586#1605#1575#1606' '#1601#1585#1608#1588' '#1575#1585#1587#1575#1604' '#1601#1585#1605#1575#1610#1610#1583'.'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 113506
        mmTop = 231511
        mmWidth = 87048
        BandType = 9
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'SUMPRICE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = ',#.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3969
        mmLeft = 10054
        mmTop = 212990
        mmWidth = 28310
        BandType = 9
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = #1586#1605#1575#1606' '#1578#1581#1608#1610#1604':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 166508
        mmTop = 165100
        mmWidth = 17907
        BandType = 9
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = #1605#1705#1575#1606' '#1578#1581#1608#1610#1604':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 166381
        mmTop = 172244
        mmWidth = 18034
        BandType = 9
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'OFDLVDTE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6138
        mmLeft = 157427
        mmTop = 165100
        mmWidth = 4763
        BandType = 9
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'OFDLVPLACE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6138
        mmLeft = 88900
        mmTop = 172509
        mmWidth = 73290
        BandType = 9
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = #1605#1607#1585' '#1608' '#1575#1605#1590#1575#1569' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 182563
        mmTop = 271728
        mmWidth = 17727
        BandType = 9
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = #1578#1582#1601#1610#1601' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 171715
        mmTop = 178859
        mmWidth = 12700
        BandType = 9
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 185209
        mmWidth = 49742
        BandType = 9
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 189707
        mmWidth = 49742
        BandType = 9
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 189707
        mmWidth = 49742
        BandType = 9
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 200290
        mmWidth = 49742
        BandType = 9
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = #1575#1593#1578#1576#1575#1585' '#1662#1610#1588' '#1601#1575#1705#1578#1608#1585' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 173302
        mmTop = 252942
        mmWidth = 27252
        BandType = 9
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 10043
        mmTop = 186267
        mmWidth = 28321
        BandType = 9
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 10043
        mmTop = 190765
        mmWidth = 28321
        BandType = 9
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 10043
        mmTop = 190765
        mmWidth = 28321
        BandType = 9
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 10043
        mmTop = 200290
        mmWidth = 28321
        BandType = 9
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 9779
        mmTop = 212461
        mmWidth = 28321
        BandType = 9
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = #1575#1590#1575#1601#1575#1578' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 172509
        mmTop = 193940
        mmWidth = 11906
        BandType = 9
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 205317
        mmWidth = 49742
        BandType = 9
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 10043
        mmTop = 205317
        mmWidth = 28321
        BandType = 9
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CUSTFAX'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6085
        mmLeft = 22490
        mmTop = 66675
        mmWidth = 23813
        BandType = 9
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = #1605#1608#1585#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 120915
        mmTop = 76729
        mmWidth = 7789
        BandType = 9
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 9525
        mmTop = 97631
        mmWidth = 191030
        BandType = 9
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = #1585#1608#1586' '#1662#1587' '#1575#1586' '#1589#1583#1608#1585' '#1605#1610' '#1576#1575#1588#1583' '#1608' '#1575#1585#1587#1575#1604' '#1570#1583#1585#1587' '#1662#1585#1608#1688#1607' '#1575#1604#1586#1575#1605#1610' '#1605#1610' '#1576#1575#1588#1583' .'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 64294
        mmTop = 252678
        mmWidth = 104511
        BandType = 9
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'OFVALDTE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6615
        mmLeft = 169069
        mmTop = 252942
        mmWidth = 4233
        BandType = 9
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        Caption = 
          #1575#1585#1587#1575#1604' '#1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610#1548' '#1588#1605#1575#1585#1607' '#1579#1576#1578#1548' '#1705#1583' '#1662#1587#1578#1610' 10 '#1585#1602#1605#1610#1548' '#1606#1588#1575#1606#1610#1548' '#1578#1604#1601#1606#1548' '#1606#1605 +
          #1575#1576#1585' ('#1591#1576#1602' '#1583#1587#1578#1608#1585#1575#1604#1593#1605#1604' '#1587#1575#1586#1605#1575#1606' '#1575#1605#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 36513
        mmTop = 238655
        mmWidth = 164042
        BandType = 9
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = #1605#1575#1604#1610#1575#1578#1610' '#1705#1588#1608#1585' ) '#1580#1607#1578' '#1575#1585#1587#1575#1604' '#1605#1581#1605#1608#1604#1607' '#1575#1604#1586#1575#1605#1610#1587#1578' .'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 130969
        mmTop = 245798
        mmWidth = 69586
        BandType = 9
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = #1585#1608#1586' '#1662#1587' '#1575#1586' '#1583#1585#1610#1575#1601#1578' '#1608#1580#1607' '#1705#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6138
        mmLeft = 117940
        mmTop = 165365
        mmWidth = 38693
        BandType = 9
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = ':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 183621
        mmTop = 70115
        mmWidth = 2117
        BandType = 9
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = '88'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 15346
        mmTop = 45508
        mmWidth = 4233
        BandType = 9
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = ':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 172244
        mmTop = 76994
        mmWidth = 2117
        BandType = 9
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'Fax'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 10319
        mmTop = 66940
        mmWidth = 5556
        BandType = 9
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = '/'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 19579
        mmTop = 45508
        mmWidth = 1852
        BandType = 9
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        Caption = '302'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 21431
        mmTop = 45508
        mmWidth = 6350
        BandType = 9
      end
      object ppLabel102: TppLabel
        UserName = 'Label5'
        Caption = '/'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 27781
        mmTop = 45508
        mmWidth = 1852
        BandType = 9
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = #1578#1575#1610#1610#1583#1610#1607' '#1605#1587#1574#1608#1604' '#1601#1585#1608#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 115359
        mmTop = 271728
        mmWidth = 31221
        BandType = 9
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4784
        mmLeft = 121444
        mmTop = 131498
        mmWidth = 27517
        BandType = 9
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'OFNUM'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10
        mmPrintPosition = 0
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'OFNUM'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 4233
          mmLeft = 188648
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object qrTemp: TQuery
    DatabaseName = 'SALES'
    Left = 137
    Top = 263
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipelineDet
    OnPrintingComplete = ppReport3PrintingComplete
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 256000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\Users\Amir\Desktop\Fact1.rtm'
    Units = utMillimeters
    BeforePrint = ppReport3BeforePrint
    CachePages = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 48
    Top = 552
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipelineDet'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 100000
      mmPrintPosition = 0
      object ppShape9: TppShape
        Tag = 1
        UserName = 'Shape9'
        ParentWidth = True
        Visible = False
        mmHeight = 96044
        mmLeft = 0
        mmTop = 2381
        mmWidth = 243300
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label1'
        Caption = #1588#1585#1705#1578' '#1662#1582#1588' '#1583#1705#1578#1585' '#1593#1576#1610#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 107686
        mmTop = 5027
        mmWidth = 37571
        BandType = 0
      end
      object ppLabel15: TppLabel
        Tag = 1
        UserName = 'Label2'
        Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5588
        mmLeft = 214990
        mmTop = 6879
        mmWidth = 16256
        BandType = 0
      end
      object ppLabel23: TppLabel
        Tag = 1
        UserName = 'Label3'
        Caption = #1578#1575#1585#1610#1582' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 6085
        mmLeft = 222780
        mmTop = 17727
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel29: TppLabel
        Tag = 1
        UserName = 'Label4'
        Caption = #1606#1575#1605' '#1605#1585#1705#1586' '#1662#1582#1588' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 213519
        mmTop = 26988
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel49: TppLabel
        Tag = 1
        UserName = 'Label49'
        Caption = #1705#1583' '#1662#1587#1578#1610' 10 '#1585#1602#1605#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 209550
        mmTop = 33602
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel51: TppLabel
        Tag = 1
        UserName = 'Label51'
        Caption = #1589#1608#1585#1578' '#1581#1587#1575#1576' '#1601#1585#1608#1588' '#1705#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 6085
        mmLeft = 110067
        mmTop = 12700
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel52: TppLabel
        Tag = 1
        UserName = 'Label52'
        Caption = #1606#1588#1575#1606#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 157163
        mmTop = 18256
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel84: TppLabel
        Tag = 1
        UserName = 'Label84'
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5588
        mmLeft = 38524
        mmTop = 17727
        mmWidth = 18627
        BandType = 0
      end
      object ppLabel103: TppLabel
        Tag = 1
        UserName = 'Label103'
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578' / '#1588#1605#1575#1585#1607' '#1605#1604#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5588
        mmLeft = 30692
        mmTop = 25929
        mmWidth = 26988
        BandType = 0
      end
      object ppImage3: TppImage
        Tag = 1
        UserName = 'Image3'
        MaintainAspectRatio = False
        Visible = False
        Picture.Data = {
          07544269746D6170F2100000424DF21000000000000036000000280000001B00
          0000330000000100180000000000BC1000000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF686868FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB2B2B2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD7C7C7CFFFF
          FFFFFFFFFFFFFF7C7C7C000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF7C7C7C0000000000007C7C7CFFFFFFA7A7A70000000000
          007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BDBDBD7C7C7C0000000000000000008C8C8CD0D0D0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA7A7A74D4D4D8C8C8CB2B2B2BDBDBDE1E1E1F0F0F0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C0000
          000000000000000000000000000000000000000000008C8C8CBDBDBDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFA7A7A70000000000000000000000000000000000
          000000000000000000007C7C7CD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9A9A9A4D4D4D0000007C7C7CE9E9E9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0
          8C8C8C000000000000686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0B2
          B2B2F0F0F0FFFFFFFFFFFF0000000000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D00000000000000000008C8C8C9A9A9A00
          00004D4D4DE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD0D0D07C7C7C000000000000000000000000000000BDBDBDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9B2B2
          B24D4D4D000000000000000000B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F00000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFF0F0
          F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A9A9A9AFFFFFF
          0000000000000000004D4D4DFFFFFFFFFFFF7C7C7CFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF8C8C8C000000000000E1E1E1000000000000000000A7A7A7
          FFFFFFFFFFFFD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2
          B2B2686868000000000000686868A7A7A7FFFFFFFFFFFFFFFFFF686868FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0686868FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB2B2B2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD7C7C7CFFFF
          FFFFFFFFFFFFFF7C7C7C000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF6868680000000000007C7C7CFFFFFFA7A7A70000000000
          007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0
          000000000000000000000000000000686868BDBDBDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F000000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB2B2B24D4D4DD0D0D0000000000000000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2000000FFFF
          FFFFFFFF0000000000000000004D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFD9D9D9C7C7C7FFFFFF000000000000E1E1E1FFFFFF0000000000000000
          00A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D4D4DFFFFFF
          7C7C7C000000686868D9D9D90000000000004D4D4DF0F0F0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFA7A7A78C8C8CFFFFFFE1E1E10000000000004D4D4D
          000000000000D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0F0F0FFFFFFFFFFFFA7A7A7000000000000000000A7A7A7FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          F0F0000000000000000000E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C0000004D4D4DE9
          E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD0D0D0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        mmHeight = 19844
        mmLeft = 234686
        mmTop = 55298
        mmWidth = 6350
        BandType = 0
      end
      object ppImage2: TppImage
        Tag = 1
        UserName = 'Image2'
        MaintainAspectRatio = False
        Visible = False
        Picture.Data = {
          07544269746D6170FE180000424DFE1800000000000036000000280000002200
          00003D0000000100180000000000C81800000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1B2B2B2686868000000686868E9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A0000004D4D4D8C8C8C
          4D4D4D0000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000FFFFFFFFFFFFE9E9E9000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9A9A9A000000C7C7C7FFFFFFFFFFFF0000004D4D4DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE9E9E90000004D4D4DE9E9E9E9E9E9000000B2B2
          B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1686868000000
          686868BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9A9A9A4D4D4D0000007C7C7CE9E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D08C8C8C0000000000006868
          68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0B2B2B2F0
          F0F0FFFFFFFFFFFF0000000000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
          D00000000000000000008C8C8C9A9A9A0000004D4D4DE9E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD0D0D07C7C7C000000000000000000000000000000BDBDBDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9B2B2B24D4D4D000000
          000000000000B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0F0F0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE9E9E9A7A7A7E9E9E9FFFFFFFFFFFFE9E9E90000000000000000006868
          68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF7C7C7C0000009A9A9AFFFFFFFFFFFF000000000000
          000000000000E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0FFFFFFFFFFFFFF
          FFFFE9E9E90000000000000000008C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD000000
          000000000000B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF9A9A9A0000000000000000008C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9BDBD
          BDFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000004D4D4DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9A9A9AF0F0F0D9D9D9FFFFFFFFFFFFFFFFFF8C8C8C000000000000000000C7C7
          C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFBDBDBDE9E9E9BDBDBDFFFFFFFFFFFFFFFFFFE9E9E9B2B2B2
          000000000000686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9FFFFFFFFFFFFFF
          FFFFF0F0F0FFFFFF000000000000686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF8C8C8C0000000000007C7C7CB2B2B2F0F0F0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7C7C77C7C7C000000000000B2B2B2FFFFFFF0F0F0000000000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF8C8C8C000000FFFFFF7C7C7C000000000000FFFFFF8C8C8C00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000009A9A9A6868680000000000
          00A7A7A7000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C000000000000
          000000000000000000000000000000000000A7A7A7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7C7C78C8C8C0000000000000000006868689A9A9AE1E1E1FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB2B2B2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE9E9E9000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFBDBDBD7C7C7CFFFFFFFFFFFFFFFFFF7C7C7C000000000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF6868680000000000007C7C7CFFFFFFA7A7A700000000
          00007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D00000000000000000000000
          00000000686868BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0
          BDBDBDFFFFFFE9E9E9A7A7A74D4D4D000000A7A7A70000000000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF4D4D4D000000FFFFFF4D4D4D000000F0F0F0000000000000000000
          0000000000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B28C8C8CFFFFFF8C8C8C000000B2B2B200
          00004D4D4D000000000000000000D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFC7C7C78C8C8C0000000000000000009A9A9AE1E1E1FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
        mmHeight = 19844
        mmLeft = 232834
        mmTop = 17992
        mmWidth = 6615
        BandType = 0
      end
      object ppLine30: TppLine
        Tag = 1
        UserName = 'Line30'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 74877
        mmLeft = 233363
        mmTop = 2646
        mmWidth = 3440
        BandType = 0
      end
      object ppLine35: TppLine
        Tag = 1
        UserName = 'Line35'
        ParentWidth = True
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 39952
        mmWidth = 243300
        BandType = 0
      end
      object ppLabel104: TppLabel
        Tag = 1
        UserName = 'Label104'
        Caption = #1606#1575#1605' '#1588#1582#1589'  '#1581#1602#1610#1602#1610' / '#1581#1602#1608#1602#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 196850
        mmTop = 42333
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel105: TppLabel
        Tag = 1
        UserName = 'Label5'
        Caption = #1606#1588#1575#1606#1588' '#1705#1575#1605#1604': '#1575#1587#1578#1575#1606' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 207963
        mmTop = 49742
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel117: TppLabel
        Tag = 1
        UserName = 'Label117'
        Caption = #1588#1607#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 183621
        mmTop = 49742
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel118: TppLabel
        Tag = 1
        UserName = 'Label118'
        Caption = #1606#1588#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 159015
        mmTop = 49742
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel119: TppLabel
        Tag = 1
        UserName = 'Label119'
        Caption = #1705#1583' '#1575#1588#1578#1585#1575#1705' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 142875
        mmTop = 42333
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel120: TppLabel
        Tag = 1
        UserName = 'Label120'
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 88371
        mmTop = 41275
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel121: TppLabel
        Tag = 1
        UserName = 'Label121'
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578' / '#1588#1605#1575#1585#1607' '#1605#1604#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 25400
        mmTop = 42333
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel122: TppLabel
        Tag = 1
        UserName = 'Label122'
        Caption = #1705#1583' '#1662#1587#1578#1610' 10 '#1585#1602#1605#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5292
        mmLeft = 209815
        mmTop = 70908
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel123: TppLabel
        Tag = 1
        UserName = 'Label123'
        Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' / '#1606#1605#1575#1576#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 143404
        mmTop = 33602
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel124: TppLabel
        Tag = 1
        UserName = 'Label124'
        Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' / '#1606#1605#1575#1576#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5292
        mmLeft = 143669
        mmTop = 70908
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel125: TppLabel
        Tag = 1
        UserName = 'Label125'
        Caption = #1605#1606#1591#1602#1607' '#1588#1607#1585#1583#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 70908
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        Caption = 'Label126'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 197380
        mmTop = 25929
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        Caption = 'Label127'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 193675
        mmTop = 32808
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        Caption = 'Label128'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 135467
        mmTop = 22225
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6096
        mmLeft = 127805
        mmTop = 32544
        mmWidth = 14012
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        Caption = 'Label130'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 7673
        mmTop = 9260
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        Caption = 'Label131'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 2117
        mmTop = 21696
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'OFDATE'
        DataPipeline = ppBDEPipelineTit
        DisplayFormat = '!99/99/00;0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 204259
        mmTop = 16669
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'CF_CUSTNAME'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 8467
        mmLeft = 158486
        mmTop = 39688
        mmWidth = 37835
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'CUSTNO'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 118798
        mmTop = 41010
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'ECONOMIC_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 53446
        mmTop = 42069
        mmWidth = 33602
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'NAT_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 41010
        mmWidth = 24342
        BandType = 0
      end
      object ppLine36: TppLine
        Tag = 1
        UserName = 'Line36'
        ParentWidth = True
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 77258
        mmWidth = 243300
        BandType = 0
      end
      object ppLine37: TppLine
        Tag = 1
        UserName = 'Line37'
        ParentWidth = True
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 84667
        mmWidth = 243300
        BandType = 0
      end
      object ppLine38: TppLine
        Tag = 1
        UserName = 'Line38'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 236803
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLabel132: TppLabel
        Tag = 1
        UserName = 'Label132'
        Caption = #1588#1605#1575#1585#1607' '#1711#1586#1575#1585#1588' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 223838
        mmTop = 78846
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel133: TppLabel
        Tag = 1
        UserName = 'Label133'
        Caption = #1588#1605#1575#1585#1607' '#1578#1601#1705#1610#1705' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 191559
        mmTop = 78846
        mmWidth = 16140
        BandType = 0
      end
      object ppLine39: TppLine
        Tag = 1
        UserName = 'Line39'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 212990
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLine40: TppLine
        Tag = 1
        UserName = 'Line40'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 155840
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLine41: TppLine
        Tag = 1
        UserName = 'Line401'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 142611
        mmTop = 84667
        mmWidth = 3440
        BandType = 0
      end
      object ppLine42: TppLine
        Tag = 1
        UserName = 'Line42'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 133615
        mmTop = 84667
        mmWidth = 3440
        BandType = 0
      end
      object ppLine43: TppLine
        Tag = 1
        UserName = 'Line43'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 116681
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLine44: TppLine
        Tag = 1
        UserName = 'Line44'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 90752
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLine45: TppLine
        Tag = 1
        UserName = 'Line45'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 81227
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLine46: TppLine
        Tag = 1
        UserName = 'Line46'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 62706
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLine47: TppLine
        Tag = 1
        UserName = 'Line47'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 43656
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLine48: TppLine
        Tag = 1
        UserName = 'Line48'
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 9790
        mmTop = 84667
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel134: TppLabel
        Tag = 1
        UserName = 'Label134'
        Caption = #1705#1583' '#1705#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 220928
        mmTop = 91546
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel135: TppLabel
        Tag = 1
        UserName = 'Label135'
        Caption = #1588#1585#1581' '#1705#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5588
        mmLeft = 184150
        mmTop = 92869
        mmWidth = 9948
        BandType = 0
      end
      object ppLabel136: TppLabel
        Tag = 1
        UserName = 'Label136'
        Caption = #1578#1593#1583#1575#1583' /'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 145257
        mmTop = 88900
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel137: TppLabel
        Tag = 1
        UserName = 'Label137'
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 146050
        mmTop = 93398
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel138: TppLabel
        Tag = 1
        UserName = 'Label138'
        Caption = #1608#1575#1581#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 135467
        mmTop = 87313
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel139: TppLabel
        Tag = 1
        UserName = 'Label139'
        Caption = #1575#1606#1583#1575#1586#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 134938
        mmTop = 91546
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel140: TppLabel
        Tag = 1
        UserName = 'Label140'
        Caption = #1711#1610#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 135467
        mmTop = 93398
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel141: TppLabel
        Tag = 1
        UserName = 'Label141'
        Caption = #1576#1607#1575#1610' '#1601#1585#1608#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 118798
        mmTop = 91017
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel142: TppLabel
        Tag = 1
        UserName = 'Label142'
        Caption = #1605#1576#1604#1594' '#1705#1604' ('#1585#1610#1575#1604'('
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 96044
        mmTop = 91017
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel143: TppLabel
        Tag = 1
        UserName = 'Label143'
        Caption = #1583#1585#1589#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 82815
        mmTop = 87313
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel144: TppLabel
        Tag = 1
        UserName = 'Label144'
        Caption = #1578#1582#1601#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 82815
        mmTop = 91546
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel145: TppLabel
        Tag = 1
        UserName = 'Label145'
        Caption = #1581#1580#1605#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 82286
        mmTop = 93398
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel146: TppLabel
        Tag = 1
        UserName = 'Label146'
        Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5588
        mmLeft = 65352
        mmTop = 90488
        mmWidth = 12785
        BandType = 0
      end
      object ppLabel147: TppLabel
        Tag = 1
        UserName = 'Label147'
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 50006
        mmTop = 87313
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel148: TppLabel
        Tag = 1
        UserName = 'Label148'
        Caption = #1608' '#1593#1608#1575#1585#1590
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 47361
        mmTop = 91017
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel149: TppLabel
        Tag = 1
        UserName = 'Label149'
        Caption = '('#1585#1610#1575#1604')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 48948
        mmTop = 93398
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel150: TppLabel
        Tag = 1
        UserName = 'Label150'
        Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1582#1575#1604#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 17727
        mmTop = 86784
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel151: TppLabel
        Tag = 1
        UserName = 'Label151'
        Caption = #1576#1593#1604#1575#1608#1607' '#1580#1605#1593' '#1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 16669
        mmTop = 91546
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel152: TppLabel
        Tag = 1
        UserName = 'Label152'
        Caption = #1608' '#1593#1608#1575#1585#1590
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 25135
        mmTop = 93398
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel153: TppLabel
        Tag = 1
        UserName = 'Label153'
        Caption = '('#1585#1610#1575#1604')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 17198
        mmTop = 93398
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel154: TppLabel
        Tag = 1
        UserName = 'Label154'
        Caption = #1576#1607#1575#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 2910
        mmTop = 86784
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel155: TppLabel
        Tag = 1
        UserName = 'Label155'
        Caption = #1605#1589#1585#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 1852
        mmTop = 91017
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel156: TppLabel
        Tag = 1
        UserName = 'Label156'
        Caption = #1705#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 2381
        mmTop = 93398
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel158: TppLabel
        Tag = 1
        UserName = 'Label158'
        Caption = #1705#1583' '#1711#1585#1608#1607' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 165629
        mmTop = 78846
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel159: TppLabel
        Tag = 1
        UserName = 'Label159'
        Caption = #1705#1583' '#1605#1587#1610#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 143934
        mmTop = 78846
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel160: TppLabel
        Tag = 1
        UserName = 'Label160'
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1608#1610#1586#1610#1578#1608#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 111654
        mmTop = 78846
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel161: TppLabel
        Tag = 1
        UserName = 'Label161'
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1578#1581#1589#1610#1604#1583#1575#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 48154
        mmTop = 78846
        mmWidth = 21960
        BandType = 0
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        OnGetText = ppDBText47GetText
        DataField = 'SECTAFSILY_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 177536
        mmTop = 76994
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'CUSTTYPE_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 152929
        mmTop = 76200
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'CUST_DIR'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 131763
        mmTop = 76465
        mmWidth = 7938
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'ORD_DELV_NO'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 99748
        mmTop = 76729
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        DataField = 'CF_VISITORNAME'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 69586
        mmTop = 76729
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'PRJCODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 37835
        mmTop = 75142
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'CF_DRIVERNAME'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 529
        mmTop = 75142
        mmWidth = 36513
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'ORDADDRESS'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Nazanin'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 10319
        mmLeft = 49742
        mmTop = 49742
        mmWidth = 108215
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        OnGetText = ppDBText55GetText
        DataField = 'CUST_CTCODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 172773
        mmTop = 47361
        mmWidth = 15346
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'CUST_CO'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 174096
        mmTop = 70644
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        OnGetText = ppDBText58GetText
        DataField = 'CUST_STATE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 188648
        mmTop = 49213
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        DataField = 'CUSTTEL'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 125677
        mmTop = 70644
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        DataField = 'CUSTPOST'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6350
        mmLeft = 0
        mmTop = 51065
        mmWidth = 33867
        BandType = 0
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'OFNUM'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 163777
        mmTop = 5027
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        DataField = 'C_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Nazanin'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 4763
        mmLeft = 203465
        mmTop = 60590
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel315: TppLabel
        UserName = 'Label315'
        OnGetText = ppLabel315GetText
        Caption = 'Label315'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Nazanin'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 142346
        mmTop = 60325
        mmWidth = 12700
        BandType = 0
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        DataField = 'CF_STOREDESC'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Nazanin'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 4763
        mmLeft = 156104
        mmTop = 60325
        mmWidth = 46567
        BandType = 0
      end
      object ppLabel314: TppLabel
        UserName = 'Label314'
        Caption = #1601#1585#1608#1588#1711#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 221986
        mmTop = 60325
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label6'
        Caption = ' '#1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 37571
        mmTop = 33602
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel317: TppLabel
        UserName = 'Label317'
        Caption = ' '#1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607' '#1607#1583#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 80698
        mmTop = 33602
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel316: TppLabel
        UserName = 'Label316'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6096
        mmLeft = 62706
        mmTop = 33602
        mmWidth = 17187
        BandType = 0
      end
      object ppLabel318: TppLabel
        UserName = 'Label318'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6096
        mmLeft = 20119
        mmTop = 33602
        mmWidth = 17187
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine65: TppLine
        Tag = 1
        UserName = 'Line502'
        ParentHeight = True
        Position = lpRight
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 241300
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'GDS_CODE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 213784
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'OFSEQ'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 238390
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'GDS_DESCF'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 4064
        mmLeft = 158486
        mmTop = 0
        mmWidth = 53711
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 145257
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'UNT_DESC'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 134938
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'OFPRICE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 120915
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        OnGetText = ppDBText42GetText
        DataField = 'ABATE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 82815
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'CF_PERABAT'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 63236
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'CF_TAX'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 44450
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'TOTCOST'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 16404
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'CF_USERPRICE'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5292
        mmLeft = 2646
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'GDS_CODE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 238390
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppVariable1: TppVariable
        OnPrint = ppVariable1Print
        UserName = 'Variable1'
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5927
        mmLeft = 99356
        mmTop = 0
        mmWidth = 16002
        BandType = 4
      end
      object ppLine50: TppLine
        Tag = 1
        UserName = 'Line50'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 236803
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine51: TppLine
        Tag = 1
        UserName = 'Line501'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 212990
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine52: TppLine
        Tag = 1
        UserName = 'Line52'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 155840
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine53: TppLine
        Tag = 1
        UserName = 'Line53'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine54: TppLine
        Tag = 1
        UserName = 'Line54'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 142611
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine56: TppLine
        Tag = 1
        UserName = 'Line56'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 116681
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine57: TppLine
        Tag = 1
        UserName = 'Line57'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 90752
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine63: TppLine
        Tag = 1
        UserName = 'Line63'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 81227
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine64: TppLine
        Tag = 1
        UserName = 'Line64'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 62706
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine66: TppLine
        Tag = 1
        UserName = 'Line66'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 43656
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine72: TppLine
        Tag = 1
        UserName = 'Line72'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 73000
      mmPrintPosition = 0
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'TOTCOST'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 16669
        mmTop = 3704
        mmWidth = 23813
        BandType = 8
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CF_TAX'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 44715
        mmTop = 3704
        mmWidth = 17727
        BandType = 8
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CF_PERABAT'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5334
        mmLeft = 63236
        mmTop = 3704
        mmWidth = 17198
        BandType = 8
      end
      object ppDbCalcPrice: TppDBCalc
        UserName = 'DbCalcPrice'
        DataField = 'OFPRICE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5334
        mmLeft = 119327
        mmTop = 3704
        mmWidth = 15346
        BandType = 8
      end
      object ppdbCalcQty: TppDBCalc
        UserName = 'dbCalcQty'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5334
        mmLeft = 139436
        mmTop = 3704
        mmWidth = 17198
        BandType = 8
      end
      object ppVariable2: TppVariable
        OnPrint = ppVariable2Print
        UserName = 'Variable2'
        CalcOrder = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5334
        mmLeft = 102468
        mmTop = 3704
        mmWidth = 14478
        BandType = 8
      end
      object pplbStringPrice: TppLabel
        UserName = 'lbStringPrice'
        Caption = 'lbStringPrice'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 218546
        mmTop = 1323
        mmWidth = 20902
        BandType = 8
      end
      object pplbDisDesc1: TppLabel
        UserName = 'lbDisDesc1'
        OnGetText = pplbDisDesc1GetText
        Caption = 'lbDisDesc1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 67469
        mmTop = 45244
        mmWidth = 13758
        BandType = 8
      end
      object ppLine74: TppLine
        UserName = 'Line74'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26458
        mmLeft = 83344
        mmTop = 10319
        mmWidth = 2117
        BandType = 8
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26458
        mmLeft = 16140
        mmTop = 10319
        mmWidth = 2117
        BandType = 8
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26458
        mmLeft = 45244
        mmTop = 10319
        mmWidth = 2117
        BandType = 8
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 16140
        mmTop = 18785
        mmWidth = 67469
        BandType = 8
      end
      object ppLabel157: TppLabel
        UserName = 'Label157'
        Caption = #1578#1582#1601#1610#1601#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 102129
        mmTop = 65352
        mmWidth = 9260
        BandType = 8
      end
      object ppLabel162: TppLabel
        UserName = 'Label162'
        Caption = #1578#1582#1601#1610#1601' '#1578#1593#1583#1575#1583' '#1575#1602#1604#1575#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 76729
        mmTop = 56356
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel163: TppLabel
        UserName = 'Label163'
        Caption = #1580#1605#1593' '#1705#1604' '#1582#1575#1604#1589' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48683
        mmTop = 30956
        mmWidth = 32279
        BandType = 8
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 16140
        mmTop = 28310
        mmWidth = 67469
        BandType = 8
      end
      object ppLine71: TppLine
        UserName = 'Line701'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 16140
        mmTop = 36777
        mmWidth = 67469
        BandType = 8
      end
      object ppLabel164: TppLabel
        UserName = 'Label164'
        OnGetText = ppLabel164GetText
        Caption = 'Label164'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 6350
        mmLeft = 99748
        mmTop = 52652
        mmWidth = 13758
        BandType = 8
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        OnGetText = ppLabel165GetText
        Caption = 'Label165'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 6350
        mmLeft = 215636
        mmTop = 6615
        mmWidth = 14288
        BandType = 8
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        OnGetText = ppLabel166GetText
        Caption = 'Label166'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 24755
        mmTop = 30956
        mmWidth = 14139
        BandType = 8
      end
      object pplbDisDesc2: TppLabel
        UserName = 'lbDisDesc2'
        Caption = 'lbDisDesc2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4995
        mmLeft = 105939
        mmTop = 18521
        mmWidth = 14478
        BandType = 8
      end
      object pplbDisDesc3: TppLabel
        UserName = 'lbDisDesc3'
        Caption = 'lbDisDesc3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4995
        mmLeft = 105844
        mmTop = 23548
        mmWidth = 14647
        BandType = 8
      end
      object pplbDisDesc4: TppLabel
        UserName = 'lbDisDesc4'
        Caption = 'lbDisDesc4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4995
        mmLeft = 106204
        mmTop = 28046
        mmWidth = 14224
        BandType = 8
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        OnGetText = ppLabel171GetText
        Caption = 'lbDisDesc4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 105304
        mmTop = 39423
        mmWidth = 14288
        BandType = 8
      end
      object ppLabel188: TppLabel
        UserName = 'Label188'
        Caption = 'lbDisDesc4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5027
        mmLeft = 47361
        mmTop = 39423
        mmWidth = 14288
        BandType = 8
      end
      object ppLabel235: TppLabel
        UserName = 'Label235'
        Caption = #1580#1605#1593' '#1578#1582#1601#1610#1601' '#1586#1610#1585' '#1601#1575#1705#1578#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 50006
        mmTop = 10583
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel236: TppLabel
        UserName = 'Label236'
        OnGetText = ppLabel236GetText
        Caption = 'Label236'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 23283
        mmTop = 10583
        mmWidth = 15081
        BandType = 8
      end
      object ppLabel237: TppLabel
        UserName = 'Label237'
        Caption = #1575#1589#1604#1575#1581' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 52123
        mmTop = 20638
        mmWidth = 25400
        BandType = 8
      end
      object ppLabel238: TppLabel
        UserName = 'Label238'
        OnGetText = ppLabel238GetText
        Caption = 'Label238'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 23019
        mmTop = 20638
        mmWidth = 15346
        BandType = 8
      end
    end
  end
  object ppBDEPipelineTit: TppBDEPipeline
    DataSource = DM_IntSales.dsEIntOffer
    OpenDataSource = False
    UserName = 'BDEPipelineTit'
    Left = 112
    Top = 552
    object ppBDEPipelineTitppField1: TppField
      FieldAlias = 'TAFSILY_YEAR'
      FieldName = 'TAFSILY_YEAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField2: TppField
      FieldAlias = 'OFNUM'
      FieldName = 'OFNUM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField3: TppField
      FieldAlias = 'OFDATE'
      FieldName = 'OFDATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField4: TppField
      FieldAlias = 'OFVALDTE'
      FieldName = 'OFVALDTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField5: TppField
      FieldAlias = 'OFDLVDTE'
      FieldName = 'OFDLVDTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField6: TppField
      FieldAlias = 'OFCOMM'
      FieldName = 'OFCOMM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField7: TppField
      FieldAlias = 'OFDESC'
      FieldName = 'OFDESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField8: TppField
      FieldAlias = 'OFSTAT'
      FieldName = 'OFSTAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField9: TppField
      FieldAlias = 'CUSTNO'
      FieldName = 'CUSTNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField10: TppField
      FieldAlias = 'CUST_REQNO'
      FieldName = 'CUST_REQNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField11: TppField
      FieldAlias = 'CF_CECODE'
      FieldName = 'CF_CECODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField12: TppField
      FieldAlias = 'CF_CUSTNAME'
      FieldName = 'CF_CUSTNAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField13: TppField
      FieldAlias = 'CUST_REQDATE'
      FieldName = 'CUST_REQDATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField14: TppField
      FieldAlias = 'ORD_DELV_NO'
      FieldName = 'ORD_DELV_NO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField15: TppField
      FieldAlias = 'OFDLVPLACE'
      FieldName = 'OFDLVPLACE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField16: TppField
      FieldAlias = 'ORDADDRESS'
      FieldName = 'ORDADDRESS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField17: TppField
      FieldAlias = 'CF_VISITORNAME'
      FieldName = 'CF_VISITORNAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField18: TppField
      FieldAlias = 'PRJCODE'
      FieldName = 'PRJCODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField19: TppField
      FieldAlias = 'CF_DRIVERNAME'
      FieldName = 'CF_DRIVERNAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField20: TppField
      FieldAlias = 'CF_CARNAME'
      FieldName = 'CF_CARNAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField21: TppField
      FieldAlias = 'SECTAFSILY_CODE'
      FieldName = 'SECTAFSILY_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField22: TppField
      FieldAlias = 'ECONOMIC_CODE'
      FieldName = 'ECONOMIC_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField23: TppField
      FieldAlias = 'CUSTADD'
      FieldName = 'CUSTADD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField24: TppField
      FieldAlias = 'CUST_CO'
      FieldName = 'CUST_CO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField25: TppField
      FieldAlias = 'CUSTTEL'
      FieldName = 'CUSTTEL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField26: TppField
      FieldAlias = 'NAT_CODE'
      FieldName = 'NAT_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField27: TppField
      FieldAlias = 'CUST_STATE'
      FieldName = 'CUST_STATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField28: TppField
      FieldAlias = 'CUST_CTCODE'
      FieldName = 'CUST_CTCODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField29: TppField
      FieldAlias = 'PERCENT_REDUCTION'
      FieldName = 'PERCENT_REDUCTION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField30: TppField
      FieldAlias = 'CUSTTYPE_CODE'
      FieldName = 'CUSTTYPE_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField31: TppField
      FieldAlias = 'CUST_DIR'
      FieldName = 'CUST_DIR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField32: TppField
      FieldAlias = 'CUSTPOST'
      FieldName = 'CUSTPOST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField33: TppField
      FieldAlias = 'USERID'
      FieldName = 'USERID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField34: TppField
      FieldAlias = 'CF_STKDESC'
      FieldName = 'CF_STKDESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField35: TppField
      FieldAlias = 'STK_CODE'
      FieldName = 'STK_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField36: TppField
      FieldAlias = 'USERDATE'
      FieldName = 'USERDATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField37: TppField
      FieldAlias = 'C_CODE'
      FieldName = 'C_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineTitppField38: TppField
      FieldAlias = 'CF_STOREDESC'
      FieldName = 'CF_STOREDESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
  end
  object Query1: TQuery
    Left = 48
    Top = 520
  end
  object DataSource1: TDataSource
    Left = 80
    Top = 520
  end
  object ppBDEPipelineDet: TppBDEPipeline
    DataSource = DM_IntSales.dsEIntOfferDet
    OpenDataSource = False
    UserName = 'BDEPipelineDet'
    Left = 80
    Top = 552
    object ppBDEPipelineDetppField1: TppField
      FieldAlias = 'CF_INVQTY'
      FieldName = 'CF_INVQTY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField2: TppField
      FieldAlias = 'CU_CODE'
      FieldName = 'CU_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField3: TppField
      FieldAlias = 'OFNUM'
      FieldName = 'OFNUM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField4: TppField
      FieldAlias = 'OFSEQ'
      FieldName = 'OFSEQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField5: TppField
      FieldAlias = 'GDS_CODE'
      FieldName = 'GDS_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField6: TppField
      FieldAlias = 'OFQTY'
      FieldName = 'OFQTY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField7: TppField
      FieldAlias = 'OFPRICE'
      FieldName = 'OFPRICE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField8: TppField
      FieldAlias = 'CU_NAME'
      FieldName = 'CU_NAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField9: TppField
      FieldAlias = 'UNT_DESC'
      FieldName = 'UNT_DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField10: TppField
      FieldAlias = 'GDS_DESCL'
      FieldName = 'GDS_DESCL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField11: TppField
      FieldAlias = 'GDS_DESCF'
      FieldName = 'GDS_DESCF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField12: TppField
      FieldAlias = 'TOTCOST'
      FieldName = 'TOTCOST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField13: TppField
      FieldAlias = 'PACKVALUE'
      FieldName = 'PACKVALUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField14: TppField
      FieldAlias = 'CF_PACKVALUE'
      FieldName = 'CF_PACKVALUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField15: TppField
      FieldAlias = 'PACK_TYPE'
      FieldName = 'PACK_TYPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField16: TppField
      FieldAlias = 'GDS_INFO'
      FieldName = 'GDS_INFO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField17: TppField
      FieldAlias = 'GDSINFO'
      FieldName = 'GDSINFO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField18: TppField
      FieldAlias = 'CF_USERPRICE'
      FieldName = 'CF_USERPRICE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField19: TppField
      FieldAlias = 'CF_PERABAT'
      FieldName = 'CF_PERABAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField20: TppField
      FieldAlias = 'CF_TAX'
      FieldName = 'CF_TAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField21: TppField
      FieldAlias = 'OF_REALQTY'
      FieldName = 'OF_REALQTY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField22: TppField
      FieldAlias = 'CF_RAAS'
      FieldName = 'CF_RAAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField23: TppField
      FieldAlias = 'USER_PRICE'
      FieldName = 'USER_PRICE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineDetppField24: TppField
      FieldAlias = 'ABATE'
      FieldName = 'ABATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
  object qrCompany: TQuery
    DatabaseName = 'SALES'
    Left = 96
    Top = 262
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 276
    object N1: TMenuItem
      Caption = #1581#1584#1601
      OnClick = N1Click
    end
  end
  object ppReport4: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipelineDet
    OnPrintingComplete = ppReport3PrintingComplete
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 256000
    PrinterSetup.PaperSize = 256
    Template.FileName = '\\Fserver\develop\SPC\DrAbidi\Sales\Report\Fact1.rtm'
    Units = utMillimeters
    BeforePrint = ppReport3BeforePrint
    CachePages = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 176
    Top = 544
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipelineDet'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 98954
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape9'
        ParentWidth = True
        mmHeight = 96044
        mmLeft = 0
        mmTop = 2646
        mmWidth = 243300
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label1'
        Caption = #1588#1585#1705#1578' '#1576#1607#1606#1608#1583' '#1705#1575#1604#1575#1610' '#1570#1584#1585#1576#1575#1610#1580#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6858
        mmLeft = 104775
        mmTop = 5027
        mmWidth = 42069
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label2'
        Caption = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5588
        mmLeft = 214990
        mmTop = 6879
        mmWidth = 16256
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label3'
        Caption = #1578#1575#1585#1610#1582' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 222780
        mmTop = 17727
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label49'
        Caption = #1705#1583' '#1662#1587#1578#1610' 10 '#1585#1602#1605#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 209550
        mmTop = 37835
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label51'
        Caption = #1589#1608#1585#1578' '#1581#1587#1575#1576' '#1601#1585#1608#1588' '#1705#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 111919
        mmTop = 12700
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel174: TppLabel
        UserName = 'Label52'
        Caption = #1606#1588#1575#1606#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 157163
        mmTop = 26988
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel175: TppLabel
        UserName = 'Label84'
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5588
        mmLeft = 38524
        mmTop = 17727
        mmWidth = 18627
        BandType = 0
      end
      object ppLabel176: TppLabel
        UserName = 'Label103'
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578' / '#1588#1605#1575#1585#1607' '#1605#1604#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5588
        mmLeft = 30692
        mmTop = 26988
        mmWidth = 26988
        BandType = 0
      end
      object ppImage4: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = False
        Picture.Data = {
          07544269746D6170F2100000424DF21000000000000036000000280000001B00
          0000330000000100180000000000BC1000000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF686868FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB2B2B2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD7C7C7CFFFF
          FFFFFFFFFFFFFF7C7C7C000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF7C7C7C0000000000007C7C7CFFFFFFA7A7A70000000000
          007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BDBDBD7C7C7C0000000000000000008C8C8CD0D0D0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA7A7A74D4D4D8C8C8CB2B2B2BDBDBDE1E1E1F0F0F0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C0000
          000000000000000000000000000000000000000000008C8C8CBDBDBDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFA7A7A70000000000000000000000000000000000
          000000000000000000007C7C7CD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9A9A9A4D4D4D0000007C7C7CE9E9E9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0
          8C8C8C000000000000686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0B2
          B2B2F0F0F0FFFFFFFFFFFF0000000000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D00000000000000000008C8C8C9A9A9A00
          00004D4D4DE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD0D0D07C7C7C000000000000000000000000000000BDBDBDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9B2B2
          B24D4D4D000000000000000000B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F00000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFF0F0
          F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A9A9A9AFFFFFF
          0000000000000000004D4D4DFFFFFFFFFFFF7C7C7CFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF8C8C8C000000000000E1E1E1000000000000000000A7A7A7
          FFFFFFFFFFFFD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2
          B2B2686868000000000000686868A7A7A7FFFFFFFFFFFFFFFFFF686868FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0686868FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB2B2B2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD7C7C7CFFFF
          FFFFFFFFFFFFFF7C7C7C000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF6868680000000000007C7C7CFFFFFFA7A7A70000000000
          007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0
          000000000000000000000000000000686868BDBDBDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F000000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB2B2B24D4D4DD0D0D0000000000000000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2000000FFFF
          FFFFFFFF0000000000000000004D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFD9D9D9C7C7C7FFFFFF000000000000E1E1E1FFFFFF0000000000000000
          00A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D4D4DFFFFFF
          7C7C7C000000686868D9D9D90000000000004D4D4DF0F0F0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFA7A7A78C8C8CFFFFFFE1E1E10000000000004D4D4D
          000000000000D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0F0F0FFFFFFFFFFFFA7A7A7000000000000000000A7A7A7FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
          F0F0000000000000000000E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C0000004D4D4DE9
          E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD0D0D0D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        mmHeight = 19844
        mmLeft = 234686
        mmTop = 55298
        mmWidth = 6350
        BandType = 0
      end
      object ppImage5: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Picture.Data = {
          07544269746D6170FE180000424DFE1800000000000036000000280000002200
          00003D0000000100180000000000C81800000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1B2B2B2686868000000686868E9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A0000004D4D4D8C8C8C
          4D4D4D0000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000FFFFFFFFFFFFE9E9E9000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9A9A9A000000C7C7C7FFFFFFFFFFFF0000004D4D4DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE9E9E90000004D4D4DE9E9E9E9E9E9000000B2B2
          B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1686868000000
          686868BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9A9A9A4D4D4D0000007C7C7CE9E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D08C8C8C0000000000006868
          68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0B2B2B2F0
          F0F0FFFFFFFFFFFF0000000000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
          D00000000000000000008C8C8C9A9A9A0000004D4D4DE9E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD0D0D07C7C7C000000000000000000000000000000BDBDBDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9B2B2B24D4D4D000000
          000000000000B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0F0F0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE9E9E9A7A7A7E9E9E9FFFFFFFFFFFFE9E9E90000000000000000006868
          68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF7C7C7C0000009A9A9AFFFFFFFFFFFF000000000000
          000000000000E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0FFFFFFFFFFFFFF
          FFFFE9E9E90000000000000000008C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD000000
          000000000000B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF9A9A9A0000000000000000008C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9BDBD
          BDFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000004D4D4DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9A9A9AF0F0F0D9D9D9FFFFFFFFFFFFFFFFFF8C8C8C000000000000000000C7C7
          C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFBDBDBDE9E9E9BDBDBDFFFFFFFFFFFFFFFFFFE9E9E9B2B2B2
          000000000000686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9FFFFFFFFFFFFFF
          FFFFF0F0F0FFFFFF000000000000686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF8C8C8C0000000000007C7C7CB2B2B2F0F0F0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7C7C77C7C7C000000000000B2B2B2FFFFFFF0F0F0000000000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF8C8C8C000000FFFFFF7C7C7C000000000000FFFFFF8C8C8C00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000009A9A9A6868680000000000
          00A7A7A7000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C000000000000
          000000000000000000000000000000000000A7A7A7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7C7C78C8C8C0000000000000000006868689A9A9AE1E1E1FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB2B2B2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE9E9E9000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFBDBDBD7C7C7CFFFFFFFFFFFFFFFFFF7C7C7C000000000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF6868680000000000007C7C7CFFFFFFA7A7A700000000
          00007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D00000000000000000000000
          00000000686868BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0
          BDBDBDFFFFFFE9E9E9A7A7A74D4D4D000000A7A7A70000000000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF4D4D4D000000FFFFFF4D4D4D000000F0F0F0000000000000000000
          0000000000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B28C8C8CFFFFFF8C8C8C000000B2B2B200
          00004D4D4D000000000000000000D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFC7C7C78C8C8C0000000000000000009A9A9AE1E1E1FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
        mmHeight = 19844
        mmLeft = 232834
        mmTop = 17992
        mmWidth = 6615
        BandType = 0
      end
      object ppLine73: TppLine
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 74877
        mmLeft = 233363
        mmTop = 2646
        mmWidth = 3440
        BandType = 0
      end
      object ppLine75: TppLine
        UserName = 'Line35'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 48683
        mmWidth = 243300
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label104'
        Caption = #1606#1575#1605' '#1588#1582#1589'  '#1581#1602#1610#1602#1610' / '#1581#1602#1608#1602#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 204079
        mmTop = 48683
        mmWidth = 28490
        BandType = 0
      end
      object ppLabel178: TppLabel
        UserName = 'Label5'
        Caption = #1606#1588#1575#1606#1588' '#1705#1575#1605#1604': '#1575#1587#1578#1575#1606' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 207963
        mmTop = 58738
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label117'
        Caption = #1588#1607#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 183621
        mmTop = 58738
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel180: TppLabel
        UserName = 'Label118'
        Caption = #1606#1588#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 159015
        mmTop = 58738
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label119'
        Caption = #1705#1583' '#1575#1588#1578#1585#1575#1705' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 141817
        mmTop = 48683
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label120'
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 88371
        mmTop = 48683
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label121'
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578' / '#1588#1605#1575#1585#1607' '#1605#1604#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 25400
        mmTop = 48683
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label122'
        Caption = #1705#1583' '#1662#1587#1578#1610' 10 '#1585#1602#1605#1610' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 210344
        mmTop = 70644
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel185: TppLabel
        UserName = 'Label123'
        Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' / '#1606#1605#1575#1576#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 143404
        mmTop = 37835
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel186: TppLabel
        UserName = 'Label124'
        Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' / '#1606#1605#1575#1576#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 143669
        mmTop = 70644
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label125'
        Caption = #1605#1606#1591#1602#1607' '#1588#1607#1585#1583#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 35983
        mmTop = 69850
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label127'
        Caption = 'Label127'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 193675
        mmTop = 37571
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label128'
        Caption = 'Label128'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 140759
        mmTop = 26723
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel191: TppLabel
        UserName = 'Label129'
        Caption = 'Label129'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 127794
        mmTop = 37571
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label130'
        Caption = 'Label130'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 23283
        mmTop = 17463
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel193: TppLabel
        UserName = 'Label131'
        Caption = 'Label131'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 16669
        mmTop = 26988
        mmWidth = 14023
        BandType = 0
      end
      object ppDBText61: TppDBText
        UserName = 'DBText26'
        DataField = 'OFDATE'
        DataPipeline = ppBDEPipelineTit
        DisplayFormat = '!99/99/00;0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 204259
        mmTop = 17463
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText62: TppDBText
        UserName = 'DBText27'
        DataField = 'CF_CUSTNAME'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 8996
        mmLeft = 156634
        mmTop = 49477
        mmWidth = 46302
        BandType = 0
      end
      object ppDBText63: TppDBText
        UserName = 'DBText28'
        DataField = 'CUSTNO'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 122767
        mmTop = 49742
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText34'
        DataField = 'ECONOMIC_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 53446
        mmTop = 49742
        mmWidth = 33602
        BandType = 0
      end
      object ppDBText65: TppDBText
        UserName = 'DBText35'
        DataField = 'NAT_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 48419
        mmWidth = 24342
        BandType = 0
      end
      object ppLine76: TppLine
        UserName = 'Line36'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 77258
        mmWidth = 243300
        BandType = 0
      end
      object ppLine77: TppLine
        UserName = 'Line37'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 84667
        mmWidth = 243300
        BandType = 0
      end
      object ppLine78: TppLine
        UserName = 'Line38'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 236803
        mmTop = 84666
        mmWidth = 265
        BandType = 0
      end
      object ppLabel194: TppLabel
        UserName = 'Label132'
        Caption = #1588#1605#1575#1585#1607' '#1711#1586#1575#1585#1588' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 223838
        mmTop = 78846
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel195: TppLabel
        UserName = 'Label133'
        Caption = #1588#1605#1575#1585#1607' '#1578#1601#1705#1610#1705' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 191559
        mmTop = 78846
        mmWidth = 16140
        BandType = 0
      end
      object ppLine79: TppLine
        UserName = 'Line39'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 212990
        mmTop = 84666
        mmWidth = 265
        BandType = 0
      end
      object ppLine80: TppLine
        UserName = 'Line40'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 155840
        mmTop = 84666
        mmWidth = 265
        BandType = 0
      end
      object ppLine81: TppLine
        UserName = 'Line401'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 142611
        mmTop = 84666
        mmWidth = 3440
        BandType = 0
      end
      object ppLine82: TppLine
        UserName = 'Line42'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 133615
        mmTop = 84667
        mmWidth = 265
        BandType = 0
      end
      object ppLine83: TppLine
        UserName = 'Line43'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 116681
        mmTop = 84666
        mmWidth = 265
        BandType = 0
      end
      object ppLine84: TppLine
        UserName = 'Line44'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 90752
        mmTop = 84666
        mmWidth = 265
        BandType = 0
      end
      object ppLine85: TppLine
        UserName = 'Line45'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 81227
        mmTop = 84666
        mmWidth = 265
        BandType = 0
      end
      object ppLine86: TppLine
        UserName = 'Line46'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 62706
        mmTop = 84666
        mmWidth = 265
        BandType = 0
      end
      object ppLine87: TppLine
        UserName = 'Line47'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 43656
        mmTop = 84666
        mmWidth = 265
        BandType = 0
      end
      object ppLine88: TppLine
        UserName = 'Line48'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 9790
        mmTop = 84666
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel196: TppLabel
        UserName = 'Label134'
        Caption = #1705#1583' '#1705#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 220928
        mmTop = 91546
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel197: TppLabel
        UserName = 'Label135'
        Caption = #1588#1585#1581' '#1705#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 184150
        mmTop = 91546
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel198: TppLabel
        UserName = 'Label136'
        Caption = #1578#1593#1583#1575#1583' /'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 145257
        mmTop = 88900
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label137'
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 146050
        mmTop = 93398
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label138'
        Caption = #1608#1575#1581#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 135467
        mmTop = 84931
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel201: TppLabel
        UserName = 'Label139'
        Caption = #1575#1606#1583#1575#1586#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 134938
        mmTop = 88900
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel202: TppLabel
        UserName = 'Label140'
        Caption = #1711#1610#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 135467
        mmTop = 93134
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel203: TppLabel
        UserName = 'Label141'
        Caption = #1576#1607#1575#1610' '#1601#1585#1608#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 118798
        mmTop = 91017
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel204: TppLabel
        UserName = 'Label142'
        Caption = #1605#1576#1604#1594' '#1705#1604' ('#1585#1610#1575#1604'('
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 96044
        mmTop = 91017
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel205: TppLabel
        UserName = 'Label143'
        Caption = #1583#1585#1589#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 82815
        mmTop = 84931
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel206: TppLabel
        UserName = 'Label144'
        Caption = #1578#1582#1601#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 82815
        mmTop = 88900
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel207: TppLabel
        UserName = 'Label145'
        Caption = #1581#1580#1605#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 82286
        mmTop = 93398
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel208: TppLabel
        UserName = 'Label146'
        Caption = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5588
        mmLeft = 65352
        mmTop = 90488
        mmWidth = 12785
        BandType = 0
      end
      object ppLabel209: TppLabel
        UserName = 'Label147'
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 50006
        mmTop = 84931
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel210: TppLabel
        UserName = 'Label148'
        Caption = #1608' '#1593#1608#1575#1585#1590
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 47361
        mmTop = 88636
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel211: TppLabel
        UserName = 'Label149'
        Caption = '('#1585#1610#1575#1604')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 48948
        mmTop = 93398
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel212: TppLabel
        UserName = 'Label150'
        Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1582#1575#1604#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 17727
        mmTop = 84402
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel213: TppLabel
        UserName = 'Label151'
        Caption = #1576#1593#1604#1575#1608#1607' '#1580#1605#1593' '#1605#1575#1604#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 16669
        mmTop = 88900
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel214: TppLabel
        UserName = 'Label152'
        Caption = #1608' '#1593#1608#1575#1585#1590
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 25135
        mmTop = 93398
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel215: TppLabel
        UserName = 'Label153'
        Caption = '('#1585#1610#1575#1604')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 17198
        mmTop = 93398
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel216: TppLabel
        UserName = 'Label154'
        Caption = #1576#1607#1575#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 2910
        mmTop = 85196
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel217: TppLabel
        UserName = 'Label155'
        Caption = #1605#1589#1585#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 1852
        mmTop = 89429
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel218: TppLabel
        UserName = 'Label156'
        Caption = #1705#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 2381
        mmTop = 93398
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel219: TppLabel
        UserName = 'Label158'
        Caption = #1705#1583' '#1711#1585#1608#1607' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 165629
        mmTop = 78846
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel220: TppLabel
        UserName = 'Label159'
        Caption = #1705#1583' '#1605#1587#1610#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 143934
        mmTop = 78846
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel221: TppLabel
        UserName = 'Label160'
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1608#1610#1586#1610#1578#1608#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 111654
        mmTop = 78846
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel222: TppLabel
        UserName = 'Label161'
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1578#1581#1589#1610#1604#1583#1575#1585' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 48154
        mmTop = 78846
        mmWidth = 21960
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText47'
        OnGetText = ppDBText47GetText
        DataField = 'SECTAFSILY_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 179388
        mmTop = 78846
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText48'
        DataField = 'CUSTTYPE_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 156634
        mmTop = 78846
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText49'
        DataField = 'CUST_DIR'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 135467
        mmTop = 78846
        mmWidth = 7938
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText50'
        DataField = 'ORD_DELV_NO'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 101600
        mmTop = 78846
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText51'
        DataField = 'CF_VISITORNAME'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 71438
        mmTop = 78846
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText71: TppDBText
        UserName = 'DBText52'
        DataField = 'PRJCODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 37835
        mmTop = 78846
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText53'
        DataField = 'CF_DRIVERNAME'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 5556
        mmLeft = 529
        mmTop = 78846
        mmWidth = 36513
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText54'
        DataField = 'ORDADDRESS'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Nazanin'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 10319
        mmLeft = 49742
        mmTop = 58738
        mmWidth = 108215
        BandType = 0
      end
      object ppDBText74: TppDBText
        UserName = 'DBText55'
        OnGetText = ppDBText55GetText
        DataField = 'CUST_CTCODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 167482
        mmTop = 58738
        mmWidth = 15346
        BandType = 0
      end
      object ppDBText75: TppDBText
        UserName = 'DBText57'
        DataField = 'CUST_CO'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 174625
        mmTop = 70379
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText76: TppDBText
        UserName = 'DBText58'
        OnGetText = ppDBText58GetText
        DataField = 'CUST_STATE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 188648
        mmTop = 58738
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText77: TppDBText
        UserName = 'DBText59'
        DataField = 'CUSTTEL'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 125677
        mmTop = 70379
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText78: TppDBText
        UserName = 'DBText56'
        DataField = 'CUSTPOST'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6350
        mmLeft = 0
        mmTop = 61119
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel223: TppLabel
        UserName = 'Label167'
        Caption = #1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 34396
        mmTop = 61383
        mmWidth = 14552
        BandType = 0
      end
      object ppDBText79: TppDBText
        UserName = 'DBText60'
        DataField = 'OFNUM'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 6085
        mmLeft = 162984
        mmTop = 5821
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine89: TppLine
        UserName = 'Line502'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 242094
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText36'
        DataField = 'GDS_CODE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 213784
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText37'
        DataField = 'OFSEQ'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 237596
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText38'
        DataField = 'GDS_DESCF'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 4064
        mmLeft = 158486
        mmTop = 0
        mmWidth = 53711
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText39'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 143669
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText40'
        DataField = 'UNT_DESC'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 134938
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText41'
        DataField = 'OFPRICE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 119063
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText42'
        OnGetText = ppDBText42GetText
        DataField = 'ABATE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 82815
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText43'
        DataField = 'CF_PERABAT'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 63236
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText44'
        DataField = 'CF_TAX'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 44450
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText89: TppDBText
        UserName = 'DBText45'
        DataField = 'TOTCOST'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 16404
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText90: TppDBText
        UserName = 'DBText46'
        DataField = 'CF_USERPRICE'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5292
        mmLeft = 265
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppVariable3: TppVariable
        OnPrint = ppVariable1Print
        UserName = 'Variable1'
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5927
        mmLeft = 99356
        mmTop = 0
        mmWidth = 16002
        BandType = 4
      end
      object ppLine90: TppLine
        UserName = 'Line50'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 236803
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine91: TppLine
        UserName = 'Line501'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 212990
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine92: TppLine
        UserName = 'Line52'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 155840
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine93: TppLine
        UserName = 'Line53'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 133615
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine94: TppLine
        UserName = 'Line54'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 142611
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine95: TppLine
        UserName = 'Line56'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 116681
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine96: TppLine
        UserName = 'Line57'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 90752
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine97: TppLine
        UserName = 'Line63'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 81227
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine98: TppLine
        UserName = 'Line64'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 62706
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine99: TppLine
        UserName = 'Line66'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 43656
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine100: TppLine
        UserName = 'Line72'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 9790
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine109: TppLine
        UserName = 'Line109'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine107: TppLine
        UserName = 'Line107'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 6879
        mmWidth = 243300
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 73000
      mmPrintPosition = 0
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 26988
        mmLeft = 16140
        mmTop = 10319
        mmWidth = 67469
        BandType = 8
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'TOTCOST'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 16669
        mmTop = 3704
        mmWidth = 23813
        BandType = 8
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CF_TAX'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5927
        mmLeft = 44715
        mmTop = 3704
        mmWidth = 17727
        BandType = 8
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CF_PERABAT'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5334
        mmLeft = 63236
        mmTop = 3704
        mmWidth = 17198
        BandType = 8
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DbCalcPrice'
        DataField = 'OFPRICE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5334
        mmLeft = 119327
        mmTop = 3704
        mmWidth = 15346
        BandType = 8
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'dbCalcQty'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 5334
        mmLeft = 139436
        mmTop = 3704
        mmWidth = 17198
        BandType = 8
      end
      object ppVariable4: TppVariable
        OnPrint = ppVariable2Print
        UserName = 'Variable2'
        CalcOrder = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5334
        mmLeft = 102468
        mmTop = 3704
        mmWidth = 14478
        BandType = 8
      end
      object ppLabel224: TppLabel
        UserName = 'lbStringPrice'
        Caption = 'lbStringPrice'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 150009
        mmTop = 28046
        mmWidth = 20913
        BandType = 8
      end
      object ppLabel225: TppLabel
        UserName = 'lbDisDesc1'
        OnGetText = pplbDisDesc1GetText
        Caption = 'lbDisDesc1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 65881
        mmTop = 40217
        mmWidth = 13758
        BandType = 8
      end
      object ppLine103: TppLine
        UserName = 'Line68'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26458
        mmLeft = 45244
        mmTop = 10319
        mmWidth = 2117
        BandType = 8
      end
      object ppLine104: TppLine
        UserName = 'Line69'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 16140
        mmTop = 18785
        mmWidth = 67469
        BandType = 8
      end
      object ppLabel226: TppLabel
        UserName = 'Label157'
        Caption = #1578#1582#1601#1610#1601#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 60325
        mmTop = 11906
        mmWidth = 9260
        BandType = 8
      end
      object ppLabel227: TppLabel
        UserName = 'Label162'
        Caption = #1578#1582#1601#1610#1601' '#1578#1593#1583#1575#1583' '#1575#1602#1604#1575#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 21960
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel228: TppLabel
        UserName = 'Label163'
        Caption = #1580#1605#1593' '#1705#1604' '#1582#1575#1604#1589' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48683
        mmTop = 30956
        mmWidth = 32279
        BandType = 8
      end
      object ppLine105: TppLine
        UserName = 'Line70'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 16140
        mmTop = 28310
        mmWidth = 67469
        BandType = 8
      end
      object ppLabel229: TppLabel
        UserName = 'Label164'
        OnGetText = ppLabel164GetText
        Caption = 'Label164'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 25178
        mmTop = 11906
        mmWidth = 13716
        BandType = 8
      end
      object ppLabel230: TppLabel
        UserName = 'Label165'
        OnGetText = ppLabel165GetText
        Caption = 'Label165'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 224896
        mmTop = 5027
        mmWidth = 14288
        BandType = 8
      end
      object ppLabel231: TppLabel
        UserName = 'Label166'
        OnGetText = ppLabel166GetText
        Caption = 'Label166'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 24755
        mmTop = 30956
        mmWidth = 14139
        BandType = 8
      end
      object ppLabel232: TppLabel
        UserName = 'lbDisDesc2'
        Caption = 'lbDisDesc2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4995
        mmLeft = 105939
        mmTop = 18521
        mmWidth = 14478
        BandType = 8
      end
      object ppLabel233: TppLabel
        UserName = 'lbDisDesc3'
        Caption = 'lbDisDesc3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4995
        mmLeft = 105844
        mmTop = 23548
        mmWidth = 14647
        BandType = 8
      end
      object ppLabel234: TppLabel
        UserName = 'lbDisDesc4'
        Caption = 'lbDisDesc4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Traffic'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4995
        mmLeft = 106204
        mmTop = 28046
        mmWidth = 14224
        BandType = 8
      end
    end
  end
  object qrTempTable: TQuery
    DatabaseName = 'SALES'
    Left = 104
    Top = 300
  end
  object ppReport5: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipelineDet
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 200
    Top = 440
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipelineDet'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 57679
      mmPrintPosition = 0
      object ppShape15: TppShape
        UserName = 'Shape16'
        mmHeight = 56092
        mmLeft = 1058
        mmTop = 1588
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel239: TppLabel
        UserName = 'Label1'
        Caption = #1601#1585#1608#1588#1606#1583#1607' : '#1662#1582#1588' '#1605#1608#1575#1583' '#1594#1584#1575#1610#1610' '#1585#1608#1586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 156369
        mmTop = 2910
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel240: TppLabel
        UserName = 'Label2'
        Caption = '  '#1589#1608#1585#1578#1581#1587#1575#1576' '#1601#1585#1608#1588' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 83608
        mmTop = 6615
        mmWidth = 32216
        BandType = 0
      end
      object ppLabel241: TppLabel
        UserName = 'Label3'
        Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 24871
        mmTop = 2646
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText91: TppDBText
        UserName = 'DBText1'
        DataField = 'OFNUM'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 3175
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel242: TppLabel
        UserName = 'Label4'
        Caption = #1603#1583#1575#1602#1578#1589#1575#1583#1610': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 180182
        mmTop = 11377
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel243: TppLabel
        UserName = 'Label5'
        Caption = #1578#1604#1601#1606' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 187061
        mmTop = 19050
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel244: TppLabel
        UserName = 'Label6'
        Caption = #1606#1588#1575#1606#1610' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 185209
        mmTop = 26194
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel245: TppLabel
        UserName = 'Label7'
        Caption = #1578#1575#1585#1610#1582' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 34925
        mmTop = 11377
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel246: TppLabel
        UserName = 'Label8'
        Caption = #1587#1575#1593#1578'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 33867
        mmTop = 19050
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel247: TppLabel
        UserName = 'Label9'
        OnGetText = ppLabel247GetText
        Caption = 'Label9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4022
        mmLeft = 20373
        mmTop = 19050
        mmWidth = 10499
        BandType = 0
      end
      object ppLine101: TppLine
        UserName = 'Line1'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 33602
        mmWidth = 197379
        BandType = 0
      end
      object ppLabel248: TppLabel
        UserName = 'Label10101'
        Caption = #1582#1585#1610#1583#1575#1585' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 183357
        mmTop = 35190
        mmWidth = 11007
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText2'
        DataField = 'CF_CUSTNAME'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 3969
        mmLeft = 139436
        mmTop = 35190
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText93: TppDBText
        UserName = 'DBText3'
        OnGetText = ppDBText93GetText
        DataField = 'OFDATE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 3969
        mmLeft = 14552
        mmTop = 11377
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel249: TppLabel
        UserName = 'Label1014'
        Caption = #1606#1588#1575#1606#1610' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 184944
        mmTop = 42598
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel250: TppLabel
        UserName = 'Label10'
        Caption = #1603#1583#1575#1602#1578#1589#1575#1583#1610':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 35190
        mmWidth = 13229
        BandType = 0
      end
      object ppDBText94: TppDBText
        UserName = 'DBText4'
        DataField = 'ECONOMIC_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 3969
        mmLeft = 13229
        mmTop = 35190
        mmWidth = 41010
        BandType = 0
      end
      object ppDBText95: TppDBText
        UserName = 'DBText5'
        DataField = 'CUSTADD'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 3969
        mmLeft = 7408
        mmTop = 42598
        mmWidth = 174625
        BandType = 0
      end
      object ppLine102: TppLine
        UserName = 'Line102'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 47361
        mmWidth = 197379
        BandType = 0
      end
      object ppLabel251: TppLabel
        UserName = 'Label11'
        Caption = #1585#1583#1610#1601
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 188913
        mmTop = 50271
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel252: TppLabel
        UserName = 'Label12'
        Caption = #1588#1585#1581' '#1705#1575#1604#1575' / '#1582#1583#1605#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 137054
        mmTop = 50271
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel253: TppLabel
        UserName = 'Label13'
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 93398
        mmTop = 50271
        mmWidth = 5376
        BandType = 0
      end
      object ppLabel254: TppLabel
        UserName = 'Label16'
        Caption = #1601#1610' '#1608#1575#1581#1583' '#1601#1585#1608#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 50271
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel255: TppLabel
        UserName = 'Label17'
        Caption = #1580#1605#1593' ('#1585#1610#1575#1604')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 38629
        mmTop = 50271
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel256: TppLabel
        UserName = 'Label18'
        Caption = #1605#1604#1575#1581#1592#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 50271
        mmWidth = 10054
        BandType = 0
      end
      object ppLine106: TppLine
        UserName = 'Line106'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 187855
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
      object ppLine108: TppLine
        UserName = 'Line108'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 106098
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
      object ppLine110: TppLine
        UserName = 'Line112'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 86254
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
      object ppLine111: TppLine
        UserName = 'Line113'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 62177
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
      object ppLine112: TppLine
        UserName = 'Line114'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 28310
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine113: TppLine
        UserName = 'Line115'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine114: TppLine
        UserName = 'Line103'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 106098
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine115: TppLine
        UserName = 'Line119'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 86254
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine116: TppLine
        UserName = 'Line120'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 62177
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine117: TppLine
        UserName = 'Line121'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 28310
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine118: TppLine
        UserName = 'Line122'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 1323
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText96: TppDBText
        UserName = 'DBText6'
        DataField = 'OFSEQ'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 188119
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText97: TppDBText
        UserName = 'DBText7'
        DataField = 'GDS_DESCF'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 107950
        mmTop = 794
        mmWidth = 79111
        BandType = 4
      end
      object ppDBText98: TppDBText
        UserName = 'DBText8'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 87577
        mmTop = 794
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText99: TppDBText
        UserName = 'DBText11'
        DataField = 'TOTCOST'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 29633
        mmTop = 794
        mmWidth = 31485
        BandType = 4
      end
      object ppLine119: TppLine
        UserName = 'Line123'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 6085
        mmWidth = 197379
        BandType = 4
      end
      object ppVariable5: TppVariable
        UserName = 'Variable1'
        CalcOrder = 0
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 63236
        mmTop = 794
        mmWidth = 22754
        BandType = 4
      end
      object ppLine120: TppLine
        UserName = 'Line124'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 195527
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 81492
      mmPrintPosition = 0
      object ppShape16: TppShape
        UserName = 'Shape17'
        mmHeight = 81227
        mmLeft = 1058
        mmTop = 265
        mmWidth = 195263
        BandType = 7
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 12435
        mmLeft = 28310
        mmTop = 42333
        mmWidth = 167482
        BandType = 7
      end
      object ppLabel257: TppLabel
        UserName = 'Label23'
        Caption = #1605#1581#1604' '#1605#1607#1585' '#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 13229
        mmWidth = 20902
        BandType = 7
      end
      object ppLine121: TppLine
        UserName = 'Line131'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 162190
        mmTop = 18521
        mmWidth = 28840
        BandType = 7
      end
      object ppLabel258: TppLabel
        UserName = 'Label24'
        Caption = #1605#1587#1574#1608#1604' '#1601#1585#1608#1588': '#1575#1602#1575#1610' '#1578#1585#1603#1605#1575#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 56092
        mmWidth = 32015
        BandType = 7
      end
      object ppLabel259: TppLabel
        UserName = 'Label25'
        Caption = ' '#1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '#1576#1581#1585#1608#1601' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 161661
        mmTop = 62442
        mmWidth = 33338
        BandType = 7
      end
      object ppLabel260: TppLabel
        UserName = 'Label20101'
        OnGetText = ppLabel260GetText
        Caption = 'Label20101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 140229
        mmTop = 62442
        mmWidth = 18923
        BandType = 7
      end
      object ppLine122: TppLine
        UserName = 'Line133'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 60854
        mmWidth = 197379
        BandType = 7
      end
      object ppLine123: TppLine
        UserName = 'Line134'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 67733
        mmWidth = 197379
        BandType = 7
      end
      object ppLabel261: TppLabel
        UserName = 'Label171'
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 182563
        mmTop = 68792
        mmWidth = 13494
        BandType = 7
      end
      object ppLabel262: TppLabel
        UserName = 'Label188'
        Caption = #1576#1575#1586#1576#1610#1606' '#1603#1606#1606#1583#1607' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 102659
        mmTop = 68792
        mmWidth = 14817
        BandType = 7
      end
      object ppLabel263: TppLabel
        UserName = 'Label235'
        Caption = #1578#1575#1574#1610#1583' '#1603#1606#1606#1583#1607' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 55563
        mmTop = 68792
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel264: TppLabel
        UserName = 'Label236'
        Caption = #1605#1583#1610#1585' '#1587#1610#1587#1578#1605' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 74348
        mmWidth = 14552
        BandType = 7
      end
      object ppLabel265: TppLabel
        UserName = 'Label237'
        Caption = 'Label237'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 160338
        mmTop = 74348
        mmWidth = 15028
        BandType = 7
      end
      object ppLine124: TppLine
        UserName = 'Line135'
        Pen.Color = clGray
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 35454
        mmTop = 67733
        mmWidth = 1852
        BandType = 7
      end
      object ppLine125: TppLine
        UserName = 'Line136'
        Pen.Color = clGray
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 85725
        mmTop = 67998
        mmWidth = 1852
        BandType = 7
      end
      object ppLine126: TppLine
        UserName = 'Line137'
        Pen.Color = clGray
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 138642
        mmTop = 67998
        mmWidth = 1852
        BandType = 7
      end
      object ppLine127: TppLine
        UserName = 'Line138'
        Pen.Color = clGray
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1852
        mmTop = 73025
        mmWidth = 33602
        BandType = 7
      end
      object ppLabel266: TppLabel
        UserName = 'Label19'
        Caption = #1580#1605#1593' '#1705#1575#1585#1578#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 1323
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel267: TppLabel
        UserName = 'Label20'
        Caption = #1578#1582#1601#1610#1601
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 8996
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel268: TppLabel
        UserName = 'Label21'
        Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 17198
        mmWidth = 15346
        BandType = 7
      end
      object ppLabel269: TppLabel
        UserName = 'Label238'
        Caption = #1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 34396
        mmWidth = 19844
        BandType = 7
      end
      object ppDBText100: TppDBText
        UserName = 'DBText14'
        OnGetText = ppDBText47GetText
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 34396
        mmWidth = 31485
        BandType = 7
      end
      object ppLine128: TppLine
        UserName = 'Line125'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 39688
        mmLeft = 28310
        mmTop = 529
        mmWidth = 794
        BandType = 7
      end
      object ppLine129: TppLine
        UserName = 'Line126'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 39688
        mmLeft = 62177
        mmTop = 529
        mmWidth = 794
        BandType = 7
      end
      object ppLine130: TppLine
        UserName = 'Line127'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28310
        mmTop = 7144
        mmWidth = 34131
        BandType = 7
      end
      object ppLine131: TppLine
        UserName = 'Line202'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28310
        mmTop = 14817
        mmWidth = 34131
        BandType = 7
      end
      object ppLine132: TppLine
        UserName = 'Line129'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28575
        mmTop = 23548
        mmWidth = 34131
        BandType = 7
      end
      object ppLine133: TppLine
        UserName = 'Line130'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28046
        mmTop = 31750
        mmWidth = 34131
        BandType = 7
      end
      object ppLine134: TppLine
        UserName = 'Line132'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28310
        mmTop = 39952
        mmWidth = 34131
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'TOTCOST'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 1323
        mmWidth = 31485
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 154782
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel270: TppLabel
        UserName = 'Label14'
        Caption = #1578#1593#1583#1575#1583' / '#1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 181769
        mmTop = 20638
        mmWidth = 13494
        BandType = 7
      end
      object ppLabel271: TppLabel
        UserName = 'Label15'
        Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 157427
        mmTop = 20638
        mmWidth = 22490
        BandType = 7
      end
      object ppDBText101: TppDBText
        UserName = 'DBText102'
        DataField = 'OFPRICE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 157427
        mmTop = 25665
        mmWidth = 21960
        BandType = 7
      end
      object ppDBText102: TppDBText
        UserName = 'DBText9'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 181240
        mmTop = 25665
        mmWidth = 13758
        BandType = 7
      end
      object ppLabel272: TppLabel
        UserName = 'Label22'
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 184150
        mmTop = 36777
        mmWidth = 11134
        BandType = 7
      end
      object ppLabel273: TppLabel
        UserName = 'Label239'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 12435
        mmLeft = 28310
        mmTop = 42333
        mmWidth = 167482
        BandType = 7
      end
      object ppLabel274: TppLabel
        UserName = 'Label240'
        OnGetText = ppLabel274GetText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 29887
        mmTop = 8996
        mmWidth = 31496
        BandType = 7
      end
      object ppLabel275: TppLabel
        UserName = 'Label243'
        OnGetText = ppLabel275GetText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 29887
        mmTop = 17198
        mmWidth = 31496
        BandType = 7
      end
    end
  end
  object ppReport6: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipelineDet
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 264
    Top = 456
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipelineDet'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 57679
      mmPrintPosition = 0
      object ppShape17: TppShape
        UserName = 'Shape16'
        ParentWidth = True
        mmHeight = 56092
        mmLeft = 0
        mmTop = 1588
        mmWidth = 197379
        BandType = 0
      end
      object ppLabel276: TppLabel
        UserName = 'Label1'
        Caption = #1601#1585#1608#1588#1606#1583#1607' : '#1662#1582#1588' '#1605#1608#1575#1583' '#1594#1584#1575#1610#1610' '#1585#1608#1586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 157957
        mmTop = 2910
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel277: TppLabel
        UserName = 'Label2'
        Caption = '  '#1589#1608#1585#1578#1581#1587#1575#1576' '#1601#1585#1608#1588' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 83608
        mmTop = 6615
        mmWidth = 32216
        BandType = 0
      end
      object ppLabel278: TppLabel
        UserName = 'Label3'
        Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 24871
        mmTop = 2646
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText103: TppDBText
        UserName = 'DBText1'
        DataField = 'OFNUM'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 3175
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel279: TppLabel
        UserName = 'Label4'
        Caption = #1603#1583#1575#1602#1578#1589#1575#1583#1610': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 181769
        mmTop = 11377
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel280: TppLabel
        UserName = 'Label5'
        Caption = #1578#1604#1601#1606' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 188648
        mmTop = 19050
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel281: TppLabel
        UserName = 'Label6'
        Caption = #1606#1588#1575#1606#1610' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 186796
        mmTop = 26194
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel282: TppLabel
        UserName = 'Label7'
        Caption = #1578#1575#1585#1610#1582' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 34925
        mmTop = 11377
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel283: TppLabel
        UserName = 'Label8'
        Caption = #1587#1575#1593#1578'  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 33867
        mmTop = 19050
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel284: TppLabel
        UserName = 'Label9'
        Caption = 'Label9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 20373
        mmTop = 19050
        mmWidth = 10499
        BandType = 0
      end
      object ppLine135: TppLine
        UserName = 'Line1'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 33602
        mmWidth = 197379
        BandType = 0
      end
      object ppLabel285: TppLabel
        UserName = 'Label10101'
        Caption = #1582#1585#1610#1583#1575#1585' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 184944
        mmTop = 35190
        mmWidth = 11007
        BandType = 0
      end
      object ppDBText104: TppDBText
        UserName = 'DBText2'
        DataField = 'CF_CUSTNAME'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 3969
        mmLeft = 141023
        mmTop = 35190
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText105: TppDBText
        UserName = 'DBText3'
        DataField = 'OFDATE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 3969
        mmLeft = 14552
        mmTop = 11377
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel286: TppLabel
        UserName = 'Label1014'
        Caption = #1606#1588#1575#1606#1610' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 186532
        mmTop = 42598
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel287: TppLabel
        UserName = 'Label10'
        Caption = #1603#1583#1575#1602#1578#1589#1575#1583#1610':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 35190
        mmWidth = 13229
        BandType = 0
      end
      object ppDBText106: TppDBText
        UserName = 'DBText4'
        DataField = 'ECONOMIC_CODE'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 3969
        mmLeft = 13229
        mmTop = 35190
        mmWidth = 41010
        BandType = 0
      end
      object ppDBText107: TppDBText
        UserName = 'DBText5'
        DataField = 'CUSTADD'
        DataPipeline = ppBDEPipelineTit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineTit'
        mmHeight = 3969
        mmLeft = 8996
        mmTop = 42598
        mmWidth = 174625
        BandType = 0
      end
      object ppLine136: TppLine
        UserName = 'Line102'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 47361
        mmWidth = 197379
        BandType = 0
      end
      object ppLabel288: TppLabel
        UserName = 'Label11'
        Caption = #1585#1583#1610#1601
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 190500
        mmTop = 50271
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel289: TppLabel
        UserName = 'Label12'
        Caption = #1588#1585#1581' '#1705#1575#1604#1575' / '#1582#1583#1605#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 50271
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel290: TppLabel
        UserName = 'Label13'
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 93398
        mmTop = 50271
        mmWidth = 5376
        BandType = 0
      end
      object ppLabel291: TppLabel
        UserName = 'Label16'
        Caption = #1601#1610' '#1608#1575#1581#1583' '#1601#1585#1608#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 50271
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel292: TppLabel
        UserName = 'Label17'
        Caption = #1580#1605#1593' ('#1585#1610#1575#1604')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 38629
        mmTop = 50271
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel293: TppLabel
        UserName = 'Label18'
        Caption = #1605#1604#1575#1581#1592#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 50271
        mmWidth = 10054
        BandType = 0
      end
      object ppLine137: TppLine
        UserName = 'Line106'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 187855
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
      object ppLine138: TppLine
        UserName = 'Line108'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 105834
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
      object ppLine139: TppLine
        UserName = 'Line112'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 86254
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
      object ppLine140: TppLine
        UserName = 'Line113'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 62177
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
      object ppLine141: TppLine
        UserName = 'Line114'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 28310
        mmTop = 47625
        mmWidth = 794
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine142: TppLine
        UserName = 'Line115'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine143: TppLine
        UserName = 'Line103'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 105834
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine144: TppLine
        UserName = 'Line119'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 86254
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine145: TppLine
        UserName = 'Line120'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 62177
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine146: TppLine
        UserName = 'Line121'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 28310
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine147: TppLine
        UserName = 'Line122'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText6'
        DataField = 'OFSEQ'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 188913
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText7'
        DataField = 'GDS_DESCF'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 109009
        mmTop = 794
        mmWidth = 78052
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText8'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 87577
        mmTop = 794
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText11'
        DataField = 'TOTCOST'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 29898
        mmTop = 794
        mmWidth = 31485
        BandType = 4
      end
      object ppLine148: TppLine
        UserName = 'Line123'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 6085
        mmWidth = 197379
        BandType = 4
      end
      object ppVariable6: TppVariable
        UserName = 'Variable1'
        CalcOrder = 0
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 63236
        mmTop = 1323
        mmWidth = 22754
        BandType = 4
      end
      object ppLine149: TppLine
        UserName = 'Line124'
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 196586
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 82021
      mmPrintPosition = 0
      object ppShape18: TppShape
        UserName = 'Shape17'
        mmHeight = 81492
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 7
      end
      object ppShape20: TppShape
        UserName = 'Shape18'
        mmHeight = 12435
        mmLeft = 28310
        mmTop = 43392
        mmWidth = 167482
        BandType = 7
      end
      object ppLabel294: TppLabel
        UserName = 'Label23'
        Caption = #1605#1581#1604' '#1605#1607#1585' '#1601#1585#1608#1588#1606#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 13229
        mmWidth = 20902
        BandType = 7
      end
      object ppLine150: TppLine
        UserName = 'Line131'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 162190
        mmTop = 18521
        mmWidth = 28840
        BandType = 7
      end
      object ppLabel295: TppLabel
        UserName = 'Label24'
        Caption = #1605#1587#1574#1608#1604' '#1601#1585#1608#1588': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 177102
        mmTop = 56092
        mmWidth = 18161
        BandType = 7
      end
      object ppLabel296: TppLabel
        UserName = 'Label25'
        Caption = ' '#1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578' '#1576#1581#1585#1608#1601' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 161661
        mmTop = 62442
        mmWidth = 33338
        BandType = 7
      end
      object ppLabel297: TppLabel
        UserName = 'Label20101'
        Caption = 'Label20101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 140229
        mmTop = 62442
        mmWidth = 18923
        BandType = 7
      end
      object ppLine151: TppLine
        UserName = 'Line133'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 60854
        mmWidth = 197379
        BandType = 7
      end
      object ppLine152: TppLine
        UserName = 'Line134'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 67733
        mmWidth = 197379
        BandType = 7
      end
      object ppLabel298: TppLabel
        UserName = 'Label171'
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 182563
        mmTop = 68792
        mmWidth = 13494
        BandType = 7
      end
      object ppLabel299: TppLabel
        UserName = 'Label188'
        Caption = #1576#1575#1586#1576#1610#1606' '#1603#1606#1606#1583#1607' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 102659
        mmTop = 68792
        mmWidth = 14817
        BandType = 7
      end
      object ppLabel300: TppLabel
        UserName = 'Label235'
        Caption = #1578#1575#1574#1610#1583' '#1603#1606#1606#1583#1607' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 55563
        mmTop = 68792
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel301: TppLabel
        UserName = 'Label236'
        Caption = #1605#1583#1610#1585' '#1587#1610#1587#1578#1605' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 176477
        mmTop = 74348
        mmWidth = 14552
        BandType = 7
      end
      object ppLabel302: TppLabel
        UserName = 'Label237'
        Caption = 'Label237'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 160338
        mmTop = 74348
        mmWidth = 15028
        BandType = 7
      end
      object ppLine153: TppLine
        UserName = 'Line135'
        Pen.Color = clGray
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 35454
        mmTop = 67733
        mmWidth = 1852
        BandType = 7
      end
      object ppLine154: TppLine
        UserName = 'Line136'
        Pen.Color = clGray
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 85725
        mmTop = 67998
        mmWidth = 1852
        BandType = 7
      end
      object ppLine155: TppLine
        UserName = 'Line137'
        Pen.Color = clGray
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 138642
        mmTop = 67998
        mmWidth = 1852
        BandType = 7
      end
      object ppLine156: TppLine
        UserName = 'Line138'
        Pen.Color = clGray
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 2117
        mmTop = 73025
        mmWidth = 33338
        BandType = 7
      end
      object ppLabel303: TppLabel
        UserName = 'Label19'
        Caption = #1580#1605#1593' '#1705#1575#1585#1578#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 529
        mmWidth = 12435
        BandType = 7
      end
      object ppLabel304: TppLabel
        UserName = 'Label238'
        Caption = #1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 81227
        mmTop = 34396
        mmWidth = 19844
        BandType = 7
      end
      object ppDBText112: TppDBText
        UserName = 'DBText14'
        OnGetText = ppDBText58GetText
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 33338
        mmWidth = 31485
        BandType = 7
      end
      object ppLine157: TppLine
        UserName = 'Line125'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 39688
        mmLeft = 28310
        mmTop = 529
        mmWidth = 794
        BandType = 7
      end
      object ppLine158: TppLine
        UserName = 'Line126'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 39688
        mmLeft = 62177
        mmTop = 529
        mmWidth = 794
        BandType = 7
      end
      object ppLine159: TppLine
        UserName = 'Line127'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28310
        mmTop = 7144
        mmWidth = 34131
        BandType = 7
      end
      object ppLine160: TppLine
        UserName = 'Line202'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28310
        mmTop = 14817
        mmWidth = 34131
        BandType = 7
      end
      object ppLine161: TppLine
        UserName = 'Line129'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28575
        mmTop = 23548
        mmWidth = 34131
        BandType = 7
      end
      object ppLine162: TppLine
        UserName = 'Line130'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28046
        mmTop = 31750
        mmWidth = 34131
        BandType = 7
      end
      object ppLine163: TppLine
        UserName = 'Line132'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 28310
        mmTop = 39952
        mmWidth = 34131
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'TOTCOST'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 1323
        mmWidth = 31485
        BandType = 7
      end
      object ppLabel305: TppLabel
        UserName = 'Label202'
        Caption = 'Label20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 161132
        mmTop = 56092
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'OFQTY'
        DataPipeline = ppBDEPipelineDet
        DisplayFormat = '#,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 4233
        mmLeft = 162984
        mmTop = 529
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel306: TppLabel
        UserName = 'Label14'
        Caption = #1578#1593#1583#1575#1583' / '#1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 20373
        mmWidth = 13494
        BandType = 7
      end
      object ppLabel307: TppLabel
        UserName = 'Label15'
        Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 20373
        mmWidth = 22490
        BandType = 7
      end
      object ppDBText113: TppDBText
        UserName = 'DBText9'
        DataField = 'FINALQTY'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 181769
        mmTop = 25400
        mmWidth = 13758
        BandType = 7
      end
      object ppDBText114: TppDBText
        UserName = 'DBText103'
        DataField = 'OFPRICE'
        DataPipeline = ppBDEPipelineDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPipelineDet'
        mmHeight = 3969
        mmLeft = 157957
        mmTop = 25400
        mmWidth = 21960
        BandType = 7
      end
      object ppLabel308: TppLabel
        UserName = 'Label20'
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 184150
        mmTop = 38100
        mmWidth = 11134
        BandType = 7
      end
      object ppLabel309: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'Label21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 12435
        mmLeft = 28310
        mmTop = 43392
        mmWidth = 167482
        BandType = 7
      end
      object ppLabel310: TppLabel
        UserName = 'Label203'
        Caption = #1578#1582#1601#1610#1601
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 8996
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel311: TppLabel
        UserName = 'Label2401'
        Caption = 'Label2401'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 8996
        mmWidth = 31485
        BandType = 7
      end
      object ppLabel312: TppLabel
        UserName = 'Label244'
        Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 17198
        mmWidth = 15346
        BandType = 7
      end
      object ppLabel313: TppLabel
        UserName = 'Label245'
        Caption = 'Label245'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 17198
        mmWidth = 31485
        BandType = 7
      end
    end
  end
end
