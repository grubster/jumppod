//
//  JPLoggerSwiftBridge.h
//  JUMPLogger
//
//  Created by Ian Carvalho on 9/2/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface JPLoggerSwiftBridge : NSObject

+(void)LogInt:(NSInteger)arg;
+(void)LogFloat:(float)arg;
+(void)LogRect:(CGRect)arg;
+(void)LogPoint:(CGPoint)arg;
+(void)LogSize:(CGSize)arg;
+(void)LogBool:(BOOL)arg;
+(void)LogIndexPath:(NSIndexPath*)arg;
+(void)LogWhere;

@end
