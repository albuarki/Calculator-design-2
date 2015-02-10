//
//  ViewController.m
//  Calculator design
//
//  Created by Jassism on 08/02/15.
//  Copyright (c) 2015 Jassim. All rights reserved.
//

#import "ViewController.h"
#import "JBType.h"
#import "JBFactory.h"

@interface ViewController ()


@end

@implementation ViewController


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Hide Keyboard
    UIView *dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.inputTextField.inputView = dummyView;
    [self.inputTextField becomeFirstResponder];
    
    self.currentPoint = 0;

    self.backButton.hidden = YES;
    
    
    //intiate an instance from JBFactory and call it factory.
    //then create a variable "self.types" to hold the method called from factory "types"
    //maybe we can create updateLogic in factory and call it in ViewController the same way we called types
    
    JBFactory *factory = [[JBFactory alloc]init];
    self.types = [factory types];
    [self updateTypes];

    
}

-(void)updateTypes
{
    JBType *typeModel = [self.types objectAtIndex:self.currentPoint];
    
    //Call button names from JBFactory
    
    
    self.firstButtonName = typeModel.unit1ButtonName;
    self.secondButtonName = typeModel.unit2ButtonName;
    self.thirdButtonName = typeModel.unit3ButtonName;
    self.forthButtonName = typeModel.unit4ButtonName;
    self.fifthButtonName = typeModel.unit5ButtonName;
    self.sixthButtonName = typeModel.unit6ButtonName;
    self.seventhButtonName = typeModel.unit7ButtonName;
    self.eighthButtonName = typeModel.unit8ButtonName;
    
    self.firstButtonNameLong = typeModel.unit1ButtonNameLong;
    self.secondButtonNameLong = typeModel.unit2ButtonNameLong;
    self.thirdButtonNameLong = typeModel.unit3ButtonNameLong;
    self.forthButtonNameLong = typeModel.unit4ButtonNameLong;
    self.fifthButtonNameLong = typeModel.unit5ButtonNameLong;
    self.sixthButtonNameLong = typeModel.unit6ButtonNameLong;
    self.seventhButtonNameLong = typeModel.unit7ButtonNameLong;
    self.eighthButtonNameLong = typeModel.unit8ButtonNameLong;
    
    
    
    
    //Change Units Button Names
    
    if ([self.unit1Button isKindOfClass:[UIButton class]])
    {
        [self.unit1Button setTitle:typeModel.unit1ButtonName forState:UIControlStateNormal];
        
        if ([self.unit2Button isKindOfClass:[UIButton class]])
        {
            [self.unit2Button setTitle:typeModel.unit2ButtonName forState:UIControlStateNormal];
        }
        if ([self.unit3Button isKindOfClass:[UIButton class]])
        {
            [self.unit3Button setTitle:typeModel.unit3ButtonName forState:UIControlStateNormal];
        }
        if ([self.unit4Button isKindOfClass:[UIButton class]])
        {
            [self.unit4Button setTitle:typeModel.unit4ButtonName forState:UIControlStateNormal];
        }
        if ([self.unit5Button isKindOfClass:[UIButton class]])
        {
            [self.unit5Button setTitle:typeModel.unit5ButtonName forState:UIControlStateNormal];
        }
        if ([self.unit6Button isKindOfClass:[UIButton class]])
        {
            [self.unit6Button setTitle:typeModel.unit6ButtonName forState:UIControlStateNormal];
        }
        if ([self.unit7Button isKindOfClass:[UIButton class]])
        {
            [self.unit7Button setTitle:typeModel.unit7ButtonName forState:UIControlStateNormal];
        }
        if ([self.unit8Button isKindOfClass:[UIButton class]])
        {
            [self.unit8Button setTitle:typeModel.unit8ButtonName forState:UIControlStateNormal];
        }
    }
    
}





- (IBAction)zeroButton:(UIButton *)sender
{
    if ([self.inputTextField.text isEqualToString:@"0"])
    {}
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"%@0", self.inputTextField.text];
        
    }
    [self updateLogic];

}
- (IBAction)oneButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@1", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"1"];
    }
    [self updateLogic];
}
- (IBAction)twoButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@2", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"2"];
        
    }
    [self updateLogic];

}

- (IBAction)threeButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@3", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"3"];
    }
    [self updateLogic];

}

- (IBAction)fourButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@4", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"4"];
    }
    [self updateLogic];
}

- (IBAction)fiveButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@5", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"5"];
    }
    [self updateLogic];
}

- (IBAction)sixButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@6", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"6"];
    }
    [self updateLogic];
}

- (IBAction)sevenButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@7", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"7"];
    }
    [self updateLogic];
}

- (IBAction)eightButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@8", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"8"];
    }
    [self updateLogic];
}

- (IBAction)nineButton:(UIButton *)sender
{
    if (![self.inputTextField.text isEqualToString:@"0"]) {
        self.inputTextField.text = [NSString stringWithFormat:@"%@9", self.inputTextField.text];
    }
    else
    {
        self.inputTextField.text = [NSString stringWithFormat:@"9"];
    }
    [self updateLogic];
}
- (IBAction)decimalButton:(UIButton *)sender
{
    if ([self.inputTextField.text rangeOfString:@"."].location == NSNotFound)
    {
        if ([self.inputTextField.text isEqual: @""])
        {
            self.inputTextField.text = [NSString stringWithFormat:@"0."];
        }
        else
        {
            self.inputTextField.text = [NSString stringWithFormat:@"%@.", self.inputTextField.text];
        }
    }
}

- (IBAction)clearButton:(UIButton *)sender
{
    self.inputTextField.text = @"";
    self.inputUnit.text = @"";
    self.outputLabel.text = @"";
    self.outputUnit.text = @"";
    self.infoBarLabel.text = @"";
    self.inputUnitLong.text = @"";
    self.outputUnitLong.text = @"";
}

- (IBAction)backspaceButton:(UIButton *)sender
{
    float inputTextFieldLength = [self.inputTextField.text length];
    if (inputTextFieldLength != 0) {
        NSString *string = [self.inputTextField text];
        float length = [string length];
        NSString *backspace = [string substringToIndex:length-1];
        [self.inputTextField setText:backspace];
    }
    else
    {}
    
    [self updateLogic];
}

- (IBAction)backButton:(UIButton *)sender
{
    self.inputTextField.text = @"";
    self.inputUnit.text = @"";
    self.outputLabel.text = @"";
    self.outputUnit.text = @"";
    self.infoBarLabel.text = @"";


    self.typesView.hidden = NO;
    
    self.backButton.hidden = YES;
    
    self.cuttentTypeNameLabel.text = @"";

    
}

- (IBAction)additionButton:(UIButton *)sender
{
    
}

- (IBAction)deductionButton:(UIButton *)sender
{
    
}

- (IBAction)multiplicationButton:(UIButton *)sender
{
    
}

- (IBAction)divisionButton:(UIButton *)sender
{
    
}
- (IBAction)massButton:(UIButton *)sender
{
    self.currentPoint = 0;
    
    
    self.inputTextField.text = @"";
    self.inputUnit.text = @"";
    self.outputLabel.text = @"";
    self.outputUnit.text = @"";
    self.infoBarLabel.text = @"";
    self.backButton.hidden = NO;
    
    self.unitesView.hidden = NO;
    self.typesView.hidden = YES;

    self.cuttentTypeNameLabel.text = @"Mass";
    
}

- (IBAction)lengthButton:(UIButton *)sender
{
    self.currentPoint = 1;
    [self updateTypes];
    
    self.inputTextField.text = @"";
    self.inputUnit.text = @"";
    self.outputLabel.text = @"";
    self.outputUnit.text = @"";
    self.infoBarLabel.text = @"";
    self.backButton.hidden = NO;
    
    self.unitesView.hidden = NO;
    self.typesView.hidden = YES;
    
    self.cuttentTypeNameLabel.text = @"Length";

}

- (IBAction)tempButton:(UIButton *)sender
{
    self.currentPoint = 2;
    [self updateTypes];
    
    self.inputTextField.text = @"";
    self.inputUnit.text = @"";
    self.outputLabel.text = @"";
    self.outputUnit.text = @"";
    self.infoBarLabel.text = @"";
    self.backButton.hidden = NO;
    
    self.unitesView.hidden = NO;
    self.typesView.hidden = YES;
    
    self.cuttentTypeNameLabel.text = @"Temperature";

}


- (IBAction)calanderButton:(UIButton *)sender
{
    self.currentPoint = 3;
    [self updateTypes];
    
    self.inputTextField.text = @"";
    self.inputUnit.text = @"";
    self.outputLabel.text = @"";
    self.outputUnit.text = @"";
    self.infoBarLabel.text = @"";
    self.backButton.hidden = NO;
    
    self.unitesView.hidden = NO;
    self.typesView.hidden = YES;
    
    self.cuttentTypeNameLabel.text = @"Time";

}

- (IBAction)kitchenButton:(UIButton *)sender
{
    self.currentPoint = 4;
    
    [self updateTypes];
    
    self.inputTextField.text = @"";
    self.inputUnit.text = @"";
    self.outputLabel.text = @"";
    self.outputUnit.text = @"";
    self.infoBarLabel.text = @"";
    self.backButton.hidden = NO;
    
    self.unitesView.hidden = NO;
    self.typesView.hidden = YES;
    
    self.cuttentTypeNameLabel.text = @"Kitchen";

}

//one more type


- (IBAction)unit1Button:(UIButton *)sender
{
    
    //self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.firstButtonNameLong];
    
    
    if (self.currentPoint == 0 || self.currentPoint == 1 || self.currentPoint == 3) {
        if ([self.inputUnit.text isEqual:@""])
        {
            self.inputUnit.text = [NSString stringWithFormat:@"%@", self.firstButtonName];
            self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.firstButtonNameLong];
        }
        else
        {
            if ([self.outputUnit.text isEqual:@""]) {
                self.outputUnit.text = [NSString stringWithFormat:@"%@", self.firstButtonName];
                self.outputUnitLong.text = [NSString stringWithFormat:@"%@", self.firstButtonNameLong];
            }
            else {}
        }
        
    }
    
    // ADD - To Temp
    else if (self.currentPoint == 2)
    {
        
        if ([self.inputTextField.text rangeOfString:@"-"].location == NSNotFound)
        {
            self.inputTextField.text = [NSString stringWithFormat:@"-%@", self.inputTextField.text];
        }
        else {}
        
    }
    
    
    if (![self.inputTextField.text isEqualToString:@""])
    {[self updateTypes];}
    else {}

}

- (IBAction)unit2Button:(UIButton *)sender
{
    if ([self.inputUnit.text isEqual:@""])
    {
        self.inputUnit.text = [NSString stringWithFormat:@"%@", self.secondButtonName];
        self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.secondButtonNameLong];

    }
    else
    {
        if ([self.outputUnit.text isEqual:@""]) {
            self.outputUnit.text = [NSString stringWithFormat:@"%@", self.secondButtonName];
            self.outputUnitLong.text = [NSString stringWithFormat:@"%@", self.secondButtonNameLong];

        }
        else {}
    }
    
    
    if (![self.inputTextField.text isEqualToString:@""])
    {[self updateTypes];}
    else {}
}

- (IBAction)unit3Button:(UIButton *)sender
{
    if ([self.inputUnit.text isEqual:@""])
    {
        self.inputUnit.text = [NSString stringWithFormat:@"%@", self.thirdButtonName];
        self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.thirdButtonNameLong];
        
    }
    else
    {
        if ([self.outputUnit.text isEqual:@""]) {
            self.outputUnit.text = [NSString stringWithFormat:@"%@", self.thirdButtonName];
            self.outputUnitLong.text = [NSString stringWithFormat:@"%@", self.thirdButtonNameLong];
            
        }
        else {}
    }
    
    if (![self.inputTextField.text isEqualToString:@""])
    {[self updateTypes];}
    else {}
}

- (IBAction)unit4Button:(UIButton *)sender
{
    if ([self.inputUnit.text isEqual:@""])
    {
        self.inputUnit.text = [NSString stringWithFormat:@"%@", self.forthButtonName];
        self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.forthButtonNameLong];
        
    }
    else
    {
        if ([self.outputUnit.text isEqual:@""]) {
            self.outputUnit.text = [NSString stringWithFormat:@"%@", self.forthButtonName];
            self.outputUnitLong.text = [NSString stringWithFormat:@"%@", self.forthButtonNameLong];
            
        }
        else {}
    }
    //update automatically
    if (![self.inputTextField.text isEqualToString:@""])
    {[self updateTypes];}
    else {}

}

- (IBAction)unit5Button:(UIButton *)sender
{
    if ([self.inputUnit.text isEqual:@""])
    {
        self.inputUnit.text = [NSString stringWithFormat:@"%@", self.fifthButtonName];
        self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.fifthButtonNameLong];
        
    }
    else
    {
        if ([self.outputUnit.text isEqual:@""]) {
            self.outputUnit.text = [NSString stringWithFormat:@"%@", self.fifthButtonName];
            self.outputUnitLong.text = [NSString stringWithFormat:@"%@", self.fifthButtonNameLong];
            
        }
        else {}
    }
    
    if (![self.inputTextField.text isEqualToString:@""])
    {[self updateTypes];}
    else {}
}

- (IBAction)unit6Button:(UIButton *)sender
{
    if ([self.inputUnit.text isEqual:@""])
    {
        self.inputUnit.text = [NSString stringWithFormat:@"%@", self.sixthButtonName];
        self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.sixthButtonNameLong];
        
    }
    else
    {
        if ([self.outputUnit.text isEqual:@""]) {
            self.outputUnit.text = [NSString stringWithFormat:@"%@", self.sixthButtonName];
            self.outputUnitLong.text = [NSString stringWithFormat:@"%@", self.sixthButtonNameLong];
            
        }
        else {}
    }
    
    if (![self.inputTextField.text isEqualToString:@""])
    {[self updateTypes];}
    else {}
}

- (IBAction)unit7Button:(UIButton *)sender
{
    if ([self.inputUnit.text isEqual:@""])
    {
        self.inputUnit.text = [NSString stringWithFormat:@"%@", self.seventhButtonName];
        self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.seventhButtonNameLong];
        
    }
    else
    {
        if ([self.outputUnit.text isEqual:@""]) {
            self.outputUnit.text = [NSString stringWithFormat:@"%@", self.seventhButtonName];
            self.outputUnitLong.text = [NSString stringWithFormat:@"%@", self.seventhButtonNameLong];
            
        }
        else {}
    }
    
    if (![self.inputTextField.text isEqualToString:@""])
    {[self updateTypes];}
    else {}
}

- (IBAction)unit8Button:(UIButton *)sender
{
    if ([self.inputUnit.text isEqual:@""])
    {
        self.inputUnit.text = [NSString stringWithFormat:@"%@", self.eighthButtonName];
        self.inputUnitLong.text = [NSString stringWithFormat:@"%@", self.eighthButtonNameLong];
        
    }
    else
    {
        if ([self.outputUnit.text isEqual:@""]) {
            self.outputUnit.text = [NSString stringWithFormat:@"%@", self.eighthButtonName];
            self.outputUnitLong.text = [NSString stringWithFormat:@"%@", self.eighthButtonNameLong];
            
        }
        else {}
    }
    
    if (![self.inputTextField.text isEqualToString:@""])
    {[self updateTypes];}
    else {};
}




-(void)updateLogic
{
    JBType *logic = [self.types objectAtIndex:self.currentPoint];
    
    
    //MASS
    if (self.currentPoint == 0)
    {
        self.kgToKg = 1 * [self.inputTextField.text floatValue];
        self.kgToLb = [self.inputTextField.text floatValue] / 0.45359237;
        self.kgToOz = [self.inputTextField.text floatValue] / 0.028349523;
        self.kgToMg = 1000000 * [self.inputTextField.text floatValue];
        self.kgToGram = 1000 * [self.inputTextField.text floatValue];
        self.kgToTon = 1000 * [self.inputTextField.text floatValue];
        //self.kgToStone = * [self.inputTextField.text floatValue];
        //self.kgTo = * [self.inputTextField.text floatValue];
        self.lbToKg = 0.45359237 * [self.inputTextField.text floatValue];
        
        self.lbToLb = 1 * [self.inputTextField.text floatValue];
        self.lbToOz = 16 *[self.inputTextField.text floatValue];
        self.lbToMg = 1000000 * [self.inputTextField.text floatValue];
        self.lbToGram = 453.592 * [self.inputTextField.text floatValue];
        self.lbToTon = 453.592* [self.inputTextField.text floatValue];
        //self.lbToStone =  [self.inputTextField.text floatValue];
        //self.lbTo =  [self.inputTextField.text floatValue];
        
        //self.ozToKg =  [self.inputTextField.text floatValue];
        self.ozToLb = [self.inputTextField.text floatValue] / 16;
        self.ozToOz = 1 * [self.inputTextField.text floatValue];
        self.ozToMg = 1000000 * [self.inputTextField.text floatValue];
        //self.ozToGram =  [self.inputTextField.text floatValue];
        self.ozToTon = 1000 * [self.inputTextField.text floatValue];
        //self.ozToStone =  [self.inputTextField.text floatValue];
        //self.ozTo =  [self.inputTextField.text floatValue];
        
        self.gramToKg = [self.inputTextField.text floatValue] / 1000;
        self.gramToLb = [self.inputTextField.text floatValue] * 0.0022046;
        //self.gramToOz = [self.inputTextField.text floatValue]  ;
        self.gramToMg = 1000 * [self.inputTextField.text floatValue];
        self.gramToGram = 1 * [self.inputTextField.text floatValue];
        self.gramToTon = 1000000 * [self.inputTextField.text floatValue];
        //self.gramToStone =  [self.inputTextField.text floatValue];
        //self.gramTo =  [self.inputTextField.text floatValue];
        
        self.tonToTon = 1 * [self.inputTextField.text floatValue];
        self.tonToKg = [self.inputTextField.text floatValue] / 453.592;
        self.tonToMg = 1000000000 * [self.inputTextField.text floatValue];
        self.tonToGram = 1000000 * [self.inputTextField.text floatValue];
        //self.tonToLb =  [self.inputTextField.text floatValue];
        //self.tonToOz =  [self.inputTextField.text floatValue];
        //self.tonToStone =  [self.inputTextField.text floatValue];
        //self.tonTo =  [self.inputTextField.text floatValue];
        
        /*self.stoneToStone = * [self.inputTextField.text floatValue];
        self.stoneToMg = * [self.inputTextField.text floatValue];
        self.stoneToGram = * [self.inputTextField.text floatValue];
        self.stoneToKg = * [self.inputTextField.text floatValue];
        self.stoneToLb = * [self.inputTextField.text floatValue];
        self.stoneToOz = * [self.inputTextField.text floatValue];
        self.stoneToTon = * [self.inputTextField.text floatValue];
        self.stoneTo = * [self.inputTextField.text floatValue];
        
        self.mgToMg = 1 * [self.inputTextField.text floatValue];
        self.mgToGram = * [self.inputTextField.text floatValue];
        self.mgToKg = * [self.inputTextField.text floatValue];
        self.mgToTon = * [self.inputTextField.text floatValue];
        self.mgToLb = * [self.inputTextField.text floatValue];
        self.mgToOz = * [self.inputTextField.text floatValue];
        self.mgToStone = * [self.inputTextField.text floatValue];
        self.mgTo = * [self.inputTextField.text floatValue];*/
        
        //INPUT UNIT = mg
        if ([self.inputUnit.text isEqualToString:self.firstButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //mg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //g
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //kg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //oz
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //lb
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //stone
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
            //INPUT UNIT = GRAM
        if ([self.inputUnit.text isEqualToString:self.secondButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //mg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.gramToMg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //g
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.gramToGram];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //kg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.gramToKg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.gramToTon];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //oz
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.gramToOz];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //lb
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.gramToLb];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //stone
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.gramToStone];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.gramTo];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT = KG
        if ([self.inputUnit.text isEqualToString:self.thirdButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //mg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kgToMg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //g
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kgToGram];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //kg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kgToKg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kgToTon];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //oz
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kgToOz];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //lb
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kgToLb];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //stone
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kgToStone];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kgTo];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
        }
        
        //INPUT UNIT = TON
        if ([self.inputUnit.text isEqualToString:self.forthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //mg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.tonToMg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //g
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.tonToGram];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //kg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.tonToKg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.tonToTon];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //oz
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.tonToOz];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //lb
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.tonToLb];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //stone
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.tonToStone];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.tonTo];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT = OZ
        if ([self.inputUnit.text isEqualToString:self.fifthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //mg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ozToMg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //g
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ozToGram];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //kg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ozToKg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ozToTon];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //oz
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ozToOz];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //lb
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ozToLb];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //stone
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ozToStone];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ozTo];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT = LB
        if ([self.inputUnit.text isEqualToString:self.sixthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //mg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.lbToMg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //g
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.lbToGram];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //kg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.lbToKg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.lbToTon];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //oz
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.lbToOz];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //lb
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.lbToLb];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //stone
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.lbToStone];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.lbTo];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }

        //INPUT UNIT = STONE
        if ([self.inputUnit.text isEqualToString:self.seventhButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //mg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.stoneToMg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //g
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.stoneToGram];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //kg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.stoneToKg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.stoneToTon];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //oz
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.stoneToOz];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //lb
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.stoneToLb];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //stone
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.stoneToStone];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.stoneTo];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }

        //INPUT UNIT = ??
        /*
        if ([self.inputUnit.text isEqualToString:self.eighthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //mg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ToMg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //g
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ToGram];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //kg
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ToKg];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ToTon];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //oz
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ToOz];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //lb
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ToLb];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //stone
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.ToStone];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //ton
            {
            self.outputLabel.text = [NSString stringWithFormat:@"%f", self.To];
            self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
         */
    }
    
    if (self.currentPoint == 1)
    {
        //INPUT UNIT =
        if ([self.inputUnit.text isEqualToString:self.firstButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT =
        if ([self.inputUnit.text isEqualToString:self.secondButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT =
        if ([self.inputUnit.text isEqualToString:self.thirdButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT =
        if ([self.inputUnit.text isEqualToString:self.forthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }

        //INPUT UNIT =
        if ([self.inputUnit.text isEqualToString:self.fifthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT =
        if ([self.inputUnit.text isEqualToString:self.sixthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT =
        if ([self.inputUnit.text isEqualToString:self.seventhButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
        
        //INPUT UNIT =
        if ([self.inputUnit.text isEqualToString:self.eighthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToMg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToGram];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] / 1,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToKg];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToTon];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x 1,000,000,000",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.fifthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToOz];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.sixthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToLb];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.seventhButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgToStone];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
            if ([self.outputUnit.text isEqualToString:self.eighthButtonName]) //
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.mgTo];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]]; }
        }
     }
    
    if (self.currentPoint == 2)
    {
        self.cToC = 1 * [self.inputTextField.text floatValue];
        self.cToF = (1.8*[self.inputTextField.text floatValue]+32);
        self.cToK = 273.15 + [self.inputTextField.text floatValue];
        
        self.fToC = ([self.inputTextField.text floatValue]-32) * (5/9);
        self.fToF = 1 * [self.inputTextField.text floatValue];
        self.fToK = ((0.55555556)*([self.inputTextField.text floatValue]-32)) + 273.15;
        
        self.kToC = -273.15 + [self.inputTextField.text floatValue];
        self.kToF;
        self.kToK = 1 * [self.inputTextField.text floatValue];
        
        //C
        if ([self.inputUnit.text isEqualToString:self.firstButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //C
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.cToC];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //F
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.cToF];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //K
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.cToK];
                self.infoBarLabel.text = [NSString stringWithFormat:@"= [%.2f] x ",[self.inputTextField.text floatValue]];
            }
        }
        //F
        if ([self.inputUnit.text isEqualToString:self.secondButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //C
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.fToC];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //F
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.fToF];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //K
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.fToK];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
        }
        
        //K
        if ([self.inputUnit.text isEqualToString:self.thirdButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //C
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kToC];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //F
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kToF];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //K
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.kToK];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
        }
        
        
        
        
    }
    
    if (self.currentPoint == 3)
    {
        
        
        self.daysToDays = (1 * [self.inputTextField.text floatValue]);
        self.daysToWeeks = ([self.inputTextField.text floatValue]/7);
        self.daysToMonths = ([self.inputTextField.text floatValue]/30);
        self.daysToYears = ([self.inputTextField.text floatValue]/360);
        
        self.weeksToDays = ([self.inputTextField.text floatValue] *7);
        self.weeksToWeeks = (1 * [self.inputTextField.text floatValue]);
        self.weeksToMonths = ([self.inputTextField.text floatValue]/4);
        self.weeksToYears = ([self.inputTextField.text floatValue]/(51.4285714));
        
        self.monthsToDays = ([self.inputTextField.text floatValue]*30);
        self.monthsToWeeks = ([self.inputTextField.text floatValue]*4);
        self.monthsToMonths = 1*[self.inputTextField.text floatValue];
        self.monthsToYears = ([self.inputTextField.text floatValue]/12);
        
        self.yearsToDays = ([self.inputTextField.text floatValue]*360);
        self.yearsToWeeks = ([self.inputTextField.text floatValue]*(51.4285714));
        self.yearsToMonths = ([self.inputTextField.text floatValue]*12);
        self.yearsToYears = 1*[self.inputTextField.text floatValue];
        
        
        //Days
        if ([self.inputUnit.text isEqualToString:self.firstButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //Days
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.daysToDays];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //Weeks
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.daysToWeeks];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //Months
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.daysToMonths];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //Years
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.daysToYears];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
        }
        //Weeks
        if ([self.inputUnit.text isEqualToString:self.secondButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //Days
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.weeksToDays];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //Weeks
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.weeksToWeeks];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //Months
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.weeksToMonths];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //Years
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.weeksToYears];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
        }
        //Months
        if ([self.inputUnit.text isEqualToString:self.thirdButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //Days
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.monthsToDays];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //Weeks
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.monthsToWeeks];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //Months
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.monthsToMonths];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //Years
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.monthsToYears];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
        }
        //Years
        if ([self.inputUnit.text isEqualToString:self.forthButtonName])
        {
            if ([self.outputUnit.text isEqualToString:self.firstButtonName]) //Days
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.yearsToDays];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            
            if ([self.outputUnit.text isEqualToString:self.secondButtonName]) //Weeks
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.yearsToWeeks];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.thirdButtonName]) //Months
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.yearsToMonths];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
            if ([self.outputUnit.text isEqualToString:self.forthButtonName]) //Years
            {
                self.outputLabel.text = [NSString stringWithFormat:@"%f", self.yearsToYears];
                self.infoBarLabel.text = [NSString stringWithFormat:@""];
            }
        }
        
        
        
        
        
        
        
        
    }
}

@end
