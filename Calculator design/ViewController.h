//
//  ViewController.h
//  Calculator design
//
//  Created by Jassim on 08/02/15.
//  Copyright (c) 2015 Jassim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


//to change unit button names
@property (nonatomic, strong) NSString *firstButtonName;
@property (nonatomic, strong) NSString *secondButtonName;
@property (nonatomic, strong) NSString *thirdButtonName;
@property (nonatomic, strong) NSString *forthButtonName;
@property (nonatomic, strong) NSString *fifthButtonName;
@property (nonatomic, strong) NSString *sixthButtonName;
@property (nonatomic, strong) NSString *seventhButtonName;
@property (nonatomic, strong) NSString *eighthButtonName;

@property (nonatomic, strong) NSString *firstButtonNameLong;
@property (nonatomic, strong) NSString *secondButtonNameLong;
@property (nonatomic, strong) NSString *thirdButtonNameLong;
@property (nonatomic, strong) NSString *forthButtonNameLong;
@property (nonatomic, strong) NSString *fifthButtonNameLong;
@property (nonatomic, strong) NSString *sixthButtonNameLong;
@property (nonatomic, strong) NSString *seventhButtonNameLong;
@property (nonatomic, strong) NSString *eighthButtonNameLong;


//Var
@property (nonatomic) int currentPoint;
@property (strong, nonatomic) NSArray *types;




//Types View, hide after selecting the desired type
@property (weak, nonatomic) IBOutlet UIView *typesView;
@property (strong, nonatomic) IBOutlet UIView *unitesView;



//Numbered Buttons
- (IBAction)zeroButton:(UIButton *)sender;
- (IBAction)oneButton:(UIButton *)sender;
- (IBAction)twoButton:(UIButton *)sender;
- (IBAction)threeButton:(UIButton *)sender;
- (IBAction)fourButton:(UIButton *)sender;
- (IBAction)fiveButton:(UIButton *)sender;
- (IBAction)sixButton:(UIButton *)sender;
- (IBAction)sevenButton:(UIButton *)sender;
- (IBAction)eightButton:(UIButton *)sender;
- (IBAction)nineButton:(UIButton *)sender;

//Other Functions
- (IBAction)decimalButton:(UIButton *)sender;
- (IBAction)clearButton:(UIButton *)sender;
- (IBAction)backspaceButton:(UIButton *)sender;
- (IBAction)backButton:(UIButton *)sender;

- (IBAction)additionButton:(UIButton *)sender;
- (IBAction)deductionButton:(UIButton *)sender;
- (IBAction)multiplicationButton:(UIButton *)sender;
- (IBAction)divisionButton:(UIButton *)sender;

//Back Button outlet
@property (strong, nonatomic) IBOutlet UIButton *backButton;


//main types buttons
- (IBAction)massButton:(UIButton *)sender;
- (IBAction)lengthButton:(UIButton *)sender;
- (IBAction)tempButton:(UIButton *)sender;
- (IBAction)calanderButton:(UIButton *)sender;
- (IBAction)kitchenButton:(UIButton *)sender;

//& outlets
@property (strong, nonatomic) IBOutlet UIButton *massButton;
@property (strong, nonatomic) IBOutlet UIButton *lengthButton;
@property (strong, nonatomic) IBOutlet UIButton *tempButton;
@property (strong, nonatomic) IBOutlet UIButton *calanderButton;
@property (strong, nonatomic) IBOutlet UIButton *kitchenButton;


//units buttons
- (IBAction)unit1Button:(UIButton *)sender;
- (IBAction)unit2Button:(UIButton *)sender;
- (IBAction)unit3Button:(UIButton *)sender;
- (IBAction)unit4Button:(UIButton *)sender;
- (IBAction)unit5Button:(UIButton *)sender;
- (IBAction)unit6Button:(UIButton *)sender;
- (IBAction)unit7Button:(UIButton *)sender;
- (IBAction)unit8Button:(UIButton *)sender;


//& outlets
@property (strong, nonatomic) IBOutlet UIButton *unit1Button;
@property (strong, nonatomic) IBOutlet UIButton *unit2Button;
@property (strong, nonatomic) IBOutlet UIButton *unit3Button;
@property (strong, nonatomic) IBOutlet UIButton *unit4Button;
@property (strong, nonatomic) IBOutlet UIButton *unit5Button;
@property (strong, nonatomic) IBOutlet UIButton *unit6Button;
@property (strong, nonatomic) IBOutlet UIButton *unit7Button;
@property (strong, nonatomic) IBOutlet UIButton *unit8Button;




//Lablels:
//base type name label
@property (strong, nonatomic) IBOutlet UILabel *cuttentTypeNameLabel;

//info bar to show the calculation
@property (strong, nonatomic) IBOutlet UILabel *infoBarLabel;

//input
@property (strong, nonatomic) IBOutlet UILabel *inputUnit;
@property (strong, nonatomic) IBOutlet UILabel *inputUnitLong;

//output
@property (strong, nonatomic) IBOutlet UILabel *outputUnit;
@property (strong, nonatomic) IBOutlet UILabel *outputUnitLong;

@property (strong, nonatomic) IBOutlet UILabel *outputLabel;

//input Textfield
@property (strong, nonatomic) IBOutlet UITextField *inputTextField;


//Mass
@property (nonatomic) float mg;
@property (nonatomic) float gram;
@property (nonatomic) float kg;
@property (nonatomic) float lb;
@property (nonatomic) float oz;
//KG TO >
@property (nonatomic) float kgToKg;
@property (nonatomic) float kgToLb;
@property (nonatomic) float kgToOz;
@property (nonatomic) float kgToMg;
@property (nonatomic) float kgToGram;
@property (nonatomic) float kgToTon;
@property (nonatomic) float kgToStone;
@property (nonatomic) float kgTo;
//LB TO >
@property (nonatomic) float lbToKg;
@property (nonatomic) float lbToLb;
@property (nonatomic) float lbToOz;
@property (nonatomic) float lbToMg;
@property (nonatomic) float lbToGram;
@property (nonatomic) float lbToTon;
@property (nonatomic) float lbToStone;
@property (nonatomic) float lbTo;



//OZ TO >
@property (nonatomic) float ozToLb;
@property (nonatomic) float ozToKg;
@property (nonatomic) float ozToMg;
@property (nonatomic) float ozToGram;
@property (nonatomic) float ozToOz;
@property (nonatomic) float ozToTon;
@property (nonatomic) float ozToStone;
@property (nonatomic) float ozTo;

// MG TO >
@property (nonatomic) float mgToGram;
@property (nonatomic) float mgToMg;
@property (nonatomic) float mgToKg;
@property (nonatomic) float mgToLb;
@property (nonatomic) float mgToOz;
@property (nonatomic) float mgToTon;
@property (nonatomic) float mgToStone;
@property (nonatomic) float mgTo;


//GRAM TO >
@property (nonatomic) float gramToMg;
@property (nonatomic) float gramToKg;
@property (nonatomic) float gramToLb;
@property (nonatomic) float gramToOz;
@property (nonatomic) float gramToGram;
@property (nonatomic) float gramToTon;
@property (nonatomic) float gramToStone;
@property (nonatomic) float gramTo;

//TON TO >
@property (nonatomic) float tonToMg;
@property (nonatomic) float tonToKg;
@property (nonatomic) float tonToLb;
@property (nonatomic) float tonToOz;
@property (nonatomic) float tonToGram;
@property (nonatomic) float tonToTon;
@property (nonatomic) float tonToStone;
@property (nonatomic) float tonTo;


//STONE TO >
@property (nonatomic) float stoneToMg;
@property (nonatomic) float stoneToKg;
@property (nonatomic) float stoneToLb;
@property (nonatomic) float stoneToOz;
@property (nonatomic) float stoneToGram;
@property (nonatomic) float stoneToTon;
@property (nonatomic) float stoneToStone;
@property (nonatomic) float stoneTo;


//??? TO >
@property (nonatomic) float ToMg;
@property (nonatomic) float ToKg;
@property (nonatomic) float ToLb;
@property (nonatomic) float ToOz;
@property (nonatomic) float ToGram;
@property (nonatomic) float ToTon;
@property (nonatomic) float ToStone;
@property (nonatomic) float To;




//Length
@property (nonatomic) float cm;
@property (nonatomic) float meter;
@property (nonatomic) float km;
@property (nonatomic) float foot;
@property (nonatomic) float yard;
@property (nonatomic) float mile;
//METER TO >
@property (nonatomic) float meterToCm;
@property (nonatomic) float meterToKm;
@property (nonatomic) float meterToFoot;
@property (nonatomic) float meterToYard;
@property (nonatomic) float meterToMile;
//FOOT TO >
@property (nonatomic) float footToCm;
@property (nonatomic) float footToKm;
@property (nonatomic) float footTometer;
@property (nonatomic) float footToYard;
@property (nonatomic) float footToMile;
//YARD TO >
@property (nonatomic) float yardToCm;
@property (nonatomic) float yardToKm;
@property (nonatomic) float yardTometer;
@property (nonatomic) float yardToFoot;
@property (nonatomic) float yardToMile;
//MILE TO >
@property (nonatomic) float mileToCm;
@property (nonatomic) float mileToKm;
@property (nonatomic) float mileToMeter;
@property (nonatomic) float mileToFoot;
@property (nonatomic) float mileToYard;
//CM TO >
@property (nonatomic) float cmToMeter;
@property (nonatomic) float cmToKm;
@property (nonatomic) float cmToFoot;
@property (nonatomic) float cmToYard;
@property (nonatomic) float cmToMile;
//KM TO >
@property (nonatomic) float kmToCm;
@property (nonatomic) float kmToMeter;
@property (nonatomic) float kmToFoot;
@property (nonatomic) float kmToYard;
@property (nonatomic) float kmToMile;



//Weather
@property (nonatomic) float celcius;
@property (nonatomic) float fahren;
@property (nonatomic) float kelvin;
//C TO >
@property (nonatomic) float cToC;
@property (nonatomic) float cToF;
@property (nonatomic) float cToK;
//F TO >
@property (nonatomic) float fToC;
@property (nonatomic) float fToF;
@property (nonatomic) float fToK;
//K TO >
@property (nonatomic) float kToC;
@property (nonatomic) float kToF;
@property (nonatomic) float kToK;

//Calander
@property (nonatomic) float days;
@property (nonatomic) float weeks;
@property (nonatomic) float months;
@property (nonatomic) float years;

//SECONDS
@property (nonatomic) float secondsToSeconds;
@property (nonatomic) float secondsToMinutes;
@property (nonatomic) float secondsToHours;
@property (nonatomic) float secondsToDays;
@property (nonatomic) float secondsToWeeks;
@property (nonatomic) float secondsToMonths;
@property (nonatomic) float secondsToYears;

//MINUTES
@property (nonatomic) float minutesToSeconds;
@property (nonatomic) float minutesToMinutes;
@property (nonatomic) float minutesToHours;
@property (nonatomic) float minutesToDays;
@property (nonatomic) float minutesToWeeks;
@property (nonatomic) float minutesToMonths;
@property (nonatomic) float minutesToYears;

//HOURS
@property (nonatomic) float hoursToSeconds;
@property (nonatomic) float hoursToMinutes;
@property (nonatomic) float hoursToHours;
@property (nonatomic) float hoursToDays;
@property (nonatomic) float hoursToWeeks;
@property (nonatomic) float hoursToMonths;
@property (nonatomic) float hoursToYears;

//DAYS TO >
@property (nonatomic) float daysToWeeks;
@property (nonatomic) float daysToMonths;
@property (nonatomic) float daysToYears;
@property (nonatomic) float daysToDays;
@property (nonatomic) float daysToSeconds;
@property (nonatomic) float daysToMinutes;
@property (nonatomic) float daysToHours;
//WEEKS TO >
@property (nonatomic) float weeksToDays;
@property (nonatomic) float weeksToMonths;
@property (nonatomic) float weeksToYears;
@property (nonatomic) float weeksToWeeks;
@property (nonatomic) float weeksToSeconds;
@property (nonatomic) float weeksToMinutes;
@property (nonatomic) float weeksToHours;
//MONTHS TO >
@property (nonatomic) float monthsToDays;
@property (nonatomic) float monthsToWeeks;
@property (nonatomic) float monthsToMonths;
@property (nonatomic) float monthsToYears;
@property (nonatomic) float monthsToSeconds;
@property (nonatomic) float monthsToMinutes;
@property (nonatomic) float monthsToHours;

//YEARS TO >
@property (nonatomic) float yearsToDays;
@property (nonatomic) float yearsToWeeks;
@property (nonatomic) float yearsToMonths;
@property (nonatomic) float yearsToYears;
@property (nonatomic) float yearsToSeconds;
@property (nonatomic) float yearsToMinutes;
@property (nonatomic) float yearsToHours;



@end

