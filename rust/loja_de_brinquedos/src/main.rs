mod details;

use std::io;
use crate::details::*;
fn main() {
    let mut produto = String::new();
    println!("{}", PRODUTOS);
    io::stdin()
        .read_line(&mut produto)
        .expect("Invalid value!");
    let produto: u32 = produto.trim().parse().expect("Valor invalido!");
    match produto{
        1=>println!("{}", BONECA_DESC),
        2=>println!("{}", CAR_DESC),
        _=>println!("Outros valores não são alloweds!!"),
    }
}

