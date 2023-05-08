/// An algebraic data type for binary trees with leaves.
enum Tree[a] {
    case Leaf(a),
    case Node(Tree[a], Tree[a])
}

/// A higher-order function that transforms a tree with
/// elements of type `a` to a tree with elements of type `b`.
def map(f: a -> b, t: Tree[a]): Tree[b] = match t {
    case Tree.Leaf(x)    => Tree.Leaf(f(x))
    case Tree.Node(l, r) => Tree.Node(map(f, l), map(f, r))
}

/// A function that computes the sum of all leaves in a tree.
def sum(t: Tree[Int32]): Int32 = match t {
    case Tree.Leaf(x)    => x
    case Tree.Node(l, r) => sum(l) + sum(r)
}

def main(): Unit \ IO =
    let t1 = Tree.Node(Tree.Leaf("Hello"), Tree.Leaf("World"));
    let t2 = map(String.length, t1);
    println(sum(t2))


/// Shorthand Enum Syntax
// enum Weekday {
//     case Monday,
//     case Tuesday,
//     case Wednesday,
//     case Thursday,
//     case Friday,
//     case Saturday,
//     case Sunday
// }

// The same enum can also be declared as:
// enum Weekday {
//     case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
// }

// Singleton Enum Syntax
// An enum with a single case:

// enum USD {
//   case USD(Int32)
// }

// can be shortened to:

// enum USD(Int32)
