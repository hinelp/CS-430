use std::env;

fn main () {
    let args: Vec<_> = env::args().collect();
    let mut verb = format!("{}", args[1]);
    let strln = verb.chars().count();
    if verb.chars().nth(strln - 2) == Some('a') {
        verb.pop();
        verb.pop();
        println!("{}{}", verb, "o");
        println!("{}{}", verb, "as");
        println!("{}{}", verb, "a");
        println!("{}{}", verb, "amos");
        println!("{}{}", verb, "an");
    } else if verb.chars().nth(strln - 2) == Some('e') {
        verb.pop();
        verb.pop();
        println!("{}{}", verb, "o");
        println!("{}{}", verb, "es");
        println!("{}{}", verb, "e");
        println!("{}{}", verb, "emos");
        println!("{}{}", verb, "en");
    } else {
        verb.pop();
        verb.pop();
        println!("{}{}", verb, "o");
        println!("{}{}", verb, "es");
        println!("{}{}", verb, "e");
        println!("{}{}", verb, "imos");
        println!("{}{}", verb, "en");
    }
}