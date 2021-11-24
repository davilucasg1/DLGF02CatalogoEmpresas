//
//  ViewController.m
//  teste2
//
//  Created by DS Mac Mini on 19/11/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)salvar:(id)sender {
    dnia *e = [[dnia alloc] init];
    e.nome = self.nomeEmpresa.text;
    e.quantidaField = [self.quantidadeEmpresa.text intValue];
    NSLog(@"empresa criada nome=%@, fucionarios=%d",
          e.nome, e.quantidaField);
   
    //[e release];
    
}

- (IBAction)incrementador:(id)sender {
    UIStepper *incrementador = (UIStepper *) sender;
    self.quantidadeEmpresa.text = [NSString stringWithFormat: @"%d",
                                   (int)incrementador.value];
    
    
}
@end
