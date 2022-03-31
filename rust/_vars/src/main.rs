use std::io;

fn main() {
    let mut valor = String::new();
    io::stdin().read_line(&mut valor).expect("Errou!!!");
    /* Por padrão, no Rust as variáveis são imutáveis, o que significa que se eu:
    let x = 5;
    x = 6;
    * Isso vai dar erro e não vai compilar, porque eu tô tentando mudar o valor de uma variável imutável.
    * Agora se eu: */
    let mut _x = 5;
    _x = 6;
    // Isso vai funcionar, porque eu defini a variável como mutável.

    let a = "a"; // Cria a variável a armazenando a string "a"
    let mut b = "b"; // Cria uma variável mutável, sendo assim, da para mudar o valor dela.
    const C: &str = "c"; /* Cria uma constante, que não é imutável por padrão, ela é SEMPRE imutável.
                          * Outro aspecto é que é sempre necessário definir o data type dela.
                          * Elas podem ser declaradas fora de funções, o que ajuda se todo o código depende dela.
                          * A última diferença é que são constantes, se você fizer: */
    const THREE_HOURS_IN_SECONDS: u32 = valor * 3;
    // O output será o que, vamos ver?
    println!("{}", THREE_HOURS_IN_SECONDS);
    // O output é um belo de um erro, porque não dá para multiplicar um valor processado no runtime
    // e armazenar numa constante.
}
