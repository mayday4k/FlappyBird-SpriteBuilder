#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // this will be run every frame.
    // delta is the time that has elapsed since the last time it was run. This is usually 1/60, but can be bigger if the game slows down.
    // put update code here
    
    // increment the time since the last obstacle was added.
    timeSinceObstacle += delta;  // delta is approximately 1/60th of a second.
    
    // check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        // then add a new obstacle
        [self addObstacle];
        
        
        
       
            UIAlertView *helloWorldAlert = [[UIAlertView alloc]
                                            initWithTitle:@"Sweet Message" message:@"Jeff Krencik Likes Penis!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            // Display the Hello World Message
            [helloWorldAlert show];
        
        
        
        
        // reset the times
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called everytime the player touches the screen
    [character flap];
}

@end
