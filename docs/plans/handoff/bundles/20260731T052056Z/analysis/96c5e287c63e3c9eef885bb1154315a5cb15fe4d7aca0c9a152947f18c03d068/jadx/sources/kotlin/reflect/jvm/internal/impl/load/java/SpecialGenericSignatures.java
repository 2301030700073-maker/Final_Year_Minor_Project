package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SpecialGenericSignatures {
    public static final ArrayList ERASED_COLLECTION_PARAMETER_NAME_AND_SIGNATURES;
    public static final ArrayList ERASED_COLLECTION_PARAMETER_SIGNATURES;
    public static final Set ERASED_VALUE_PARAMETERS_SHORT_NAMES;
    public static final Set ERASED_VALUE_PARAMETERS_SIGNATURES;
    public static final Map GENERIC_PARAMETERS_METHODS_TO_DEFAULT_VALUES_MAP;
    public static final LinkedHashMap JVM_SHORT_NAME_TO_BUILTIN_SHORT_NAMES_MAP;
    public static final Map NAME_AND_SIGNATURE_TO_JVM_REPRESENTATION_NAME_MAP;
    public static final ArrayList ORIGINAL_SHORT_NAMES;
    public static final SpecialGenericSignatures$Companion$NameAndSignature REMOVE_AT_NAME_AND_SIGNATURE;
    public static final LinkedHashMap SIGNATURE_TO_DEFAULT_VALUES_MAP;
    public static final LinkedHashMap SIGNATURE_TO_JVM_REPRESENTATION_NAME;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum SpecialSignatureInfo {
        ONE_COLLECTION_PARAMETER("Ljava/util/Collection<+Ljava/lang/Object;>;", false),
        OBJECT_PARAMETER_NON_GENERIC(null, true),
        OBJECT_PARAMETER_GENERIC("Ljava/lang/Object;", true);

        private final boolean isObjectReplacedWithTypeParameter;
        private final String valueParametersSignature;

        SpecialSignatureInfo(String str, boolean z) {
            this.valueParametersSignature = str;
            this.isObjectReplacedWithTypeParameter = z;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class TypeSafeBarrierDescription {
        private static final /* synthetic */ TypeSafeBarrierDescription[] $VALUES;
        public static final TypeSafeBarrierDescription FALSE;
        public static final TypeSafeBarrierDescription INDEX;
        public static final TypeSafeBarrierDescription MAP_GET_OR_DEFAULT;
        public static final TypeSafeBarrierDescription NULL;
        private final Object defaultValue;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class MAP_GET_OR_DEFAULT extends TypeSafeBarrierDescription {
        }

        static {
            TypeSafeBarrierDescription typeSafeBarrierDescription = new TypeSafeBarrierDescription("NULL", null, 0);
            NULL = typeSafeBarrierDescription;
            TypeSafeBarrierDescription typeSafeBarrierDescription2 = new TypeSafeBarrierDescription("INDEX", -1, 1);
            INDEX = typeSafeBarrierDescription2;
            TypeSafeBarrierDescription typeSafeBarrierDescription3 = new TypeSafeBarrierDescription("FALSE", Boolean.FALSE, 2);
            FALSE = typeSafeBarrierDescription3;
            MAP_GET_OR_DEFAULT map_get_or_default = new MAP_GET_OR_DEFAULT("MAP_GET_OR_DEFAULT", null, 3);
            MAP_GET_OR_DEFAULT = map_get_or_default;
            $VALUES = new TypeSafeBarrierDescription[]{typeSafeBarrierDescription, typeSafeBarrierDescription2, typeSafeBarrierDescription3, map_get_or_default};
        }

        public TypeSafeBarrierDescription(String str, Object obj, int i) {
            this.defaultValue = obj;
        }

        public static TypeSafeBarrierDescription valueOf(String str) {
            return (TypeSafeBarrierDescription) Enum.valueOf(TypeSafeBarrierDescription.class, str);
        }

        public static TypeSafeBarrierDescription[] values() {
            return (TypeSafeBarrierDescription[]) $VALUES.clone();
        }
    }

    static {
        Set<String> set = ArraysKt___ArraysKt.toSet(new String[]{"containsAll", "removeAll", "retainAll"});
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set, 10));
        for (String str : set) {
            String desc = JvmPrimitiveType.BOOLEAN.getDesc();
            desc.getClass();
            arrayList.add(TuplesKt.method("java/util/Collection", str, "Ljava/util/Collection;", desc));
        }
        ERASED_COLLECTION_PARAMETER_NAME_AND_SIGNATURES = arrayList;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((SpecialGenericSignatures$Companion$NameAndSignature) it.next()).signature);
        }
        ERASED_COLLECTION_PARAMETER_SIGNATURES = arrayList2;
        ArrayList arrayList3 = ERASED_COLLECTION_PARAMETER_NAME_AND_SIGNATURES;
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((SpecialGenericSignatures$Companion$NameAndSignature) it2.next()).name.asString());
        }
        String concat = "java/util/".concat("Collection");
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.BOOLEAN;
        String desc2 = jvmPrimitiveType.getDesc();
        desc2.getClass();
        SpecialGenericSignatures$Companion$NameAndSignature method = TuplesKt.method(concat, "contains", "Ljava/lang/Object;", desc2);
        TypeSafeBarrierDescription typeSafeBarrierDescription = TypeSafeBarrierDescription.FALSE;
        Pair pair = new Pair(method, typeSafeBarrierDescription);
        String concat2 = "java/util/".concat("Collection");
        String desc3 = jvmPrimitiveType.getDesc();
        desc3.getClass();
        Pair pair2 = new Pair(TuplesKt.method(concat2, "remove", "Ljava/lang/Object;", desc3), typeSafeBarrierDescription);
        String concat3 = "java/util/".concat("Map");
        String desc4 = jvmPrimitiveType.getDesc();
        desc4.getClass();
        Pair pair3 = new Pair(TuplesKt.method(concat3, "containsKey", "Ljava/lang/Object;", desc4), typeSafeBarrierDescription);
        String concat4 = "java/util/".concat("Map");
        String desc5 = jvmPrimitiveType.getDesc();
        desc5.getClass();
        Pair pair4 = new Pair(TuplesKt.method(concat4, "containsValue", "Ljava/lang/Object;", desc5), typeSafeBarrierDescription);
        String concat5 = "java/util/".concat("Map");
        String desc6 = jvmPrimitiveType.getDesc();
        desc6.getClass();
        Pair pair5 = new Pair(TuplesKt.method(concat5, "remove", "Ljava/lang/Object;Ljava/lang/Object;", desc6), typeSafeBarrierDescription);
        Pair pair6 = new Pair(TuplesKt.method("java/util/".concat("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), TypeSafeBarrierDescription.MAP_GET_OR_DEFAULT);
        SpecialGenericSignatures$Companion$NameAndSignature method2 = TuplesKt.method("java/util/".concat("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;");
        TypeSafeBarrierDescription typeSafeBarrierDescription2 = TypeSafeBarrierDescription.NULL;
        Pair pair7 = new Pair(method2, typeSafeBarrierDescription2);
        Pair pair8 = new Pair(TuplesKt.method("java/util/".concat("Map"), "remove", "Ljava/lang/Object;", "Ljava/lang/Object;"), typeSafeBarrierDescription2);
        String concat6 = "java/util/".concat("List");
        JvmPrimitiveType jvmPrimitiveType2 = JvmPrimitiveType.INT;
        String desc7 = jvmPrimitiveType2.getDesc();
        desc7.getClass();
        SpecialGenericSignatures$Companion$NameAndSignature method3 = TuplesKt.method(concat6, "indexOf", "Ljava/lang/Object;", desc7);
        TypeSafeBarrierDescription typeSafeBarrierDescription3 = TypeSafeBarrierDescription.INDEX;
        Pair pair9 = new Pair(method3, typeSafeBarrierDescription3);
        String concat7 = "java/util/".concat("List");
        String desc8 = jvmPrimitiveType2.getDesc();
        desc8.getClass();
        Map mapOf = MapsKt__MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, pair9, new Pair(TuplesKt.method(concat7, "lastIndexOf", "Ljava/lang/Object;", desc8), typeSafeBarrierDescription3));
        GENERIC_PARAMETERS_METHODS_TO_DEFAULT_VALUES_MAP = mapOf;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(mapOf.size()));
        for (Map.Entry entry : mapOf.entrySet()) {
            linkedHashMap.put(((SpecialGenericSignatures$Companion$NameAndSignature) entry.getKey()).signature, entry.getValue());
        }
        SIGNATURE_TO_DEFAULT_VALUES_MAP = linkedHashMap;
        LinkedHashSet plus = UuidKt.plus(GENERIC_PARAMETERS_METHODS_TO_DEFAULT_VALUES_MAP.keySet(), (Iterable) ERASED_COLLECTION_PARAMETER_NAME_AND_SIGNATURES);
        ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(plus, 10));
        Iterator it3 = plus.iterator();
        while (it3.hasNext()) {
            arrayList5.add(((SpecialGenericSignatures$Companion$NameAndSignature) it3.next()).name);
        }
        ERASED_VALUE_PARAMETERS_SHORT_NAMES = CollectionsKt.toSet(arrayList5);
        ArrayList arrayList6 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(plus, 10));
        Iterator it4 = plus.iterator();
        while (it4.hasNext()) {
            arrayList6.add(((SpecialGenericSignatures$Companion$NameAndSignature) it4.next()).signature);
        }
        ERASED_VALUE_PARAMETERS_SIGNATURES = CollectionsKt.toSet(arrayList6);
        JvmPrimitiveType jvmPrimitiveType3 = JvmPrimitiveType.INT;
        String desc9 = jvmPrimitiveType3.getDesc();
        desc9.getClass();
        SpecialGenericSignatures$Companion$NameAndSignature method4 = TuplesKt.method("java/util/List", "removeAt", desc9, "Ljava/lang/Object;");
        REMOVE_AT_NAME_AND_SIGNATURE = method4;
        String concat8 = "java/lang/".concat("Number");
        String desc10 = JvmPrimitiveType.BYTE.getDesc();
        desc10.getClass();
        Pair pair10 = new Pair(TuplesKt.method(concat8, "toByte", "", desc10), Name.identifier("byteValue"));
        String concat9 = "java/lang/".concat("Number");
        String desc11 = JvmPrimitiveType.SHORT.getDesc();
        desc11.getClass();
        Pair pair11 = new Pair(TuplesKt.method(concat9, "toShort", "", desc11), Name.identifier("shortValue"));
        String concat10 = "java/lang/".concat("Number");
        String desc12 = jvmPrimitiveType3.getDesc();
        desc12.getClass();
        Pair pair12 = new Pair(TuplesKt.method(concat10, "toInt", "", desc12), Name.identifier("intValue"));
        String concat11 = "java/lang/".concat("Number");
        String desc13 = JvmPrimitiveType.LONG.getDesc();
        desc13.getClass();
        Pair pair13 = new Pair(TuplesKt.method(concat11, "toLong", "", desc13), Name.identifier("longValue"));
        String concat12 = "java/lang/".concat("Number");
        String desc14 = JvmPrimitiveType.FLOAT.getDesc();
        desc14.getClass();
        Pair pair14 = new Pair(TuplesKt.method(concat12, "toFloat", "", desc14), Name.identifier("floatValue"));
        String concat13 = "java/lang/".concat("Number");
        String desc15 = JvmPrimitiveType.DOUBLE.getDesc();
        desc15.getClass();
        Pair pair15 = new Pair(TuplesKt.method(concat13, "toDouble", "", desc15), Name.identifier("doubleValue"));
        Pair pair16 = new Pair(method4, Name.identifier("remove"));
        String concat14 = "java/lang/".concat("CharSequence");
        String desc16 = jvmPrimitiveType3.getDesc();
        desc16.getClass();
        String desc17 = JvmPrimitiveType.CHAR.getDesc();
        desc17.getClass();
        Map mapOf2 = MapsKt__MapsKt.mapOf(pair10, pair11, pair12, pair13, pair14, pair15, pair16, new Pair(TuplesKt.method(concat14, "get", desc16, desc17), Name.identifier("charAt")));
        NAME_AND_SIGNATURE_TO_JVM_REPRESENTATION_NAME_MAP = mapOf2;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(mapOf2.size()));
        for (Map.Entry entry2 : mapOf2.entrySet()) {
            linkedHashMap2.put(((SpecialGenericSignatures$Companion$NameAndSignature) entry2.getKey()).signature, entry2.getValue());
        }
        SIGNATURE_TO_JVM_REPRESENTATION_NAME = linkedHashMap2;
        Set keySet = NAME_AND_SIGNATURE_TO_JVM_REPRESENTATION_NAME_MAP.keySet();
        ArrayList arrayList7 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(keySet, 10));
        Iterator it5 = keySet.iterator();
        while (it5.hasNext()) {
            arrayList7.add(((SpecialGenericSignatures$Companion$NameAndSignature) it5.next()).name);
        }
        ORIGINAL_SHORT_NAMES = arrayList7;
        Set<Map.Entry> entrySet = NAME_AND_SIGNATURE_TO_JVM_REPRESENTATION_NAME_MAP.entrySet();
        ArrayList arrayList8 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entrySet, 10));
        for (Map.Entry entry3 : entrySet) {
            arrayList8.add(new Pair(((SpecialGenericSignatures$Companion$NameAndSignature) entry3.getKey()).name, entry3.getValue()));
        }
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList8, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(mapCapacity);
        Iterator it6 = arrayList8.iterator();
        while (it6.hasNext()) {
            Pair pair17 = (Pair) it6.next();
            linkedHashMap3.put((Name) pair17.second, (Name) pair17.first);
        }
        JVM_SHORT_NAME_TO_BUILTIN_SHORT_NAMES_MAP = linkedHashMap3;
    }
}
