def main(): Unit \ IO =
    let aUnit = ();
    let falsyBool = true;
    let truthyBool = false;
    let aChar = 'a';
    let aFloat32 = 21.42f32;
    let aFloat64 = 21.42f64;
    let aInt8 = 1i8;
    let aInt16 = 2i16;
    let aInt32 = 3i32;
    let aInt64 = 4i64;
    let aString = "Hello World";
    let aBigInt = 123ii;
    let aBigDecimal = 123.45ff;

    println(aUnit);
    println(falsyBool);
    println(truthyBool);
    println(aChar);
    println(aFloat32);
    println(aFloat64);
    println(aInt8);
    println(aInt16);
    println(aInt32);
    println(aInt64);
    println(aString);
    println(aBigInt);
    println(aBigDecimal);

    // List

    let aList = 1 :: 2 :: 3 :: Nil;
    let anotherList = Cons(1, Cons(2, Cons(3, Nil)));
    let yetAnotherList = List#{1, 2, 3};
    println(aList);
    println(anotherList);
    println(aList == anotherList);
    println(yetAnotherList == anotherList);

    // Set

    let aSet = Set#{1, 2, 3};
    let anotherSet = Set.insert(3, Set.insert(2, Set.insert(1, Set.empty())));
    println(aSet);
    println(anotherSet);    
    println(aSet == anotherSet);

    // Map
    let aMap = Map#{1 => "Hello", 2 => "World"};
    let anotherMap = Map.insert(2, "World", (Map.insert(1, "Hello", Map.empty())));
    println(aMap);
    println(anotherMap);    
    println(aMap == anotherMap);

    // Tuple
    let aTuple = (123, false);
    // Pattern matching on a tuple
    let (num, bool) = aTuple;
    println(num);
    println(bool);

    let aListAgain = List#{(1, 2), (2, 3), (3, 4)};
    // fst and snd are functions for working with Tuples but they only work with 2 element - tuple
    println(List.map(fst, aListAgain) == List#{1, 2, 3});
    println(List.map(snd, aListAgain) == List#{3, 4, 5});

    let anotherTuple =  ("Lucky", "Luke", 42, true); // 4-tuple
    let (firstName, _, _, _) = anotherTuple; // TODO::  How to omit extra underscores?
    println(firstName)