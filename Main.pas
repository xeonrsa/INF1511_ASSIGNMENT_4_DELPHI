unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Buttons, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    lblCounter: TLabel;
    edtDate: TEdit;
    gpbBreakfast: TGroupBox;
    gpbLunch: TGroupBox;
    gpbDinner: TGroupBox;
    seBreakfast: TSpinEdit;
    seLunch: TSpinEdit;
    seDinner: TSpinEdit;
    memReport: TMemo;
    btnTotalForToday: TButton;
    btnDisplaySummary: TButton;
    btnDisplayMiddayReport: TButton;
    btnDisplayWarning: TButton;
    btnGenerateRemark: TButton;
    bmbReset: TBitBtn;
    dtpDateToday: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnTotalForTodayClick(Sender: TObject);
    procedure btnGenerateRemarkClick(Sender: TObject);
    procedure btnDisplayMiddayReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnDisplayMiddayReportClick(Sender: TObject);
// Button to Display Midday report for BreakFast and Lunch Cals intake
// Declare required Vars
Var
  iBreakfastCals,iLunchCals,iTotalCals : Integer;
  sRemark : String;
begin
  // Assign Values to var
  iBreakfastCals := MainForm.seBreakfast.Value;
  iLunchCals := MainForm.seLunch.Value;
  iTotalCals := iBreakfastCals + iLunchCals;
  // Check to see if total cals is > 0 if not display msg say no intake insteak of showing 0 else show total cals
  If (iTotalCals > 0) Then Begin
    sRemark := 'Total thus far: ' + IntToStr(iTotalCals) + ' calories.';
  End Else Begin
    sRemark := 'No calories entered/consumed yet!';
  End;
  // Display result to User
  memReport.Lines.Add('Display Midday Report for:' + MainForm.edtDate.Text);
  memReport.Lines.Add(sRemark);
  memReport.Lines.Add('Always eat Healthy!');
  memReport.Lines.Add('*** End of Midday Report ***');
  memReport.Lines.Add(''); // Add Blank line after report
end;

procedure TMainForm.btnGenerateRemarkClick(Sender: TObject);
// Button to Generate a remark on Daily Cal intake
// Declare Vars needed
Var
  iBreakFast, iLunch, iDinner, iCount : Integer;
  sRemark    : String;
begin
  // Assign Values to Vars
  iCount     := 0;
  iBreakFast := MainForm.seBreakfast.Value;
  iLunch     := MainForm.seBreakfast.Value;
  iDinner    := MainForm.seBreakfast.Value;
  // Inc Counter for each meal time where cals > 0
  If (iBreakFast > 0) Then Inc(iCount,1);
  If (iLunch > 0)     Then Inc(iCount,1);
  If (iDinner > 0)    Then Inc(iCount,1);
  // Use counter in Case to see how many meal times cals consumed
  Case iCount of
    0 : sRemark := 'No calories consumed.';
    1 : sRemark := 'Be careful not to skip another meal.';
    2 : sRemark := 'Be careful not to skip another meal.';
    3 : sRemark := 'Daily entry complete!';
  End;
  // Display result to User
  memReport.Lines.Add('Generate Remark for:' + MainForm.edtDate.Text);
  memReport.Lines.Add(sRemark);
  memReport.Lines.Add('*** End of Remark ***');
  memReport.Lines.Add(''); // Add Blank line after report
end;

procedure TMainForm.btnTotalForTodayClick(Sender: TObject);
begin
  seBreakfast.Enabled := FALSE;
  seLunch.Enabled := FALSE;
  seDinner.Enabled := FALSE;
  btnDisplaySummary.Enabled := TRUE;
  btnGenerateRemark.Enabled := TRUE;
  btnDisplayWarning.Enabled := TRUE;
end;

procedure TMainForm.FormShow(Sender: TObject);
var
  dDate : TDate;
begin
  //set the date to the current date
  dDate := Date();
  edtDate.Text := DateToStr(dDate);
  edtDate.ReadOnly := TRUE;
  dtpDateToday.Date := Date();
end;

end.


