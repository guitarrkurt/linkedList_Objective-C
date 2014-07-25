/*
*Esto es una lista ligada en Objective-C
*by DAVID GUILLERMO LÓPEZ VÁZQUEZ
*
*/

#import <Foundation/Foundation.h>
@interface nodo:NSObject
{
        int dato;
        nodo *sgt;
}
-init;
-(int)dato;
-(void)setDato:(int)newDato;
-(nodo*)sgt;
-(void)setSgt:(nodo*)nuevo;
@end
@implementation nodo
-init
{
        if(self = [super init])
        {
                dato = 0;
                sgt = nil;
        }
        return self;
}
-(int)dato
{
        return dato;
}
-(void)setDato:(int)newDato
{
        dato = newDato;
}
-(nodo*)sgt
{
        return sgt;
}
-(void)setSgt:(nodo*)nuevo
{
        sgt = nuevo;
}
@end
/*---------------------------*/
@interface lista:NSObject{
        nodo* inicio;
}
-init;
-(nodo*)inicio;
-(void)insetar:(int)dato;
-(void)imprime;
@end
@implementation lista
-init{
        if(self = [super init])
        {
                inicio = [[nodo alloc]init];
        }
        return self;
}
-(nodo*)inicio{
        return inicio;
}
-(void)insetar:(int)dato{
        nodo* aux = inicio;
        //aux = [aux sgt];
        nodo* nuevo = [[nodo alloc]init];
        [nuevo setDato:dato];
 
        while([aux sgt] != nil)
        {
                aux = [aux sgt];
        }
        //[[aux sgt] setSgt:nuevo];
        [aux setSgt:nuevo];
}
-(void)imprime{
        nodo* aux = inicio;
                       
        while(aux != nil)
        {
               
                NSLog(@"%d -> ", [aux dato]);
                aux = [aux sgt];
        }
}
@end
/*---------------------------*/
 
int main(int argc, char *argv[]) {
        @autoreleasepool {
                lista *l = [[lista alloc] init];
                [l insetar:5];
                [l insetar:10];
                [l insetar:20];
                [l imprime];
        }
}
