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

-(void) salvarEmpresa:(dnia *) novaEpresa {
    if (!catalogo){
        catalogo = [[NSMutableArray alloc]init];
    }
    [catalogo addObject: novaEpresa];
}

-(void) mostrarCatalogo {
    NSLog(@"****Listando todas as empresas****");
    for (dnia *empresa in catalogo){
        NSLog(@" a empresa %@ tem %d funcionarios",
              empresa.nome, empresa.quantidaField);
    }
    
}

- (IBAction)salvar:(id)sender {
    dnia *e = [[dnia alloc] init];
    e.nome = self.nomeEmpresa.text;
    e.quantidaField = [self.quantidadeEmpresa.text intValue];
    
    [self salvarEmpresa:e];
    [self mostrarCatalogo];
    
}

- (IBAction)incrementador:(id)sender {
    UIStepper *incrementador = (UIStepper *) sender;
    self.quantidadeEmpresa.text = [NSString stringWithFormat: @"%d",
                                   (int)incrementador.value];
    
    
}
@end
