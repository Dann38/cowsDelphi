object BDCow: TBDCow
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072' '#1044#1072#1085#1085#1099#1093
  ClientHeight = 373
  ClientWidth = 707
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
    Width = 707
    Height = 373
    ActivePage = Cow
    Align = alClient
    TabOrder = 0
    object Cow: TTabSheet
      Caption = 'Cow'
      object Splitter1: TSplitter
        Left = 345
        Top = 0
        Height = 345
        ExplicitLeft = 304
        ExplicitTop = 112
        ExplicitHeight = 100
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 345
        Height = 345
        Align = alLeft
        Caption = 'Panel1'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 343
          Height = 318
          Align = alClient
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
          Width = 343
          Height = 25
          DataSource = DataModule1.dsCow
          Align = alBottom
          TabOrder = 1
        end
      end
      object Panel2: TPanel
        Left = 348
        Top = 0
        Width = 351
        Height = 345
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 121
          Width = 349
          Height = 25
          DataSource = DataModule1.dsFeatureCow
          Align = alTop
          TabOrder = 0
          ExplicitTop = 319
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 349
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
          Width = 343
          Height = 185
          DataField = 'image'
          DataSource = DataModule1.dsImageCow
          PopupMenu = pmImage
          TabOrder = 2
        end
      end
    end
    object Other: TTabSheet
      Caption = 'Other'
      ImageIndex = 1
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
      Caption = 'History'
      ImageIndex = 2
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
      Caption = 'Colving'
      ImageIndex = 3
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
      Caption = 'Image'
      ImageIndex = 4
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
        PopupMenu = pmImage
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
end
