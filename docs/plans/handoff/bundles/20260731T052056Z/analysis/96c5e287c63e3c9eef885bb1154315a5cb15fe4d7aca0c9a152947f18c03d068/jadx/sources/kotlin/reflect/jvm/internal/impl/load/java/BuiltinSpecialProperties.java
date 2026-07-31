package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BuiltinSpecialProperties {
    public static final LinkedHashMap GETTER_JVM_NAME_TO_PROPERTIES_SHORT_NAME_MAP;
    public static final Map PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP;
    public static final Set SPECIAL_FQ_NAMES;
    public static final Set SPECIAL_SHORT_NAMES;

    static {
        FqNameUnsafe fqNameUnsafe = StandardNames.FqNames._enum;
        Pair pair = new Pair(fqNameUnsafe.child(Name.identifier("name")).toSafe(), Name.identifier("name"));
        Pair pair2 = new Pair(fqNameUnsafe.child(Name.identifier("ordinal")).toSafe(), Name.identifier("ordinal"));
        Pair pair3 = new Pair(StandardNames.FqNames.collection.child(Name.identifier("size")), Name.identifier("size"));
        FqName fqName = StandardNames.FqNames.map;
        Map mapOf = MapsKt__MapsKt.mapOf(pair, pair2, pair3, new Pair(fqName.child(Name.identifier("size")), Name.identifier("size")), new Pair(StandardNames.FqNames.charSequence.child(Name.identifier("length")).toSafe(), Name.identifier("length")), new Pair(fqName.child(Name.identifier("keys")), Name.identifier("keySet")), new Pair(fqName.child(Name.identifier("values")), Name.identifier("values")), new Pair(fqName.child(Name.identifier("entries")), Name.identifier("entrySet")));
        PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP = mapOf;
        Set<Map.Entry> entrySet = mapOf.entrySet();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entrySet, 10));
        for (Map.Entry entry : entrySet) {
            arrayList.add(new Pair(((FqName) entry.getKey()).shortName(), entry.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair4 = (Pair) it.next();
            Name name = (Name) pair4.second;
            Object obj = linkedHashMap.get(name);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(name, obj);
            }
            ((List) obj).add((Name) pair4.first);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry2.getKey(), CollectionsKt.distinct((Iterable) entry2.getValue()));
        }
        GETTER_JVM_NAME_TO_PROPERTIES_SHORT_NAME_MAP = linkedHashMap2;
        Set keySet = PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP.keySet();
        SPECIAL_FQ_NAMES = keySet;
        Set set = keySet;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set, 10));
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((FqName) it2.next()).shortName());
        }
        SPECIAL_SHORT_NAMES = CollectionsKt.toSet(arrayList2);
    }
}
