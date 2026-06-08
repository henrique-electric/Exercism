use std::ops::Index;

pub fn reverse(input: &str) -> String {
    let mut res = String::new();

    let chars = input.chars().count();

    for i in (0..chars).rev() {

        let c = input.chars().nth(i).unwrap();
        res.push(c);
    }
    res
}
