//
//  MF_AppDelegate.m
//  Base32
//
//  Created by Dave Poirier on 12-06-14.
//  Public Domain
//

#import "MF_AppDelegate.h"
#import "MF_Base32Additions.h"

@implementation MF_AppDelegate

@synthesize window = _window;
@synthesize textField = _textField;

//- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
//{
//}

-(void)encode:(id)sender
{
    NSString *raw = [_textField stringValue];
    NSString *encoded = [raw base32String];
    [_textField setStringValue:encoded];
}

-(void)decode:(id)sender
{
    NSString *encoded = [_textField stringValue];
    NSData *data = [NSData dataWithBase32String:encoded];
    NSString *raw = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    [_textField setStringValue:raw];
}

@end
