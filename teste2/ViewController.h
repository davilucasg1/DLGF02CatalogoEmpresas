//
//  ViewController.h
//  teste2
//
//  Created by DS Mac Mini on 19/11/21.
//

#import <UIKit/UIKit.h>
#import "dnia.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nomeEmpresa;
@property (weak, nonatomic) IBOutlet UITextField *quantidadeEmpresa;

- (IBAction)incrementador:(id)sender;
- (IBAction)salvar:(id)sender;


@end
