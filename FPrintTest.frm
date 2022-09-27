VERSION 5.00
Begin VB.Form FPrintTest 
   Caption         =   "Print Code Test"
   ClientHeight    =   1650
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   1650
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CPrintDeXtop 
      Caption         =   "Print DeXtop"
      Height          =   540
      Left            =   2640
      TabIndex        =   1
      Top             =   450
      Width           =   1575
   End
   Begin VB.CommandButton CPrintAll 
      Caption         =   "Print Alpha-Numerics"
      Height          =   540
      Left            =   615
      TabIndex        =   0
      Top             =   450
      Width           =   1575
   End
End
Attribute VB_Name = "FPrintTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CPrintAll_Click()
Dim r As Long
     Open "LPT1:" For Output As #1
    r = 0
    While r < 256
        Print #1, Chr(27) & "!" & Chr(r) & "abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890" & Chr(0)
        r = r + 1
    Wend
    Close #1
End Sub
Private Sub CPrintDeXtop_Click()
Dim r As Long
    Open "LPT1:" For Output As #1
    r = 0
    While r < 256
        Print #1, Chr(27) & "!" & Chr(r) & " DEXTOP " & r & Chr(0) & Chr(27) & "!" & Chr(r + 1) & " DEXTOP " & r + 1 & Chr(0) & Chr(27) & "!" & Chr(r + 2) & " DEXTOP " & r + 2 & Chr(0) & Chr(27) & "!" & Chr(r + 3) & " DEXTOP " & r + 3 & Chr(0) & Chr(27) & "!" & Chr(r + 4) & " DEXTOP " & r + 4 & Chr(0) & Chr(27) & "!" & Chr(r + 5) & " DEXTOP " & r + 5 & Chr(0) & Chr(27) & "!" & Chr(r + 6) & " DEXTOP " & r + 6 & Chr(0) & Chr(27) & "!" & Chr(r + 7) & " DEXTOP " & r + 7 & Chr(0)
        r = r + 8
    Wend
    Close #1
End Sub
