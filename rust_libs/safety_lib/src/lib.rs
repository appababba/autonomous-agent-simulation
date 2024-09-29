pub fn add(left: u64, right: u64) -> u64 {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}

#[no_mangle]
pub extern "C" fn calculate_safe_value(input: i32) -> i32 {
    // Example safety-critical computation
    input * 2
}
