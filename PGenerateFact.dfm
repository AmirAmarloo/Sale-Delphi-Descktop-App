object frmPGenerateFact: TfrmPGenerateFact
  Left = 137
  Top = 50
  Width = 1035
  Height = 588
  BiDiMode = bdRightToLeft
  Caption = #1589#1583#1608#1585' '#1711#1585#1608#1607#1610' '#1601#1575#1705#1578#1608#1585
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 307
    Width = 1019
    Height = 8
    Cursor = crVSplit
    Align = alBottom
  end
  object pnFilter: TPanel
    Left = 0
    Top = 0
    Width = 1019
    Height = 46
    Align = alTop
    TabOrder = 0
    OnExit = pnFilterExit
    DesignSize = (
      1019
      46)
    object Label1: TLabel
      Left = 336
      Top = 18
      Width = 79
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587
    end
    object Label2: TLabel
      Left = 947
      Top = 16
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
    end
    object Label3: TLabel
      Left = 1142
      Top = 16
      Width = 17
      Height = 13
      Caption = #1575#1606#1576#1575#1585
      Visible = False
    end
    object sbCustNo: TSpeedButton
      Left = 574
      Top = 11
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
      Visible = False
    end
    object edOfNum: TEdit
      Left = -4
      Top = 14
      Width = 89
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      Visible = False
    end
    object rbOfnum: TRadioButton
      Left = -124
      Top = 12
      Width = 65
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1578#1575' '#1588#1605#1575#1585#1607
      Checked = True
      TabOrder = 2
      TabStop = True
      Visible = False
      OnClick = rbOfnumClick
    end
    object rbOfDate: TRadioButton
      Left = -64
      Top = 13
      Width = 57
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1578#1575' '#1578#1575#1585#1610#1582
      TabOrder = 3
      Visible = False
      OnClick = rbOfDateClick
    end
    object edOfDate: TMaskEdit
      Left = 860
      Top = 12
      Width = 84
      Height = 21
      Anchors = [akTop, akRight]
      EditMask = '!9999/99/99;0;_'
      MaxLength = 10
      TabOrder = 0
      OnExit = edOfDateExit
    end
    object cbField: TComboBox
      Left = 188
      Top = 14
      Width = 145
      Height = 21
      Anchors = [akTop, akRight]
      ItemHeight = 13
      TabOrder = 4
      TabStop = False
    end
    object edValue: TEdit
      Left = 88
      Top = 14
      Width = 97
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      TabOrder = 5
      OnChange = edValueChange
    end
    object Button2: TButton
      Left = 32
      Top = 12
      Width = 161
      Height = 25
      Caption = #1576#1607' '#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1578#1585#1578#1610#1576' '#1607#1575
      TabOrder = 6
      OnClick = Button2Click
    end
    object chbDir: TCheckBox
      Left = 728
      Top = 16
      Width = 97
      Height = 17
      Caption = #1576#1585' '#1575#1587#1575#1587' '#1605#1587#1610#1585
      TabOrder = 7
    end
    object cbOtherSTK: TCheckBox
      Left = -8
      Top = 8
      Width = 65
      Height = 17
      Caption = #1605#1608#1575#1583' '#1575#1608#1604#1610#1607
      TabOrder = 8
      Visible = False
    end
    object Edit1: TEdit
      Left = 1088
      Top = 12
      Width = 49
      Height = 21
      TabOrder = 9
      Visible = False
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 536
      Top = 12
      Width = 166
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 10
      Visible = False
    end
  end
  object panButton: TPanel
    Left = 0
    Top = 497
    Width = 1019
    Height = 52
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      1019
      52)
    object stbMain: TStatusBar
      Left = 1
      Top = 32
      Width = 1017
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
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#1576#1607' '#1578#1585#1578#1610#1576' :'
    end
    object BtnPost: TBitBtn
      Left = 829
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1574#1610#1583
      TabOrder = 0
      OnClick = BtnPostClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE08FC0913B8D3F25
        7A292577293B853F8FB991E0EBE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB5D9B7318F3542A05287CA9A9BD3AB9BD2AB83C7963D974C307C34B5D0
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA258F2A6DBE83A8DBB587CC9866
        BC7D64BA7C86CB98A5D9B466B77D247227B5D1B6FFFFFFFFFFFFFFFFFFE1F2E4
        33A14472C287A8DBB260BC775CBA7359B87059B56F58B56F5BB774A5D9B369B8
        7F317F35E1ECE1FFFFFFFFFFFF90D29F4CB064AADDB464C1795FBE7175C585D4
        ECD98ACD9956B66C58B56E5CB774A6DAB4419B4E8EBC90FFFFFFFFFFFF3FB55D
        91D29F8DD49A64C37479C987F2FAF4FFFFFFFDFEFD86CB9657B76D5BB97285CC
        9787C79A3B8B3FFFFFFFFFFFFF27B049A6DCAF70CA7F73CA80F0F9F1FFFFFFEB
        F7EDFFFFFFFBFDFC88CD965BB97167BE7DA0D7AF237F26FFFFFFFFFFFF2EB751
        A7DDB172CC8066C773B0E1B7D2EED663C170B8E3BFFFFFFFFBFDFC8CD09969C1
        7EA1D7AE238426FFFFFFFFFFFF4BC56C95D7A191D79B69C97664C66F61C46E61
        C36F61C26FB9E4C0FFFFFFE3F4E68BD1998BCE9D3C993FFFFFFFFFFFFF9BDFAD
        57BF70AFE1B76DCC7A68C87265C77063C56E62C46E63C471B6E3BE6FC77EACDF
        B548A95E8FC894FFFFFFFFFFFFE5F7E949C5667FCE90AEE1B56DCC7A6ACA7668
        C87268C87468C8756BC979ACDFB476C48933A142E1F1E3FFFFFFFFFFFFFFFFFF
        BFECCB3DC35C7FCE90AFE1B792D89D77CE8377CE8392D89DAEE1B578C88B27A1
        3BB5DFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0EDCB4AC86959C27496D7A3A5
        DCAEA5DCAE95D6A150B96A35B355B6E3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE5F8E99FE3B055CB723BC05C37BE5A49C36A97DCAAE1F5E7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object SpdBtnExit: TBitBtn
      Left = 749
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1582#1585#1608#1580
      TabOrder = 2
      OnClick = SpdBtnExitClick
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
    end
    object Button1: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
      Visible = False
      OnClick = Button1Click
    end
  end
  object pnOrder: TPanel
    Left = 0
    Top = 340
    Width = 1019
    Height = 157
    Align = alBottom
    TabOrder = 2
    Visible = False
    object Splitter2: TSplitter
      Left = 517
      Top = 1
      Width = 6
      Height = 155
    end
    object dbgrSummery: TDBGrid
      Left = 523
      Top = 1
      Width = 495
      Height = 155
      Align = alClient
      DataSource = DM_IntSales.dsSummery
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnCellClick = dbgrSummeryCellClick
      OnDrawColumnCell = dbgrSummeryDrawColumnCell
      OnDblClick = dbgrPGenerateFactDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ORDER_CODE'
          Title.Alignment = taCenter
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OFQTY'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GDS_WEIGHT'
          Title.Alignment = taCenter
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOXQTY'
          Title.Alignment = taCenter
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTBOX_VOLUME'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CF_OFCOUNT'
          Title.Alignment = taCenter
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CF_GRPNAME'
          Title.Alignment = taCenter
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CF_DIRNAME'
          Title.Alignment = taCenter
          Width = 84
          Visible = True
        end>
    end
    object dbgrTrans: TDBGrid
      Left = 1
      Top = 1
      Width = 516
      Height = 155
      Align = alLeft
      DataSource = DM_IntSales.dsTrnas
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrTransCellClick
      OnDrawColumnCell = dbgrTransDrawColumnCell
      OnEditButtonClick = dbgrTransEditButtonClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ORDER_CODE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'T_CODE'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CF_TRANSNAME'
          Title.Alignment = taCenter
          Width = 152
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CF_WCAP'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CF_VCAP'
          Title.Alignment = taCenter
          Width = 76
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 315
    Width = 1019
    Height = 25
    Align = alBottom
    TabOrder = 3
  end
  object dbgrPGenerateFact: TDBGrid
    Left = 0
    Top = 46
    Width = 1019
    Height = 261
    Align = alClient
    DataSource = DM_IntSales.dsPGenerateFact
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgrPGenerateFactDrawColumnCell
    OnDblClick = dbgrPGenerateFactDblClick
    OnTitleClick = dbgrPGenerateFactTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'GDS_CODE'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNT_DESC'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFQTY'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OFPRICE'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GDS_DESCF'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 321
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STK_NAME'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ON_QTY'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DR_CODE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTTYPE_CODE'
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clMenuBar
        Expanded = False
        FieldName = 'ORDER_CODE'
        Title.Alignment = taCenter
        Width = 89
        Visible = True
      end>
  end
end
