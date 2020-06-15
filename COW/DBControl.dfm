object BDCow: TBDCow
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072' '#1044#1072#1085#1085#1099#1093
  ClientHeight = 373
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pages: TPageControl
    Left = 0
    Top = 0
    Width = 708
    Height = 373
    ActivePage = Cow
    Align = alClient
    TabOrder = 0
    object Cow: TTabSheet
      Caption = #1050#1086#1088#1086#1074#1099
      ExplicitWidth = 699
      object Splitter1: TSplitter
        Left = 305
        Top = 0
        Height = 345
        ExplicitLeft = 304
        ExplicitTop = 112
        ExplicitHeight = 100
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 345
        Align = alLeft
        Caption = 'Panel1'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 303
          Height = 318
          Align = alBottom
          DataSource = DataModule1.dsCow
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 319
          Width = 303
          Height = 25
          DataSource = DataModule1.dsCow
          Align = alBottom
          TabOrder = 1
          ExplicitWidth = 343
        end
      end
      object Panel2: TPanel
        Left = 308
        Top = 0
        Width = 392
        Height = 345
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        ExplicitLeft = 348
        ExplicitWidth = 351
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 121
          Width = 390
          Height = 25
          DataSource = DataModule1.dsFeatureCow
          Align = alTop
          TabOrder = 0
          ExplicitTop = 319
          ExplicitWidth = 349
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 390
          Height = 120
          Align = alTop
          DataSource = DataModule1.dsFeatureCow
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'id_feature'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'feature'
              Visible = True
            end>
        end
        object edImage: TDBImage
          Left = 3
          Top = 152
          Width = 342
          Height = 185
          DataField = 'image'
          DataSource = DataModule1.dsImageCow
          PopupMenu = pmImage
          Proportional = True
          Stretch = True
          TabOrder = 2
        end
      end
    end
    object Other: TTabSheet
      Caption = #1055#1088#1080#1079#1085#1072#1082#1080
      ImageIndex = 1
      ExplicitWidth = 699
      object DBNavigator3: TDBNavigator
        Left = 24
        Top = 142
        Width = 240
        Height = 25
        DataSource = DataModule1.dsStatus
        TabOrder = 0
      end
      object DBGrid3: TDBGrid
        Left = 3
        Top = 16
        Width = 320
        Height = 120
        DataSource = DataModule1.dsStatus
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBGrid5: TDBGrid
        Left = 352
        Top = 16
        Width = 320
        Height = 120
        DataSource = DataModule1.dsFeature
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator5: TDBNavigator
        Left = 384
        Top = 142
        Width = 240
        Height = 25
        DataSource = DataModule1.dsFeature
        TabOrder = 3
      end
    end
    object History: TTabSheet
      Caption = #1047#1072#1084#1077#1090#1082#1080
      ImageIndex = 2
      ExplicitWidth = 699
      object DBNavigator4: TDBNavigator
        Left = 43
        Top = 317
        Width = 240
        Height = 25
        DataSource = DataModule1.dsHistory
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 352
        Top = 3
        Width = 338
        Height = 339
        DataField = 'info'
        DataSource = DataModule1.dsHistory
        TabOrder = 1
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 3
        Width = 334
        Height = 308
        DataSource = DataModule1.dsHistory
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Colving: TTabSheet
      Caption = #1054#1090#1105#1083
      ImageIndex = 3
      ExplicitWidth = 699
      object DBNavigator6: TDBNavigator
        Left = 216
        Top = 304
        Width = 240
        Height = 25
        DataSource = DataModule1.dsColving
        TabOrder = 0
      end
      object DBGrid6: TDBGrid
        Left = 3
        Top = 0
        Width = 693
        Height = 298
        DataSource = DataModule1.dsColving
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tsImage: TTabSheet
      Caption = #1060#1086#1090#1086
      ImageIndex = 4
      ExplicitWidth = 699
      object DBGrid7: TDBGrid
        Left = 3
        Top = 3
        Width = 230
        Height = 286
        DataSource = DataModule1.dsImage
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object edImage2: TDBImage
        Left = 255
        Top = 3
        Width = 441
        Height = 286
        DataField = 'image'
        DataSource = DataModule1.dsImage
        PopupMenu = pmImage2
        Proportional = True
        Stretch = True
        TabOrder = 1
      end
      object DBNavigator7: TDBNavigator
        Left = 248
        Top = 304
        Width = 240
        Height = 25
        DataSource = DataModule1.dsImage
        TabOrder = 2
      end
    end
  end
  object pmImage: TPopupMenu
    Left = 352
    Top = 65528
    object iInsertImage: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      OnClick = iInsertImageClick
    end
    object iOpenImage: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100
      OnClick = iOpenImageClick
    end
  end
  object odImage: TOpenPictureDialog
    Left = 312
    Top = 65528
  end
  object pmImage2: TPopupMenu
    Left = 616
    object imInsert: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      OnClick = imInsertClick
    end
    object imOpenImage: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100
      OnClick = imOpenImageClick
    end
  end
  object odImage2: TOpenPictureDialog
    Left = 660
  end
end
