package kotlin.reflect.jvm.internal.impl.name;

import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StandardClassIds {
    public static final ClassId Array;
    public static final FqName BASE_ANNOTATION_PACKAGE;
    public static final FqName BASE_COLLECTIONS_PACKAGE;
    public static final FqName BASE_COROUTINES_PACKAGE;
    public static final FqName BASE_ENUMS_PACKAGE;
    public static final FqName BASE_KOTLIN_PACKAGE;
    public static final FqName BASE_RANGES_PACKAGE;
    public static final FqName BASE_REFLECT_PACKAGE;
    public static final ClassId EnumEntries;
    public static final ClassId KFunction;
    public static final ClassId MutableList;
    public static final ClassId MutableMap;
    public static final ClassId MutableSet;
    public static final ClassId String;
    public static final ClassId UByte;
    public static final ClassId UInt;
    public static final ClassId ULong;
    public static final ClassId UShort;
    public static final Set primitiveTypes;
    public static final Set unsignedTypes;

    static {
        FqName fqName = new FqName("kotlin");
        BASE_KOTLIN_PACKAGE = fqName;
        FqName child = fqName.child(Name.identifier("reflect"));
        BASE_REFLECT_PACKAGE = child;
        FqName child2 = fqName.child(Name.identifier("collections"));
        BASE_COLLECTIONS_PACKAGE = child2;
        FqName child3 = fqName.child(Name.identifier("ranges"));
        BASE_RANGES_PACKAGE = child3;
        fqName.child(Name.identifier("jvm")).child(Name.identifier("internal"));
        FqName child4 = fqName.child(Name.identifier("annotation"));
        BASE_ANNOTATION_PACKAGE = child4;
        FqName child5 = fqName.child(Name.identifier("internal"));
        child5.child(Name.identifier("ir"));
        FqName child6 = fqName.child(Name.identifier("coroutines"));
        BASE_COROUTINES_PACKAGE = child6;
        BASE_ENUMS_PACKAGE = fqName.child(Name.identifier("enums"));
        ArraysKt___ArraysKt.toSet(new FqName[]{fqName, child2, child3, child4, child, child5, child6});
        StandardClassIdsKt.baseId("Nothing");
        StandardClassIdsKt.baseId("Unit");
        StandardClassIdsKt.baseId("Any");
        StandardClassIdsKt.baseId("Enum");
        StandardClassIdsKt.baseId("Annotation");
        Array = StandardClassIdsKt.baseId("Array");
        ClassId baseId = StandardClassIdsKt.baseId("Boolean");
        ClassId baseId2 = StandardClassIdsKt.baseId("Char");
        ClassId baseId3 = StandardClassIdsKt.baseId("Byte");
        ClassId baseId4 = StandardClassIdsKt.baseId("Short");
        ClassId baseId5 = StandardClassIdsKt.baseId("Int");
        ClassId baseId6 = StandardClassIdsKt.baseId("Long");
        ClassId baseId7 = StandardClassIdsKt.baseId("Float");
        ClassId baseId8 = StandardClassIdsKt.baseId("Double");
        UByte = StandardClassIdsKt.unsignedId(baseId3);
        UShort = StandardClassIdsKt.unsignedId(baseId4);
        UInt = StandardClassIdsKt.unsignedId(baseId5);
        ULong = StandardClassIdsKt.unsignedId(baseId6);
        StandardClassIdsKt.baseId("CharSequence");
        String = StandardClassIdsKt.baseId("String");
        StandardClassIdsKt.baseId("Throwable");
        StandardClassIdsKt.baseId("Cloneable");
        StandardClassIdsKt.reflectId("KProperty");
        StandardClassIdsKt.reflectId("KMutableProperty");
        StandardClassIdsKt.reflectId("KProperty0");
        StandardClassIdsKt.reflectId("KMutableProperty0");
        StandardClassIdsKt.reflectId("KProperty1");
        StandardClassIdsKt.reflectId("KMutableProperty1");
        StandardClassIdsKt.reflectId("KProperty2");
        StandardClassIdsKt.reflectId("KMutableProperty2");
        KFunction = StandardClassIdsKt.reflectId("KFunction");
        StandardClassIdsKt.reflectId("KClass");
        StandardClassIdsKt.reflectId("KCallable");
        StandardClassIdsKt.baseId("Comparable");
        StandardClassIdsKt.baseId("Number");
        StandardClassIdsKt.baseId("Function");
        Set set = ArraysKt___ArraysKt.toSet(new ClassId[]{baseId, baseId2, baseId3, baseId4, baseId5, baseId6, baseId7, baseId8});
        primitiveTypes = set;
        Set set2 = set;
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        for (Object obj : set2) {
            Name shortClassName = ((ClassId) obj).getShortClassName();
            shortClassName.getClass();
            linkedHashMap.put(obj, StandardClassIdsKt.primitiveArrayId(shortClassName));
        }
        StandardClassIdsKt.inverseMap(linkedHashMap);
        Set set3 = ArraysKt___ArraysKt.toSet(new ClassId[]{UByte, UShort, UInt, ULong});
        unsignedTypes = set3;
        Set set4 = set3;
        int mapCapacity2 = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set4, 10));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity2 >= 16 ? mapCapacity2 : 16);
        for (Object obj2 : set4) {
            Name shortClassName2 = ((ClassId) obj2).getShortClassName();
            shortClassName2.getClass();
            linkedHashMap2.put(obj2, StandardClassIdsKt.primitiveArrayId(shortClassName2));
        }
        StandardClassIdsKt.inverseMap(linkedHashMap2);
        UuidKt.plus(UuidKt.plus(primitiveTypes, (Iterable) unsignedTypes), String);
        FqName fqName2 = BASE_COROUTINES_PACKAGE;
        Name identifier = Name.identifier("Continuation");
        if (fqName2 == null) {
            ClassId.$$$reportNull$$$0(3);
            throw null;
        }
        FqName.topLevel(identifier);
        StandardClassIdsKt.collectionsId("Iterator");
        StandardClassIdsKt.collectionsId("Iterable");
        StandardClassIdsKt.collectionsId("Collection");
        StandardClassIdsKt.collectionsId("List");
        StandardClassIdsKt.collectionsId("ListIterator");
        StandardClassIdsKt.collectionsId("Set");
        ClassId collectionsId = StandardClassIdsKt.collectionsId("Map");
        StandardClassIdsKt.collectionsId("MutableIterator");
        StandardClassIdsKt.collectionsId("CharIterator");
        StandardClassIdsKt.collectionsId("MutableIterable");
        StandardClassIdsKt.collectionsId("MutableCollection");
        MutableList = StandardClassIdsKt.collectionsId("MutableList");
        StandardClassIdsKt.collectionsId("MutableListIterator");
        MutableSet = StandardClassIdsKt.collectionsId("MutableSet");
        ClassId collectionsId2 = StandardClassIdsKt.collectionsId("MutableMap");
        MutableMap = collectionsId2;
        collectionsId.createNestedClassId(Name.identifier("Entry"));
        collectionsId2.createNestedClassId(Name.identifier("MutableEntry"));
        StandardClassIdsKt.baseId("Result");
        FqName fqName3 = BASE_RANGES_PACKAGE;
        Name identifier2 = Name.identifier("IntRange");
        if (fqName3 == null) {
            ClassId.$$$reportNull$$$0(3);
            throw null;
        }
        FqName.topLevel(identifier2);
        FqName.topLevel(Name.identifier("LongRange"));
        FqName.topLevel(Name.identifier("CharRange"));
        FqName fqName4 = BASE_ANNOTATION_PACKAGE;
        Name identifier3 = Name.identifier("AnnotationRetention");
        if (fqName4 == null) {
            ClassId.$$$reportNull$$$0(3);
            throw null;
        }
        FqName.topLevel(identifier3);
        FqName.topLevel(Name.identifier("AnnotationTarget"));
        EnumEntries = new ClassId(BASE_ENUMS_PACKAGE, Name.identifier("EnumEntries"));
    }
}
