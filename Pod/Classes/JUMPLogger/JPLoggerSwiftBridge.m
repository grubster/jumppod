//
//  JPLoggerSwiftBridge.m
//  JUMPLogger
//
//  Created by Ian Carvalho on 9/2/15.
//
//

#import "JPLoggerSwiftBridge.h"
#import "JPLoggerShortcuts.h"
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@implementation JPLoggerSwiftBridge

+(void)LogInt:(NSInteger)arg {
    Debug( @"integer: %i", arg );
}
+(void)LogFloat:(float)arg {
    Debug( @"float: %f", arg );
}
+(void)LogRect:(CGRect)arg {
    Debug( @"CGRectMake( %f, %f, %f, %f)", arg.origin.x, arg.origin.y, arg.size.width, arg.size.height );
}
+(void)LogPoint:(CGPoint)arg {
    Debug( @"CGPoint ( %f, %f )", arg.x, arg.y );
}
+(void)LogSize:(CGSize)arg {
    Debug( @"CGSize ( %f, %f )", arg.width, arg.height );
}
+(void)LogBool:(BOOL)arg {
	   Debug( @"Boolean: %@", ( arg == YES ? @"YES" : @"NO" ) );
}
+(void)LogIndexPath:(NSIndexPath*)arg {
    Debug( @"Section: %i, Row: %i", arg.section, arg.row );
}

+(void)LogWhere {
    Debug( @"[%@ %@]", NSStringFromClass( [self class] ), NSStringFromSelector( _cmd ) );
}

+(void)Error:(NSString *)message, ... {
    va_list args;
    va_start(args, message);
    ErrorExceptionTo( nil, nil, message, args);
}

@end
