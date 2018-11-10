object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 338
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCounter: TLabel
    Left = 16
    Top = 8
    Width = 83
    Height = 23
    Caption = 'COUNTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtDate: TEdit
    Left = 16
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object gpbBreakfast: TGroupBox
    Left = 16
    Top = 97
    Width = 121
    Height = 57
    Caption = 'Breakfast'
    TabOrder = 1
    object seBreakfast: TSpinEdit
      Left = 23
      Top = 16
      Width = 60
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
  object gpbLunch: TGroupBox
    Left = 16
    Top = 154
    Width = 121
    Height = 57
    Caption = 'Lunch'
    TabOrder = 2
    object seLunch: TSpinEdit
      Left = 23
      Top = 21
      Width = 60
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
  object gpbDinner: TGroupBox
    Left = 16
    Top = 211
    Width = 121
    Height = 57
    Caption = 'Dinner'
    TabOrder = 3
    object seDinner: TSpinEdit
      Left = 23
      Top = 24
      Width = 60
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
  object memReport: TMemo
    Left = 144
    Top = 8
    Width = 249
    Height = 260
    TabOrder = 4
  end
  object btnTotalForToday: TButton
    Left = 8
    Top = 274
    Width = 100
    Height = 25
    Caption = 'Total for the Day'
    TabOrder = 5
    OnClick = btnTotalForTodayClick
  end
  object btnDisplaySummary: TButton
    Left = 8
    Top = 305
    Width = 100
    Height = 25
    Caption = 'Display Sumaary'
    Enabled = False
    TabOrder = 6
  end
  object btnDisplayMiddayReport: TButton
    Left = 150
    Top = 274
    Width = 100
    Height = 25
    Caption = 'Midday Report'
    TabOrder = 7
    OnClick = btnDisplayMiddayReportClick
  end
  object btnDisplayWarning: TButton
    Left = 150
    Top = 305
    Width = 100
    Height = 25
    Caption = 'Display Warning'
    Enabled = False
    TabOrder = 8
  end
  object btnGenerateRemark: TButton
    Left = 292
    Top = 274
    Width = 100
    Height = 25
    Caption = 'Generate Remark'
    Enabled = False
    TabOrder = 9
    OnClick = btnGenerateRemarkClick
  end
  object bmbReset: TBitBtn
    Left = 292
    Top = 305
    Width = 101
    Height = 25
    Caption = 'Reset'
    ModalResult = 1
    TabOrder = 10
  end
  object dtpDateToday: TDateTimePicker
    Left = 16
    Top = 70
    Width = 122
    Height = 21
    Date = 42450.930495937500000000
    Time = 42450.930495937500000000
    TabOrder = 11
  end
end
