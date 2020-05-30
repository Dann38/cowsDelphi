object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1059#1095#1105#1090' '#1050#1086#1088#1086#1074
  ClientHeight = 479
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 943
    Height = 479
    ActivePage = Добавление
    Align = alClient
    TabOrder = 0
    object Добавление: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
      object DBGrid1: TDBGrid
        Left = 344
        Top = 109
        Width = 577
        Height = 289
        DataSource = DataModule1.dsMainCow
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 528
        Top = 416
        Width = 240
        Height = 25
        DataSource = DataModule1.dsMainCow
        TabOrder = 1
      end
      object Filter: TRadioGroup
        Left = 344
        Top = 34
        Width = 569
        Height = 67
        Caption = 'Filter'
        Columns = 5
        TabOrder = 2
      end
      object btnUpdateFilter: TButton
        Left = 744
        Top = 3
        Width = 114
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1060#1080#1083#1100#1090#1088#1099
        TabOrder = 3
        OnClick = btnUpdateFilterClick
      end
      object btnSearchCow: TButton
        Left = 864
        Top = 3
        Width = 50
        Height = 25
        Caption = #1055#1086#1080#1089#1082
        TabOrder = 4
        OnClick = btnSearchCowClick
      end
      object Panel1: TPanel
        Left = 3
        Top = 3
        Width = 305
        Height = 439
        TabOrder = 5
        object Label1: TLabel
          Left = 16
          Top = 149
          Width = 53
          Height = 13
          Caption = 'ID '#1050#1086#1088#1086#1074#1099
        end
        object Label2: TLabel
          Left = 16
          Top = 101
          Width = 59
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1090#1105#1083#1072
        end
        object date_cow: TDateTimePicker
          Left = 16
          Top = 120
          Width = 186
          Height = 21
          Date = 43978.000000000000000000
          Time = 0.491404386571957700
          TabOrder = 0
        end
        object rgStatusCow: TRadioGroup
          Left = 16
          Top = 22
          Width = 256
          Height = 73
          Caption = #1057#1090#1072#1090#1091#1089
          TabOrder = 1
        end
        object id_cow: TEdit
          Left = 16
          Top = 168
          Width = 121
          Height = 21
          TabOrder = 2
          Text = '0'
        end
        object btnAppCow: TButton
          Left = 16
          Top = 208
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 3
          OnClick = btnAppCowClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1088#1086#1075#1085#1086#1079
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label3: TLabel
        Left = 32
        Top = 45
        Width = 69
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1050#1086#1088#1086#1074
      end
      object Label4: TLabel
        Left = 32
        Top = 92
        Width = 68
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1058#1105#1083#1086#1082
      end
      object mGrowCow: TMemo
        Left = 208
        Top = 22
        Width = 713
        Height = 403
        Lines.Strings = (
          'mGrowCow')
        TabOrder = 0
      end
      object btnUpDataGrow: TButton
        Left = 32
        Top = 152
        Width = 75
        Height = 25
        Caption = #1055#1088#1086#1075#1085#1086#1079
        TabOrder = 1
        OnClick = btnUpDataGrowClick
      end
      object spiCow: TSpinEdit
        Left = 32
        Top = 64
        Width = 121
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
      object spiColf: TSpinEdit
        Left = 32
        Top = 111
        Width = 121
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 3
        Value = 0
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 65528
    object N1: TMenuItem
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
      object N2: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1041#1044
        OnClick = N2Click
      end
    end
  end
end
