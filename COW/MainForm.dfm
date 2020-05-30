object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
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
        Left = 758
        Top = 3
        Width = 75
        Height = 25
        Caption = 'btnUpdateFilter'
        TabOrder = 3
        OnClick = btnUpdateFilterClick
      end
      object btnSearchCow: TButton
        Left = 839
        Top = 3
        Width = 75
        Height = 25
        Caption = 'btnSearchCow'
        TabOrder = 4
        OnClick = btnSearchCowClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Label3: TLabel
        Left = 344
        Top = 245
        Width = 69
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1050#1086#1088#1086#1074
      end
      object Label4: TLabel
        Left = 344
        Top = 301
        Width = 68
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1058#1105#1083#1086#1082
      end
      object mGrowCow: TMemo
        Left = 656
        Top = 22
        Width = 265
        Height = 403
        Lines.Strings = (
          'mGrowCow')
        TabOrder = 0
      end
      object btnUpDataGrow: TButton
        Left = 344
        Top = 368
        Width = 75
        Height = 25
        Caption = 'btnUpDataGrow'
        TabOrder = 1
        OnClick = btnUpDataGrowClick
      end
      object spiCow: TSpinEdit
        Left = 344
        Top = 264
        Width = 121
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
      object spiColf: TSpinEdit
        Left = 344
        Top = 320
        Width = 121
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 3
        Value = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 32
    Width = 305
    Height = 439
    TabOrder = 1
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
      Text = 'id_cow'
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
