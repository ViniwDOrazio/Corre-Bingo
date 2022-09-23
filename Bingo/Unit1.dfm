object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Bingo IOB'
  ClientHeight = 676
  ClientWidth = 1097
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gpnlBolas: TGridPanel
    AlignWithMargins = True
    Left = 0
    Top = 4
    Width = 1097
    Height = 672
    Margins.Left = 0
    Margins.Top = 4
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ColumnCollection = <
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666660000
      end
      item
        Value = 16.666666666666660000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = pnlB
        Row = 0
      end
      item
        Column = 2
        Control = pnlI
        Row = 0
      end
      item
        Column = 3
        Control = pnlN
        Row = 0
      end
      item
        Column = 4
        Control = pnlG
        Row = 0
      end
      item
        Column = 5
        Control = pnlO
        Row = 0
      end
      item
        Column = 1
        Control = pnlColunaB
        Row = 1
      end
      item
        Column = 2
        Control = pnlColunaI
        Row = 1
      end
      item
        Column = 3
        Control = pnlColunaN
        Row = 1
      end
      item
        Column = 4
        Control = pnlColunaG
        Row = 1
      end
      item
        Column = 5
        Control = pnlColunaO
        Row = 1
      end
      item
        Column = 0
        Control = pnlEscreve
        Row = 0
      end
      item
        Column = 0
        Control = pnlSorteados
        Row = 1
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 90.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    object pnlB: TPanel
      Tag = -1
      AlignWithMargins = True
      Left = 186
      Top = 4
      Width = 174
      Height = 82
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Caption = 'B'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object pnlI: TPanel
      Tag = -1
      AlignWithMargins = True
      Left = 368
      Top = 4
      Width = 174
      Height = 82
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Caption = 'I'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object pnlN: TPanel
      Tag = -1
      AlignWithMargins = True
      Left = 550
      Top = 4
      Width = 174
      Height = 82
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Caption = 'N'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object pnlG: TPanel
      Tag = -1
      AlignWithMargins = True
      Left = 732
      Top = 4
      Width = 174
      Height = 82
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Caption = 'G'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
    object pnlO: TPanel
      Tag = -1
      AlignWithMargins = True
      Left = 914
      Top = 4
      Width = 179
      Height = 82
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Caption = 'O'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
    object pnlColunaB: TPanel
      AlignWithMargins = True
      Left = 186
      Top = 94
      Width = 174
      Height = 574
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 5
      OnResize = pnlColunaBResize
    end
    object pnlColunaI: TPanel
      Tag = 1
      AlignWithMargins = True
      Left = 368
      Top = 94
      Width = 174
      Height = 574
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 6
      OnResize = pnlColunaBResize
    end
    object pnlColunaN: TPanel
      Tag = 2
      AlignWithMargins = True
      Left = 550
      Top = 94
      Width = 174
      Height = 574
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 7
      OnResize = pnlColunaBResize
    end
    object pnlColunaG: TPanel
      Tag = 3
      AlignWithMargins = True
      Left = 732
      Top = 94
      Width = 174
      Height = 574
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 8
      OnResize = pnlColunaBResize
    end
    object pnlColunaO: TPanel
      Tag = 4
      AlignWithMargins = True
      Left = 914
      Top = 94
      Width = 179
      Height = 574
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 9
      OnResize = pnlColunaBResize
    end
    object pnlEscreve: TPanel
      Tag = -1
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 174
      Height = 82
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 10
      object btnRegistra: TSpeedButton
        Left = 0
        Top = 21
        Width = 174
        Height = 22
        Align = alTop
        Caption = 'Registrar'
        OnClick = btnRegistraClick
        ExplicitLeft = 1
      end
      object edtBola: TEdit
        Left = 0
        Top = 0
        Width = 174
        Height = 21
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edtBolaKeyPress
      end
    end
    object pnlSorteados: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 94
      Width = 174
      Height = 574
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 11
      object btnLimpar: TSpeedButton
        Left = 0
        Top = 552
        Width = 174
        Height = 22
        Align = alBottom
        Caption = 'Limpar Sorteadas'
        OnClick = btnLimparClick
        ExplicitLeft = 1
        ExplicitTop = 21
      end
      object pnlSorteada: TPanel
        Left = 0
        Top = 37
        Width = 174
        Height = 169
        Align = alTop
        BevelOuter = bvNone
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -96
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object shpBola: TShape
          Left = 0
          Top = 0
          Width = 174
          Height = 169
          Align = alClient
          Shape = stCircle
          ExplicitLeft = 72
          ExplicitTop = 56
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object lblSorteada: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 20
          Width = 168
          Height = 129
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alClient
          Alignment = taCenter
          ExplicitWidth = 30
          ExplicitHeight = 116
        end
      end
      object mmoSorteados: TMemo
        Left = 0
        Top = 231
        Width = 174
        Height = 321
        TabStop = False
        Align = alClient
        ReadOnly = True
        TabOrder = 1
      end
      object pnlBolaDaVez: TPanel
        Tag = -1
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 166
        Height = 29
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Bola da Sorte'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
      object pnlBolaDaVez1: TPanel
        Tag = -1
        AlignWithMargins = True
        Left = 4
        Top = 210
        Width = 166
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        Caption = #218'ltimas Sorteadas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
      end
    end
  end
end
