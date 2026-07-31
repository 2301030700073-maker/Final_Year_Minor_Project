package kotlin.reflect.jvm.internal.impl.util;

import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.Regex;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OperatorNameConventions {
    public static final Set ASSIGNMENT_OPERATIONS;
    public static final Set BINARY_OPERATION_NAMES;
    public static final Name COMPARE_TO;
    public static final Regex COMPONENT_REGEX;
    public static final Name CONTAINS;
    public static final Name DEC;
    public static final Name EQUALS;
    public static final Name GET;
    public static final Name GET_VALUE;
    public static final Name HAS_NEXT;
    public static final Name INC;
    public static final Name INVOKE;
    public static final Name ITERATOR;
    public static final Name NEXT;
    public static final Name PROVIDE_DELEGATE;
    public static final Name RANGE_TO;
    public static final Name RANGE_UNTIL;
    public static final Name SET;
    public static final Name SET_VALUE;
    public static final Set SIMPLE_UNARY_OPERATION_NAMES;

    static {
        Name identifier = Name.identifier("getValue");
        GET_VALUE = identifier;
        Name identifier2 = Name.identifier("setValue");
        SET_VALUE = identifier2;
        Name identifier3 = Name.identifier("provideDelegate");
        PROVIDE_DELEGATE = identifier3;
        Name identifier4 = Name.identifier("equals");
        EQUALS = identifier4;
        Name.identifier("hashCode");
        Name identifier5 = Name.identifier("compareTo");
        COMPARE_TO = identifier5;
        Name identifier6 = Name.identifier("contains");
        CONTAINS = identifier6;
        INVOKE = Name.identifier("invoke");
        ITERATOR = Name.identifier("iterator");
        GET = Name.identifier("get");
        SET = Name.identifier("set");
        NEXT = Name.identifier("next");
        HAS_NEXT = Name.identifier("hasNext");
        Name.identifier("toString");
        COMPONENT_REGEX = new Regex("component\\d+");
        Name identifier7 = Name.identifier("and");
        Name identifier8 = Name.identifier("or");
        Name identifier9 = Name.identifier("xor");
        Name identifier10 = Name.identifier("inv");
        Name identifier11 = Name.identifier("shl");
        Name identifier12 = Name.identifier("shr");
        Name identifier13 = Name.identifier("ushr");
        Name identifier14 = Name.identifier("inc");
        INC = identifier14;
        Name identifier15 = Name.identifier("dec");
        DEC = identifier15;
        Name identifier16 = Name.identifier("plus");
        Name identifier17 = Name.identifier("minus");
        Name identifier18 = Name.identifier("not");
        Name identifier19 = Name.identifier("unaryMinus");
        Name identifier20 = Name.identifier("unaryPlus");
        Name identifier21 = Name.identifier("times");
        Name identifier22 = Name.identifier("div");
        Name identifier23 = Name.identifier("mod");
        Name identifier24 = Name.identifier("rem");
        Name identifier25 = Name.identifier("rangeTo");
        RANGE_TO = identifier25;
        Name identifier26 = Name.identifier("rangeUntil");
        RANGE_UNTIL = identifier26;
        Name identifier27 = Name.identifier("timesAssign");
        Name identifier28 = Name.identifier("divAssign");
        Name identifier29 = Name.identifier("modAssign");
        Name identifier30 = Name.identifier("remAssign");
        Name identifier31 = Name.identifier("plusAssign");
        Name identifier32 = Name.identifier("minusAssign");
        ArraysKt___ArraysKt.toSet(new Name[]{identifier14, identifier15, identifier20, identifier19, identifier18, identifier10});
        SIMPLE_UNARY_OPERATION_NAMES = ArraysKt___ArraysKt.toSet(new Name[]{identifier20, identifier19, identifier18, identifier10});
        Set set = ArraysKt___ArraysKt.toSet(new Name[]{identifier21, identifier16, identifier17, identifier22, identifier23, identifier24, identifier25, identifier26});
        BINARY_OPERATION_NAMES = set;
        UuidKt.plus((Set) UuidKt.plus(set, (Iterable) ArraysKt___ArraysKt.toSet(new Name[]{identifier7, identifier8, identifier9, identifier10, identifier11, identifier12, identifier13})), (Iterable) ArraysKt___ArraysKt.toSet(new Name[]{identifier4, identifier6, identifier5}));
        ASSIGNMENT_OPERATIONS = ArraysKt___ArraysKt.toSet(new Name[]{identifier27, identifier28, identifier29, identifier30, identifier31, identifier32});
        ArraysKt___ArraysKt.toSet(new Name[]{identifier, identifier2, identifier3});
    }
}
