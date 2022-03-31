use rand::Rng;
use std::cmp::Ordering;
use std::io;

fn main() {
    println!("Hello, Welcome to my game!");
    loop {
        println!("Please input a number.");
        /* Isso gera um valor entre 1 e 100, porque o começo é exato, mas o fim é um a mais, ou seja,
         * se eu quiser um valor de 1 a 2, tenho que fazer (1..3), ou, (1..=2). */
        let secret_number = rand::thread_rng().gen_range(1..101);
        println!("The secret number is: {}\n", secret_number);

        let mut guess = String::new();
        io::stdin()
            .read_line(&mut guess) // Leia o input do usuário, e mande para a variável guess, sendo que ela era uma string vazia.
            .expect("Failed to read line.");
        /* ↓ Aqui estamos transformando "guess" em um número unsigned de 32-bits
         * trim() serve para eliminar qualquer espaço entre o começo e o fim, para
         * que a string possa passar para um inteiro. */
        let guess: u32 = match guess.trim().parse() {
            // já o Parse está convertendo a string em um número.
            Ok(num) => num,
            Err(_) => continue,
        };

        // o `:` depois do valor da variável fala ao Rust que queremos definir o tipo dela

        println!("\nYou guessed: {}", guess);
        let _wow = "lol";
        // Eu não sei direito como o match funciona, tenho que ver depois.
        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too small!\n"),
            Ordering::Greater => println!("Too big!\n"),
            Ordering::Equal => {
                println!("You win!");
                break;
            }
        }
    }
}
