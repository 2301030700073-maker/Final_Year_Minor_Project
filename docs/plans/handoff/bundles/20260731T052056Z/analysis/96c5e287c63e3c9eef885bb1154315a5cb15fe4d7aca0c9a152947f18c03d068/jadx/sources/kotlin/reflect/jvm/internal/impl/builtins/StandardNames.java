package kotlin.reflect.jvm.internal.impl.builtins;

import androidx.room.Room;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StandardNames {
    public static final FqName ANNOTATION_PACKAGE_FQ_NAME;
    public static final FqName BUILT_INS_PACKAGE_FQ_NAME;
    public static final Set BUILT_INS_PACKAGE_FQ_NAMES;
    public static final Name BUILT_INS_PACKAGE_NAME;
    public static final FqName COLLECTIONS_PACKAGE_FQ_NAME;
    public static final Name CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME;
    public static final FqName CONTINUATION_INTERFACE_FQ_NAME;
    public static final FqName COROUTINES_PACKAGE_FQ_NAME;
    public static final Name ENUM_ENTRIES;
    public static final Name ENUM_VALUES;
    public static final Name ENUM_VALUE_OF;
    public static final FqName KOTLIN_INTERNAL_FQ_NAME;
    public static final FqName KOTLIN_REFLECT_FQ_NAME;
    public static final FqName RANGES_PACKAGE_FQ_NAME;
    public static final FqName RESULT_FQ_NAME;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class FqNames {
        public static final FqNameUnsafe _boolean;
        public static final FqNameUnsafe _enum;
        public static final FqName annotation;
        public static final FqName annotationRetention;
        public static final FqName annotationTarget;
        public static final FqNameUnsafe array;
        public static final HashMap arrayClassFqNameToPrimitiveType;
        public static final FqNameUnsafe charSequence;
        public static final FqName collection;
        public static final FqName comparable;
        public static final FqName contextFunctionTypeParams;
        public static final FqName deprecated;
        public static final FqName deprecationLevel;
        public static final FqName extensionFunctionType;
        public static final HashMap fqNameToPrimitiveType;
        public static final FqName iterable;
        public static final FqName iterator;
        public static final FqNameUnsafe kClass;
        public static final ClassId kProperty;
        public static final FqName list;
        public static final FqName listIterator;
        public static final FqName map;
        public static final FqName mapEntry;
        public static final FqName mustBeDocumented;
        public static final FqName mutableCollection;
        public static final FqName mutableIterable;
        public static final FqName mutableIterator;
        public static final FqName mutableList;
        public static final FqName mutableListIterator;
        public static final FqName mutableMap;
        public static final FqName mutableMapEntry;
        public static final FqName mutableSet;
        public static final FqNameUnsafe number;
        public static final FqName parameterName;
        public static final HashSet primitiveArrayTypeShortNames;
        public static final HashSet primitiveTypeShortNames;
        public static final FqName replaceWith;
        public static final FqName retention;
        public static final FqName set;
        public static final FqNameUnsafe string;
        public static final FqName target;
        public static final FqName throwable;
        public static final ClassId uByte;
        public static final FqName uByteArrayFqName;
        public static final ClassId uInt;
        public static final FqName uIntArrayFqName;
        public static final ClassId uLong;
        public static final FqName uLongArrayFqName;
        public static final ClassId uShort;
        public static final FqName uShortArrayFqName;
        public static final FqNameUnsafe unit;
        public static final FqName unsafeVariance;
        public static final FqNameUnsafe any = fqNameUnsafe("Any");
        public static final FqNameUnsafe nothing = fqNameUnsafe("Nothing");
        public static final FqNameUnsafe cloneable = fqNameUnsafe("Cloneable");

        static {
            fqName("Suppress");
            unit = fqNameUnsafe("Unit");
            charSequence = fqNameUnsafe("CharSequence");
            string = fqNameUnsafe("String");
            array = fqNameUnsafe("Array");
            _boolean = fqNameUnsafe("Boolean");
            fqNameUnsafe("Char");
            fqNameUnsafe("Byte");
            fqNameUnsafe("Short");
            fqNameUnsafe("Int");
            fqNameUnsafe("Long");
            fqNameUnsafe("Float");
            fqNameUnsafe("Double");
            number = fqNameUnsafe("Number");
            _enum = fqNameUnsafe("Enum");
            fqNameUnsafe("Function");
            throwable = fqName("Throwable");
            comparable = fqName("Comparable");
            FqName fqName = StandardNames.RANGES_PACKAGE_FQ_NAME;
            fqName.child(Name.identifier("IntRange")).toUnsafe().getClass();
            fqName.child(Name.identifier("LongRange")).toUnsafe().getClass();
            deprecated = fqName("Deprecated");
            fqName("DeprecatedSinceKotlin");
            deprecationLevel = fqName("DeprecationLevel");
            replaceWith = fqName("ReplaceWith");
            extensionFunctionType = fqName("ExtensionFunctionType");
            contextFunctionTypeParams = fqName("ContextFunctionTypeParams");
            FqName fqName2 = fqName("ParameterName");
            parameterName = fqName2;
            ClassId.topLevel(fqName2);
            annotation = fqName("Annotation");
            FqName annotationName = annotationName("Target");
            target = annotationName;
            ClassId.topLevel(annotationName);
            annotationTarget = annotationName("AnnotationTarget");
            annotationRetention = annotationName("AnnotationRetention");
            FqName annotationName2 = annotationName("Retention");
            retention = annotationName2;
            ClassId.topLevel(annotationName2);
            ClassId.topLevel(annotationName("Repeatable"));
            mustBeDocumented = annotationName("MustBeDocumented");
            unsafeVariance = fqName("UnsafeVariance");
            fqName("PublishedApi");
            StandardNames.KOTLIN_INTERNAL_FQ_NAME.child(Name.identifier("AccessibleLateinitPropertyLiteral"));
            iterator = collectionsFqName("Iterator");
            iterable = collectionsFqName("Iterable");
            collection = collectionsFqName("Collection");
            list = collectionsFqName("List");
            listIterator = collectionsFqName("ListIterator");
            set = collectionsFqName("Set");
            FqName collectionsFqName = collectionsFqName("Map");
            map = collectionsFqName;
            mapEntry = collectionsFqName.child(Name.identifier("Entry"));
            mutableIterator = collectionsFqName("MutableIterator");
            mutableIterable = collectionsFqName("MutableIterable");
            mutableCollection = collectionsFqName("MutableCollection");
            mutableList = collectionsFqName("MutableList");
            mutableListIterator = collectionsFqName("MutableListIterator");
            mutableSet = collectionsFqName("MutableSet");
            FqName collectionsFqName2 = collectionsFqName("MutableMap");
            mutableMap = collectionsFqName2;
            mutableMapEntry = collectionsFqName2.child(Name.identifier("MutableEntry"));
            kClass = reflect("KClass");
            reflect("KCallable");
            reflect("KProperty0");
            reflect("KProperty1");
            reflect("KProperty2");
            reflect("KMutableProperty0");
            reflect("KMutableProperty1");
            reflect("KMutableProperty2");
            FqNameUnsafe reflect = reflect("KProperty");
            reflect("KMutableProperty");
            kProperty = ClassId.topLevel(reflect.toSafe());
            reflect("KDeclarationContainer");
            FqName fqName3 = fqName("UByte");
            FqName fqName4 = fqName("UShort");
            FqName fqName5 = fqName("UInt");
            FqName fqName6 = fqName("ULong");
            uByte = ClassId.topLevel(fqName3);
            uShort = ClassId.topLevel(fqName4);
            uInt = ClassId.topLevel(fqName5);
            uLong = ClassId.topLevel(fqName6);
            uByteArrayFqName = fqName("UByteArray");
            uShortArrayFqName = fqName("UShortArray");
            uIntArrayFqName = fqName("UIntArray");
            uLongArrayFqName = fqName("ULongArray");
            int length = PrimitiveType.values().length;
            HashSet hashSet = new HashSet(length < 3 ? 3 : (length / 3) + length + 1);
            for (PrimitiveType primitiveType : PrimitiveType.values()) {
                hashSet.add(primitiveType.getTypeName());
            }
            primitiveTypeShortNames = hashSet;
            int length2 = PrimitiveType.values().length;
            HashSet hashSet2 = new HashSet(length2 < 3 ? 3 : (length2 / 3) + length2 + 1);
            for (PrimitiveType primitiveType2 : PrimitiveType.values()) {
                hashSet2.add(primitiveType2.getArrayTypeName());
            }
            primitiveArrayTypeShortNames = hashSet2;
            int length3 = PrimitiveType.values().length;
            HashMap hashMap = new HashMap(length3 < 3 ? 3 : (length3 / 3) + length3 + 1);
            for (PrimitiveType primitiveType3 : PrimitiveType.values()) {
                String asString = primitiveType3.getTypeName().asString();
                asString.getClass();
                hashMap.put(fqNameUnsafe(asString), primitiveType3);
            }
            fqNameToPrimitiveType = hashMap;
            int length4 = PrimitiveType.values().length;
            HashMap hashMap2 = new HashMap(length4 >= 3 ? (length4 / 3) + length4 + 1 : 3);
            for (PrimitiveType primitiveType4 : PrimitiveType.values()) {
                String asString2 = primitiveType4.getArrayTypeName().asString();
                asString2.getClass();
                hashMap2.put(fqNameUnsafe(asString2), primitiveType4);
            }
            arrayClassFqNameToPrimitiveType = hashMap2;
        }

        public static FqName annotationName(String str) {
            return StandardNames.ANNOTATION_PACKAGE_FQ_NAME.child(Name.identifier(str));
        }

        public static FqName collectionsFqName(String str) {
            return StandardNames.COLLECTIONS_PACKAGE_FQ_NAME.child(Name.identifier(str));
        }

        public static FqName fqName(String str) {
            return StandardNames.BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(str));
        }

        public static FqNameUnsafe fqNameUnsafe(String str) {
            FqNameUnsafe unsafe = fqName(str).toUnsafe();
            unsafe.getClass();
            return unsafe;
        }

        public static final FqNameUnsafe reflect(String str) {
            FqNameUnsafe unsafe = StandardNames.KOTLIN_REFLECT_FQ_NAME.child(Name.identifier(str)).toUnsafe();
            unsafe.getClass();
            return unsafe;
        }
    }

    static {
        Name.identifier("field");
        Name.identifier("value");
        ENUM_VALUES = Name.identifier("values");
        ENUM_ENTRIES = Name.identifier("entries");
        ENUM_VALUE_OF = Name.identifier("valueOf");
        Name.identifier("copy");
        Name.identifier("hashCode");
        Name.identifier("code");
        Name.identifier("nextChar");
        CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME = Name.identifier("count");
        new FqName("<dynamic>");
        FqName fqName = new FqName("kotlin.coroutines");
        COROUTINES_PACKAGE_FQ_NAME = fqName;
        new FqName("kotlin.coroutines.jvm.internal");
        new FqName("kotlin.coroutines.intrinsics");
        CONTINUATION_INTERFACE_FQ_NAME = fqName.child(Name.identifier("Continuation"));
        RESULT_FQ_NAME = new FqName("kotlin.Result");
        FqName fqName2 = new FqName("kotlin.reflect");
        KOTLIN_REFLECT_FQ_NAME = fqName2;
        Room.listOf((Object[]) new String[]{"KProperty", "KMutableProperty", "KFunction", "KSuspendFunction"});
        Name identifier = Name.identifier("kotlin");
        BUILT_INS_PACKAGE_NAME = identifier;
        FqName fqName3 = FqName.topLevel(identifier);
        BUILT_INS_PACKAGE_FQ_NAME = fqName3;
        FqName child = fqName3.child(Name.identifier("annotation"));
        ANNOTATION_PACKAGE_FQ_NAME = child;
        FqName child2 = fqName3.child(Name.identifier("collections"));
        COLLECTIONS_PACKAGE_FQ_NAME = child2;
        FqName child3 = fqName3.child(Name.identifier("ranges"));
        RANGES_PACKAGE_FQ_NAME = child3;
        fqName3.child(Name.identifier("text"));
        FqName child4 = fqName3.child(Name.identifier("internal"));
        KOTLIN_INTERNAL_FQ_NAME = child4;
        new FqName("error.NonExistentClass");
        BUILT_INS_PACKAGE_FQ_NAMES = ArraysKt___ArraysKt.toSet(new FqName[]{fqName3, child2, child3, child, fqName2, child4, fqName});
    }
}
