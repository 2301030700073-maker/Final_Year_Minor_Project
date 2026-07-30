package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: BuiltinSpecialProperties.kt */
/* loaded from: classes2.dex */
public final class BuiltinSpecialProperties {
    private static final Set GETTER_FQ_NAMES;
    private static final Map GETTER_JVM_NAME_TO_PROPERTIES_SHORT_NAME_MAP;
    public static final BuiltinSpecialProperties INSTANCE = new BuiltinSpecialProperties();
    private static final Map PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP;
    private static final Set SPECIAL_FQ_NAMES;
    private static final Set SPECIAL_SHORT_NAMES;

    private BuiltinSpecialProperties() {
    }

    public final Map getPROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP() {
        return PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP;
    }

    static {
        FqName childSafe;
        FqName childSafe2;
        FqName child;
        FqName child2;
        FqName childSafe3;
        FqName child3;
        FqName child4;
        FqName child5;
        FqNameUnsafe fqNameUnsafe = StandardNames.FqNames._enum;
        childSafe = BuiltinSpecialPropertiesKt.childSafe(fqNameUnsafe, "name");
        Pair pair = TuplesKt.to(childSafe, StandardNames.NAME);
        childSafe2 = BuiltinSpecialPropertiesKt.childSafe(fqNameUnsafe, "ordinal");
        Pair pair2 = TuplesKt.to(childSafe2, Name.identifier("ordinal"));
        child = BuiltinSpecialPropertiesKt.child(StandardNames.FqNames.collection, "size");
        Pair pair3 = TuplesKt.to(child, Name.identifier("size"));
        FqName fqName = StandardNames.FqNames.map;
        child2 = BuiltinSpecialPropertiesKt.child(fqName, "size");
        Pair pair4 = TuplesKt.to(child2, Name.identifier("size"));
        childSafe3 = BuiltinSpecialPropertiesKt.childSafe(StandardNames.FqNames.charSequence, "length");
        Pair pair5 = TuplesKt.to(childSafe3, Name.identifier("length"));
        child3 = BuiltinSpecialPropertiesKt.child(fqName, "keys");
        Pair pair6 = TuplesKt.to(child3, Name.identifier("keySet"));
        child4 = BuiltinSpecialPropertiesKt.child(fqName, "values");
        Pair pair7 = TuplesKt.to(child4, Name.identifier("values"));
        child5 = BuiltinSpecialPropertiesKt.child(fqName, "entries");
        Map mapOf = MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, pair7, TuplesKt.to(child5, Name.identifier("entrySet")));
        PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP = mapOf;
        Set<Map.Entry> entrySet = mapOf.entrySet();
        ArrayList<Pair> arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(entrySet, 10));
        for (Map.Entry entry : entrySet) {
            arrayList.add(new Pair(((FqName) entry.getKey()).shortName(), entry.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Pair pair8 : arrayList) {
            Name name = (Name) pair8.getSecond();
            Object obj = linkedHashMap.get(name);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(name, obj);
            }
            ((List) obj).add((Name) pair8.getFirst());
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry2.getKey(), CollectionsKt.distinct((Iterable) entry2.getValue()));
        }
        GETTER_JVM_NAME_TO_PROPERTIES_SHORT_NAME_MAP = linkedHashMap2;
        Map map = PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry entry3 : map.entrySet()) {
            JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.INSTANCE;
            FqNameUnsafe unsafe = ((FqName) entry3.getKey()).parent().toUnsafe();
            Intrinsics.checkNotNullExpressionValue(unsafe, "toUnsafe(...)");
            ClassId mapKotlinToJava = javaToKotlinClassMap.mapKotlinToJava(unsafe);
            Intrinsics.checkNotNull(mapKotlinToJava);
            linkedHashSet.add(mapKotlinToJava.asSingleFqName().child((Name) entry3.getValue()));
        }
        GETTER_FQ_NAMES = linkedHashSet;
        Set keySet = PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP.keySet();
        SPECIAL_FQ_NAMES = keySet;
        Set set = keySet;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList2.add(((FqName) it.next()).shortName());
        }
        SPECIAL_SHORT_NAMES = CollectionsKt.toSet(arrayList2);
    }

    public final Set getSPECIAL_FQ_NAMES() {
        return SPECIAL_FQ_NAMES;
    }

    public final Set getSPECIAL_SHORT_NAMES() {
        return SPECIAL_SHORT_NAMES;
    }

    public final List getPropertyNameCandidatesBySpecialGetterName(Name name1) {
        Intrinsics.checkNotNullParameter(name1, "name1");
        List list = (List) GETTER_JVM_NAME_TO_PROPERTIES_SHORT_NAME_MAP.get(name1);
        return list == null ? CollectionsKt.emptyList() : list;
    }
}
