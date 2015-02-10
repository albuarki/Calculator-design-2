//
//  JBFactory.m
//  Calculator design
//
//  Created by Jassim on 2/8/15.
//  Copyright (c) 2015 Jassim. All rights reserved.
//

#import "JBFactory.h"
#import "JBType.h"
#import "ViewController.h"

@implementation JBFactory



//need to heavily fix this page. Also consider adding the calculation here, or in JBTypes instead of ViewController
-(NSArray *)types
{
    JBType *mass = [[JBType alloc]init];
    mass.unit1ButtonName = @"mg";
    mass.unit1ButtonNameLong =@"Milligram";
    mass.unit2ButtonName = @"g";
    mass.unit2ButtonNameLong =@"Gram";
    mass.unit3ButtonName = @"kg";
    mass.unit3ButtonNameLong =@"Kilogram";
    mass.unit4ButtonName = @"t";
    mass.unit4ButtonNameLong =@"Ton";
    mass.unit5ButtonName =@"oz";
    mass.unit5ButtonNameLong =@"Ounce";
    mass.unit6ButtonName =@"lb";
    mass.unit6ButtonNameLong =@"Pound";
    mass.unit7ButtonName =@"st";
    mass.unit7ButtonNameLong =@"Stone";
    mass.unit8ButtonName =@"";
    mass.unit8ButtonNameLong =@"";

    
    
    JBType *length = [[JBType alloc]init];
    length.unit1ButtonName = @"mm";
    length.unit1ButtonNameLong = @"Millimeter";
    length.unit2ButtonName = @"cm";
    length.unit2ButtonNameLong = @"Centimeter";
    length.unit3ButtonName = @"m";
    length.unit3ButtonNameLong = @"Meter";
    length.unit4ButtonName = @"km";
    length.unit4ButtonNameLong = @"Kilometer";
    length.unit5ButtonName = @"yd";
    length.unit5ButtonNameLong = @"Yard";
    length.unit6ButtonName = @"mil";
    length.unit6ButtonNameLong = @"Mile";
    length.unit7ButtonName =@"";
    length.unit7ButtonNameLong = @"";
    length.unit8ButtonName =@"";
    length.unit8ButtonNameLong = @"";

    
    JBType *temp = [[JBType alloc]init];
    temp.unit1ButtonName = @"C";
    temp.unit1ButtonNameLong = @"";
    temp.unit2ButtonName = @"F";
    temp.unit2ButtonNameLong = @"";
    temp.unit3ButtonName = @"K";
    temp.unit3ButtonNameLong = @"";
    temp.unit4ButtonName = @"+/-";
    temp.unit4ButtonNameLong = @"";
    temp.unit5ButtonName = @"";
    temp.unit5ButtonNameLong = @"";
    temp.unit6ButtonName = @"";
    temp.unit6ButtonNameLong = @"";
    temp.unit7ButtonName = @"";
    temp.unit7ButtonNameLong = @"";
    temp.unit8ButtonName = @"";
    temp.unit8ButtonNameLong = @"";
    
    
    JBType *calander = [[JBType alloc]init];
    calander.unit1ButtonName = @"sec";
    calander.unit1ButtonNameLong = @"";
    calander.unit2ButtonName = @"min";
    calander.unit2ButtonNameLong = @"";
    calander.unit3ButtonName = @"hr";
    calander.unit3ButtonNameLong = @"";
    calander.unit4ButtonName = @"d";
    calander.unit4ButtonNameLong = @"";
    calander.unit5ButtonName = @"w";
    calander.unit5ButtonNameLong = @"";
    calander.unit6ButtonName = @"m";
    calander.unit6ButtonNameLong = @"";
    calander.unit7ButtonName = @"y";
    calander.unit7ButtonNameLong = @"";
    calander.unit8ButtonName = @"";
    calander.unit8ButtonNameLong = @"";
    
    
    JBType *kitchen = [[JBType alloc]init];
    kitchen.unit1ButtonName = @"";
    kitchen.unit1ButtonNameLong = @"";
    kitchen.unit2ButtonName = @"";
    kitchen.unit2ButtonNameLong = @"";
    kitchen.unit3ButtonName = @"";
    kitchen.unit3ButtonNameLong = @"";
    kitchen.unit4ButtonName = @"";
    kitchen.unit4ButtonNameLong = @"";
    kitchen.unit5ButtonName = @"";
    kitchen.unit5ButtonNameLong = @"";
    kitchen.unit6ButtonName = @"";
    kitchen.unit6ButtonNameLong = @"";
    kitchen.unit7ButtonName = @"";
    kitchen.unit7ButtonNameLong = @"";
    kitchen.unit8ButtonName = @"";
    kitchen.unit8ButtonNameLong = @"";
    
  /*
    JBType *whatever = [[JBType alloc]init];
    whatever.unit1ButtonName = @"";
   whatever.unit1ButtonNameLong = @"";
    whatever.unit2ButtonName = @"";
   whatever.unit2ButtonNameLong = @"";
    whatever.unit3ButtonName = @"";
   whatever.unit3ButtonNameLong = @"";
    whatever.unit4ButtonName = @"";
   whatever.unit4ButtonNameLong = @"";
    whatever.unit5ButtonName = @"";
   whatever.unit5ButtonNameLong = @"";
    whatever.unit6ButtonName = @"";
   whatever.unit6ButtonNameLong = @"";
    whatever.unit7ButtonName = @"";
   whatever.unit7ButtonNameLong = @"";
    whatever.unit8ButtonName = @"";
   whatever.unit8ButtonNameLong = @"";
    
    */
    
    
    
    NSMutableArray *myTypesArray = [[NSMutableArray alloc]init];
    [myTypesArray addObject:mass];
    [myTypesArray addObject:length];
    [myTypesArray addObject:temp];
    [myTypesArray addObject:calander];
    [myTypesArray addObject:kitchen];
    
    return myTypesArray;
}


@end
