package kotlin.reflect.jvm.internal.impl.name;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: StandardClassIds.kt */
/* loaded from: classes2.dex */
public final class StandardClassIds {
    private static final ClassId Annotation;
    private static final ClassId AnnotationRetention;
    private static final ClassId AnnotationTarget;
    private static final ClassId Any;
    private static final ClassId Array;
    private static final FqName BASE_ANNOTATION_PACKAGE;
    private static final FqName BASE_COLLECTIONS_PACKAGE;
    private static final FqName BASE_CONCURRENT_PACKAGE;
    private static final FqName BASE_CONTRACTS_PACKAGE;
    private static final FqName BASE_COROUTINES_PACKAGE;
    private static final FqName BASE_ENUMS_PACKAGE;
    private static final FqName BASE_INTERNAL_IR_PACKAGE;
    private static final FqName BASE_INTERNAL_PACKAGE;
    private static final FqName BASE_JVM_FUNCTIONS_PACKAGE;
    private static final FqName BASE_JVM_INTERNAL_PACKAGE;
    private static final FqName BASE_JVM_PACKAGE;
    private static final FqName BASE_KOTLIN_PACKAGE;
    private static final FqName BASE_RANGES_PACKAGE;
    private static final FqName BASE_REFLECT_PACKAGE;
    private static final FqName BASE_TEST_PACKAGE;
    private static final ClassId Boolean;
    private static final ClassId Byte;
    private static final ClassId Char;
    private static final ClassId CharIterator;
    private static final ClassId CharRange;
    private static final ClassId CharSequence;
    private static final ClassId Cloneable;
    private static final ClassId Collection;
    private static final ClassId Comparable;
    private static final ClassId Continuation;
    private static final ClassId DeprecationLevel;
    private static final ClassId Double;
    private static final ClassId Enum;
    private static final ClassId EnumEntries;
    private static final ClassId Float;
    private static final ClassId Function;
    public static final StandardClassIds INSTANCE = new StandardClassIds();
    private static final ClassId Int;
    private static final ClassId IntRange;
    private static final ClassId Iterable;
    private static final ClassId Iterator;
    private static final ClassId KCallable;
    private static final ClassId KClass;
    private static final ClassId KFunction;
    private static final ClassId KMutableProperty;
    private static final ClassId KMutableProperty0;
    private static final ClassId KMutableProperty1;
    private static final ClassId KMutableProperty2;
    private static final ClassId KProperty;
    private static final ClassId KProperty0;
    private static final ClassId KProperty1;
    private static final ClassId KProperty2;
    private static final ClassId KType;
    private static final ClassId List;
    private static final ClassId ListIterator;
    private static final ClassId Long;
    private static final ClassId LongRange;
    private static final ClassId Map;
    private static final ClassId MapEntry;
    private static final ClassId MutableCollection;
    private static final ClassId MutableIterable;
    private static final ClassId MutableIterator;
    private static final ClassId MutableList;
    private static final ClassId MutableListIterator;
    private static final ClassId MutableMap;
    private static final ClassId MutableMapEntry;
    private static final ClassId MutableSet;
    private static final ClassId Nothing;
    private static final ClassId Number;
    private static final ClassId Result;
    private static final ClassId Set;
    private static final ClassId Short;
    private static final ClassId String;
    private static final ClassId Throwable;
    private static final ClassId UByte;
    private static final ClassId UInt;
    private static final ClassId ULong;
    private static final ClassId UShort;
    private static final ClassId Unit;
    private static final Set allBuiltinTypes;
    private static final Set builtInsPackages;
    private static final Set builtInsPackagesWithDefaultNamedImport;
    private static final Set constantAllowedTypes;
    private static final Map elementTypeByPrimitiveArrayType;
    private static final Map elementTypeByUnsignedArrayType;
    private static final Map primitiveArrayTypeByElementType;
    private static final Set primitiveTypes;
    private static final Set signedIntegerTypes;
    private static final Map unsignedArrayTypeByElementType;
    private static final Set unsignedTypes;

    private StandardClassIds() {
    }

    static {
        ClassId baseId;
        ClassId baseId2;
        ClassId baseId3;
        ClassId baseId4;
        ClassId baseId5;
        ClassId baseId6;
        ClassId baseId7;
        ClassId baseId8;
        ClassId baseId9;
        ClassId baseId10;
        ClassId baseId11;
        ClassId baseId12;
        ClassId baseId13;
        ClassId baseId14;
        ClassId unsignedId;
        ClassId unsignedId2;
        ClassId unsignedId3;
        ClassId unsignedId4;
        ClassId baseId15;
        ClassId baseId16;
        ClassId baseId17;
        ClassId baseId18;
        ClassId reflectId;
        ClassId reflectId2;
        ClassId reflectId3;
        ClassId reflectId4;
        ClassId reflectId5;
        ClassId reflectId6;
        ClassId reflectId7;
        ClassId reflectId8;
        ClassId reflectId9;
        ClassId reflectId10;
        ClassId reflectId11;
        ClassId reflectId12;
        ClassId baseId19;
        ClassId baseId20;
        ClassId baseId21;
        Map inverseMap;
        Map inverseMap2;
        ClassId coroutinesId;
        ClassId collectionsId;
        ClassId collectionsId2;
        ClassId collectionsId3;
        ClassId collectionsId4;
        ClassId collectionsId5;
        ClassId collectionsId6;
        ClassId collectionsId7;
        ClassId collectionsId8;
        ClassId collectionsId9;
        ClassId collectionsId10;
        ClassId collectionsId11;
        ClassId collectionsId12;
        ClassId collectionsId13;
        ClassId collectionsId14;
        ClassId collectionsId15;
        ClassId baseId22;
        ClassId rangesId;
        ClassId rangesId2;
        ClassId rangesId3;
        ClassId annotationId;
        ClassId annotationId2;
        ClassId baseId23;
        ClassId enumsId;
        ClassId primitiveArrayId;
        ClassId primitiveArrayId2;
        FqName fqName = new FqName("kotlin");
        BASE_KOTLIN_PACKAGE = fqName;
        FqName child = fqName.child(Name.identifier("reflect"));
        Intrinsics.checkNotNullExpressionValue(child, "child(...)");
        BASE_REFLECT_PACKAGE = child;
        FqName child2 = fqName.child(Name.identifier("collections"));
        Intrinsics.checkNotNullExpressionValue(child2, "child(...)");
        BASE_COLLECTIONS_PACKAGE = child2;
        FqName child3 = fqName.child(Name.identifier("ranges"));
        Intrinsics.checkNotNullExpressionValue(child3, "child(...)");
        BASE_RANGES_PACKAGE = child3;
        FqName child4 = fqName.child(Name.identifier("jvm"));
        Intrinsics.checkNotNullExpressionValue(child4, "child(...)");
        BASE_JVM_PACKAGE = child4;
        FqName child5 = child4.child(Name.identifier("internal"));
        Intrinsics.checkNotNullExpressionValue(child5, "child(...)");
        BASE_JVM_INTERNAL_PACKAGE = child5;
        FqName child6 = child4.child(Name.identifier("functions"));
        Intrinsics.checkNotNullExpressionValue(child6, "child(...)");
        BASE_JVM_FUNCTIONS_PACKAGE = child6;
        FqName child7 = fqName.child(Name.identifier("annotation"));
        Intrinsics.checkNotNullExpressionValue(child7, "child(...)");
        BASE_ANNOTATION_PACKAGE = child7;
        FqName child8 = fqName.child(Name.identifier("internal"));
        Intrinsics.checkNotNullExpressionValue(child8, "child(...)");
        BASE_INTERNAL_PACKAGE = child8;
        FqName child9 = child8.child(Name.identifier("ir"));
        Intrinsics.checkNotNullExpressionValue(child9, "child(...)");
        BASE_INTERNAL_IR_PACKAGE = child9;
        FqName child10 = fqName.child(Name.identifier("coroutines"));
        Intrinsics.checkNotNullExpressionValue(child10, "child(...)");
        BASE_COROUTINES_PACKAGE = child10;
        FqName child11 = fqName.child(Name.identifier("enums"));
        Intrinsics.checkNotNullExpressionValue(child11, "child(...)");
        BASE_ENUMS_PACKAGE = child11;
        FqName child12 = fqName.child(Name.identifier("contracts"));
        Intrinsics.checkNotNullExpressionValue(child12, "child(...)");
        BASE_CONTRACTS_PACKAGE = child12;
        FqName child13 = fqName.child(Name.identifier("concurrent"));
        Intrinsics.checkNotNullExpressionValue(child13, "child(...)");
        BASE_CONCURRENT_PACKAGE = child13;
        FqName child14 = fqName.child(Name.identifier("test"));
        Intrinsics.checkNotNullExpressionValue(child14, "child(...)");
        BASE_TEST_PACKAGE = child14;
        builtInsPackagesWithDefaultNamedImport = SetsKt.setOf((Object[]) new FqName[]{fqName, child2, child3, child7});
        builtInsPackages = SetsKt.setOf((Object[]) new FqName[]{fqName, child2, child3, child7, child, child8, child10});
        baseId = StandardClassIdsKt.baseId("Nothing");
        Nothing = baseId;
        baseId2 = StandardClassIdsKt.baseId("Unit");
        Unit = baseId2;
        baseId3 = StandardClassIdsKt.baseId("Any");
        Any = baseId3;
        baseId4 = StandardClassIdsKt.baseId("Enum");
        Enum = baseId4;
        baseId5 = StandardClassIdsKt.baseId("Annotation");
        Annotation = baseId5;
        baseId6 = StandardClassIdsKt.baseId("Array");
        Array = baseId6;
        baseId7 = StandardClassIdsKt.baseId("Boolean");
        Boolean = baseId7;
        baseId8 = StandardClassIdsKt.baseId("Char");
        Char = baseId8;
        baseId9 = StandardClassIdsKt.baseId("Byte");
        Byte = baseId9;
        baseId10 = StandardClassIdsKt.baseId("Short");
        Short = baseId10;
        baseId11 = StandardClassIdsKt.baseId("Int");
        Int = baseId11;
        baseId12 = StandardClassIdsKt.baseId("Long");
        Long = baseId12;
        baseId13 = StandardClassIdsKt.baseId("Float");
        Float = baseId13;
        baseId14 = StandardClassIdsKt.baseId("Double");
        Double = baseId14;
        unsignedId = StandardClassIdsKt.unsignedId(baseId9);
        UByte = unsignedId;
        unsignedId2 = StandardClassIdsKt.unsignedId(baseId10);
        UShort = unsignedId2;
        unsignedId3 = StandardClassIdsKt.unsignedId(baseId11);
        UInt = unsignedId3;
        unsignedId4 = StandardClassIdsKt.unsignedId(baseId12);
        ULong = unsignedId4;
        baseId15 = StandardClassIdsKt.baseId("CharSequence");
        CharSequence = baseId15;
        baseId16 = StandardClassIdsKt.baseId("String");
        String = baseId16;
        baseId17 = StandardClassIdsKt.baseId("Throwable");
        Throwable = baseId17;
        baseId18 = StandardClassIdsKt.baseId("Cloneable");
        Cloneable = baseId18;
        reflectId = StandardClassIdsKt.reflectId("KProperty");
        KProperty = reflectId;
        reflectId2 = StandardClassIdsKt.reflectId("KMutableProperty");
        KMutableProperty = reflectId2;
        reflectId3 = StandardClassIdsKt.reflectId("KProperty0");
        KProperty0 = reflectId3;
        reflectId4 = StandardClassIdsKt.reflectId("KMutableProperty0");
        KMutableProperty0 = reflectId4;
        reflectId5 = StandardClassIdsKt.reflectId("KProperty1");
        KProperty1 = reflectId5;
        reflectId6 = StandardClassIdsKt.reflectId("KMutableProperty1");
        KMutableProperty1 = reflectId6;
        reflectId7 = StandardClassIdsKt.reflectId("KProperty2");
        KProperty2 = reflectId7;
        reflectId8 = StandardClassIdsKt.reflectId("KMutableProperty2");
        KMutableProperty2 = reflectId8;
        reflectId9 = StandardClassIdsKt.reflectId("KFunction");
        KFunction = reflectId9;
        reflectId10 = StandardClassIdsKt.reflectId("KClass");
        KClass = reflectId10;
        reflectId11 = StandardClassIdsKt.reflectId("KCallable");
        KCallable = reflectId11;
        reflectId12 = StandardClassIdsKt.reflectId("KType");
        KType = reflectId12;
        baseId19 = StandardClassIdsKt.baseId("Comparable");
        Comparable = baseId19;
        baseId20 = StandardClassIdsKt.baseId("Number");
        Number = baseId20;
        baseId21 = StandardClassIdsKt.baseId("Function");
        Function = baseId21;
        Set of = SetsKt.setOf((Object[]) new ClassId[]{baseId7, baseId8, baseId9, baseId10, baseId11, baseId12, baseId13, baseId14});
        primitiveTypes = of;
        signedIntegerTypes = SetsKt.setOf((Object[]) new ClassId[]{baseId9, baseId10, baseId11, baseId12});
        Set set = of;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(set, 10)), 16));
        for (Object obj : set) {
            primitiveArrayId2 = StandardClassIdsKt.primitiveArrayId(((ClassId) obj).getShortClassName());
            linkedHashMap.put(obj, primitiveArrayId2);
        }
        primitiveArrayTypeByElementType = linkedHashMap;
        inverseMap = StandardClassIdsKt.inverseMap(linkedHashMap);
        elementTypeByPrimitiveArrayType = inverseMap;
        Set of2 = SetsKt.setOf((Object[]) new ClassId[]{UByte, UShort, UInt, ULong});
        unsignedTypes = of2;
        Set set2 = of2;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(set2, 10)), 16));
        for (Object obj2 : set2) {
            primitiveArrayId = StandardClassIdsKt.primitiveArrayId(((ClassId) obj2).getShortClassName());
            linkedHashMap2.put(obj2, primitiveArrayId);
        }
        unsignedArrayTypeByElementType = linkedHashMap2;
        inverseMap2 = StandardClassIdsKt.inverseMap(linkedHashMap2);
        elementTypeByUnsignedArrayType = inverseMap2;
        Set set3 = primitiveTypes;
        Set set4 = unsignedTypes;
        Set plus = SetsKt.plus(set3, (Iterable) set4);
        ClassId classId = String;
        constantAllowedTypes = SetsKt.plus(plus, classId);
        coroutinesId = StandardClassIdsKt.coroutinesId("Continuation");
        Continuation = coroutinesId;
        collectionsId = StandardClassIdsKt.collectionsId("Iterator");
        Iterator = collectionsId;
        collectionsId2 = StandardClassIdsKt.collectionsId("Iterable");
        Iterable = collectionsId2;
        collectionsId3 = StandardClassIdsKt.collectionsId("Collection");
        Collection = collectionsId3;
        collectionsId4 = StandardClassIdsKt.collectionsId("List");
        List = collectionsId4;
        collectionsId5 = StandardClassIdsKt.collectionsId("ListIterator");
        ListIterator = collectionsId5;
        collectionsId6 = StandardClassIdsKt.collectionsId("Set");
        Set = collectionsId6;
        collectionsId7 = StandardClassIdsKt.collectionsId("Map");
        Map = collectionsId7;
        collectionsId8 = StandardClassIdsKt.collectionsId("MutableIterator");
        MutableIterator = collectionsId8;
        collectionsId9 = StandardClassIdsKt.collectionsId("CharIterator");
        CharIterator = collectionsId9;
        collectionsId10 = StandardClassIdsKt.collectionsId("MutableIterable");
        MutableIterable = collectionsId10;
        collectionsId11 = StandardClassIdsKt.collectionsId("MutableCollection");
        MutableCollection = collectionsId11;
        collectionsId12 = StandardClassIdsKt.collectionsId("MutableList");
        MutableList = collectionsId12;
        collectionsId13 = StandardClassIdsKt.collectionsId("MutableListIterator");
        MutableListIterator = collectionsId13;
        collectionsId14 = StandardClassIdsKt.collectionsId("MutableSet");
        MutableSet = collectionsId14;
        collectionsId15 = StandardClassIdsKt.collectionsId("MutableMap");
        MutableMap = collectionsId15;
        Name identifier = Name.identifier("Entry");
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(...)");
        MapEntry = collectionsId7.createNestedClassId(identifier);
        Name identifier2 = Name.identifier("MutableEntry");
        Intrinsics.checkNotNullExpressionValue(identifier2, "identifier(...)");
        MutableMapEntry = collectionsId15.createNestedClassId(identifier2);
        baseId22 = StandardClassIdsKt.baseId("Result");
        Result = baseId22;
        rangesId = StandardClassIdsKt.rangesId("IntRange");
        IntRange = rangesId;
        rangesId2 = StandardClassIdsKt.rangesId("LongRange");
        LongRange = rangesId2;
        rangesId3 = StandardClassIdsKt.rangesId("CharRange");
        CharRange = rangesId3;
        annotationId = StandardClassIdsKt.annotationId("AnnotationRetention");
        AnnotationRetention = annotationId;
        annotationId2 = StandardClassIdsKt.annotationId("AnnotationTarget");
        AnnotationTarget = annotationId2;
        baseId23 = StandardClassIdsKt.baseId("DeprecationLevel");
        DeprecationLevel = baseId23;
        enumsId = StandardClassIdsKt.enumsId("EnumEntries");
        EnumEntries = enumsId;
        allBuiltinTypes = SetsKt.plus(SetsKt.plus(SetsKt.plus(SetsKt.plus(SetsKt.plus(set3, (Iterable) set4), classId), Unit), Any), Enum);
    }

    public final FqName getBASE_KOTLIN_PACKAGE() {
        return BASE_KOTLIN_PACKAGE;
    }

    public final FqName getBASE_REFLECT_PACKAGE() {
        return BASE_REFLECT_PACKAGE;
    }

    public final FqName getBASE_COLLECTIONS_PACKAGE() {
        return BASE_COLLECTIONS_PACKAGE;
    }

    public final FqName getBASE_RANGES_PACKAGE() {
        return BASE_RANGES_PACKAGE;
    }

    public final FqName getBASE_ANNOTATION_PACKAGE() {
        return BASE_ANNOTATION_PACKAGE;
    }

    public final FqName getBASE_COROUTINES_PACKAGE() {
        return BASE_COROUTINES_PACKAGE;
    }

    public final FqName getBASE_ENUMS_PACKAGE() {
        return BASE_ENUMS_PACKAGE;
    }

    public final ClassId getArray() {
        return Array;
    }

    public final ClassId getKFunction() {
        return KFunction;
    }

    public final ClassId getKClass() {
        return KClass;
    }

    public final ClassId getMutableList() {
        return MutableList;
    }

    public final ClassId getMutableSet() {
        return MutableSet;
    }

    public final ClassId getMutableMap() {
        return MutableMap;
    }

    public final ClassId getEnumEntries() {
        return EnumEntries;
    }
}
