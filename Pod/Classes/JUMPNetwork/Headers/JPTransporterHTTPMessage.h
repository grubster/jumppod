/*
 * Copyright (c) 2011 - SEQOY.org and Paulo Oliveira ( http://www.seqoy.org )
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#import <Foundation/Foundation.h>
#import "JPTransporterMessage.h"

/**
 \ingroup transporter_group
 JPTransporterHTTPMessage is an special type of \ref events_page that encapsulate the HTTP data to be transported.
 */
@protocol JPTransporterHTTPMessage <JPTransporterMessage> 
@required

/**
 * HTTP method to use (GET / POST / PUT / DELETE / HEAD).
 */
-(NSString*)requestMethod;

/**
 * Number of seconds to wait before timing out.
 */
-(NSTimeInterval)timeOutSeconds;

/**
 * HTTP User Agent Identifier.
 */
-(NSString*)userAgent;

/**
 * HTTP Content Type Identifier.
 */
-(NSString*)contentType;

/**
 * Cache Policy To Use.
 */
-(NSURLRequestCachePolicy*)cachePolicy;

@end
