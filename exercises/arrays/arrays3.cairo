// arrays3.cairo
// Make me compile and pass the test!
// Execute `starklings hint arrays3` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use option::OptionTrait;
use box::BoxTrait;
use debug::PrintTrait;


fn create_array() -> Array<felt252> {
    let mut a = ArrayTrait::new(); // something to change here...
    a.append(0);
    a.append(1);
    a.append(2);
    a.pop_front().unwrap();
    a
}


#[test]
fn test_arrays3() {
    let mut a = create_array();

    match a.get(2_usize) {
        Option::Some(x) => {
            *x.unbox();
        },
        Option::None(_) => {
            ('out of bounds').print();
        }
    }
}
