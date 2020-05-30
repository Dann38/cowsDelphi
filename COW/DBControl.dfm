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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 707
    Height = 373
    ActivePage = Colving
    Align = alClient
    TabOrder = 0
    object Cow: TTabSheet
      Caption = 'Cow'
      ExplicitWidth = 693
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
          ExplicitLeft = 0
          ExplicitTop = 325
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
        ExplicitLeft = 350
        ExplicitWidth = 345
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 319
          Width = 349
          Height = 25
          DataSource = DataModule1.dsFeatureCow
          Align = alBottom
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 313
          ExplicitWidth = 343
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 349
          Height = 318
          Align = alClient
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
      end
    end
    object Other: TTabSheet
      Caption = 'Other'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 28
      ExplicitWidth = 693
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
      ExplicitWidth = 693
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
  end
end
