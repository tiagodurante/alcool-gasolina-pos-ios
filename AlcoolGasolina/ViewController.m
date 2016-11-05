//
//  ViewController.m
//  AlcoolGasolina
//
//  Created by Faculdade Alfa on 05/11/16.
//  Copyright (c) 2016 Tiago Amado Durante. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//use synthetize quando nao é utilizado _ ou self para buscar os valores dos atributos definidos na interface .h
@synthesize valorAlcool, valorGasolina;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calcular:(id)sender {
    //_valorAlcool.text
    //self.valorAlcool.text
    float alcool = valorAlcool.text.floatValue;
    float gasolina = [valorGasolina.text floatValue];

    if (alcool == (gasolina*0.7)) {
        [self mostrarMensagem:@"Pós ALFA" msg:@"Tanto faz, é você quem determinal, tanto faz, vai de alcool ou gasolina. TOTALFLEX."];
    } else if (alcool > (gasolina*0.7)) {
        [self mostrarMensagem:@"Pós ALFA" msg:@"Coloca gasolina pra poder andar mais e gastar 'menos'"];
    } else {
        [self mostrarMensagem:@"Pós ALFA" msg:@"Coloca alcool que você vai crescer na vida financeira"];
    }
}

- (void) mostrarMensagem:(NSString*)titulo msg:(NSString *)mensagem {
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:titulo message:mensagem delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alerta show];
    alerta = nil;
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)compartilhar:(id)sender {
    UIActionSheet *popup = [[UIActionSheet alloc] initWithTitle:@"Compartilhar" delegate:self cancelButtonTitle:@"Voltar" destructiveButtonTitle:nil otherButtonTitles:@"Facebook", @"Twitter", @"E-mail", nil];
    [popup showInView:self.view];
}

- (void) actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            [self compartilharFacebook];
            break;
        case 1:
            [self compartilharTwitter];
            break;
        case 2:
            [self compartilharEmail];
            break;
        default:
            [self mostrarMensagem:@"Erro" msg:@"Index inválido."];
            break;
    }
}

- (void) compartilharFacebook{

}

- (void) compartilharTwitter{
    
}

- (void) compartilharEmail{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
