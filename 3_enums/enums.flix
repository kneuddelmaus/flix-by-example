// Simple Enum
enum Animal {
    case Cat,
    case Dog,
    case Giraffe
}

def isTall(a: Animal): Bool = match a {
    case Animal.Cat        => false
    case Animal.Dog        => false
    case Animal.Giraffe    => true
}

// Recursive Types
enum Tree {
    case Leaf(Int32),
    case Node(Tree, Tree)
}
// Recursive pattern match
def sum(t: Tree): Int32 = match t {
    case Tree.Leaf(x)    => x
    case Tree.Node(l, r) => sum(l) + sum(r)
}

// Polymorphic Types
enum Bottle[a] {
    case Empty,
    case Full(a)
}

def isEmpty(b: Bottle[a]): Bool = match b {
    case Bottle.Empty => true
    case Bottle.Full(_) => false
}

def main(): Unit \ IO = 
    println(isTall(Animal.Cat));
    println(isTall(Animal.Giraffe));
    // Recursive types
    println(sum(Tree.Node(Tree.Leaf(10), Tree.Node(Tree.Leaf(20), Tree.Leaf(30)))));
    // Polymorphic Types
    println(isEmpty(Bottle.Empty()));
    println(isEmpty(Bottle.Full("You got beer!!")))