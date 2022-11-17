fn ordinal (num : u32) -> String {
    let returnable : String;
    if num % 10 == 1 {
        if num % 100 ==  11 {
            returnable = format!("{}th", num)
        } else {
            returnable = format!("{}st", num)
        }
    } else if num % 10 == 2 {
        if num % 100 == 12 {
            returnable = format!("{}th", num)
        } else {
            returnable = format!("{}nd", num)
        }
    } else if num % 10 == 3 {
        if num % 100 == 13 {
            returnable = format!("{}th", num)
        } else {
            returnable = format!("{}rd", num)
        }
    } else {
        returnable = format!("{}th", num)
    }
    return returnable;
}

fn main () {
    for i in 0..=130 {
        println!("{}",ordinal(i))
    }
}