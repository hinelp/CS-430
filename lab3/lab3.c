typedef enum {INT, FLOAT, DOUBLE} tag_t;

typedef union {
    int integer;
    float floater;
    double doubley;
} value_t;

typedef struct {
    tag_t tag;
    value_t value;
} number_t;

number_t create_int (int integer){
    number_t num;
    num.tag = INT;
    num.value.integer = integer;
    return num;
}
number_t create_float (float floater){
    number_t num;
    num.tag = FLOAT;
    num.value.floater = floater;
    return num;
}
number_t create_double (double doubley){
    number_t num;
    num.tag = DOUBLE;
    num.value.doubley = doubley;
    return num;
}

number_t negate (number_t num){
    switch (num.tag)
    {
    case INT:
        num.value.integer *= -1;
        break;
    case FLOAT:
        num.value.floater *= -1;
        break;
    case DOUBLE:
        num.value.doubley *= -1;
        break;
    }
    return num;
}

number_t add (number_t numOne, number_t numTwo) {
    if (numOne.tag != numTwo.tag) {
        perror("I can't believe you really tried to add numbers with a different type. Why would you do this to me?");
        exit(5);
    }

    number_t sum;
    sum.tag = numOne.tag;
    switch (sum.tag) 
    {
    case INT:
        sum.value.integer = numOne.value.integer + numTwo.value.integer;
        break;
    case FLOAT:
        sum.value.floater = numOne.value.floater + numTwo.value.floater;
        break;
    case DOUBLE:
        sum.value.doubley = numOne.value.doubley + numTwo.value.doubley;
        break;
    }

    return sum;
}
