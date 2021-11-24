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
    _avisoSucesso.alpha=0;
}


- (IBAction)salvar:(id)sender {
    dnia *e = [[dnia alloc] init];
    e.nome = self.nomeEmpresa.text;
    e.quantidaField = [self.quantidadeEmpresa.text intValue];
    NSLog(@"empresa criada nome=%@, fucionarios=%d",
          e.nome, e.quantidaField);
    _avisoSucesso.text = [NSString stringWithFormat:@"empresa criada nome=%@, fucionarios=%d",
                          e.nome, e.quantidaField];
    _avisoSucesso.alpha = 1;
    //[e release];
    
}

- (IBAction)incrementador:(id)sender {
    UIStepper *incrementador = (UIStepper *) sender;
    self.quantidadeEmpresa.text = [NSString stringWithFormat: @"%d",
                                   (int)incrementador.value];
    
    
}
@end
