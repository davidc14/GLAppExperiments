//
//  Sprite.h
//  GLApp
//
//  Created by David Clarke on 11/08/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OpenGLES/EAGL.h>

#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>

@interface Sprite : NSObject
{
    
    const GLfloat *squareVertices;
    const GLubyte *squareColors;
    const GLshort *spriteTextureCoordinates;
    GLfloat *spriteTextureCoordinatesF;
    GLfloat spriteTexCoords[8];
    
    /* OpenGL name for the sprite texture */
    GLuint spriteTexture;    
}

-(id) init;
-(id) init:(NSString* const)textureName;
-(id) init:(NSString* const)textureName:(GLfloat[8]) texCoords;

-(void) InitSprite;
-(void) InitSprite: (NSString* const) textureName;
-(void) InitSprite: (NSString* const) textureName: (GLfloat[8]) texCoords;

-(void) DrawSprite;

-(void) InitTexture: (NSString* const) textureName;

@end
