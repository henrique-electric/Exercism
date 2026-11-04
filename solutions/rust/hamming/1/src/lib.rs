/// Return the Hamming distance between the strings,
/// or None if the lengths are mismatched.
pub fn hamming_distance(s1: &str, s2: &str) -> Option<usize> {
    if s1.chars().count() != s2.chars().count() {
        return None;
    }

    let mut diffs = 0;

    for (idx, c) in s1.chars().enumerate() {
        if c != s2.chars().nth(idx).unwrap() {
            diffs += 1;
        }
    }

    Some(diffs)
}
