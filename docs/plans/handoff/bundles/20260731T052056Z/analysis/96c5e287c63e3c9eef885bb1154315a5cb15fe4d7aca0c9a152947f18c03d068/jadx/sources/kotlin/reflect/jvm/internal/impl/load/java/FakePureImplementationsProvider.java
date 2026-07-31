package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.StandardClassIds;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FakePureImplementationsProvider {
    public static final LinkedHashMap pureImplementationsClassIds;
    public static final Map pureImplementationsFqNames;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        pureImplementationsClassIds = linkedHashMap;
        implementedWith(StandardClassIds.MutableList, fqNameListOf("java.util.ArrayList", "java.util.LinkedList"));
        implementedWith(StandardClassIds.MutableSet, fqNameListOf("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        implementedWith(StandardClassIds.MutableMap, fqNameListOf("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        implementedWith(ClassId.topLevel(new FqName("java.util.function.Function")), fqNameListOf("java.util.function.UnaryOperator"));
        implementedWith(ClassId.topLevel(new FqName("java.util.function.BiFunction")), fqNameListOf("java.util.function.BinaryOperator"));
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new Pair(((ClassId) entry.getKey()).asSingleFqName(), ((ClassId) entry.getValue()).asSingleFqName()));
        }
        pureImplementationsFqNames = MapsKt__MapsKt.toMap(arrayList);
    }

    public static ArrayList fqNameListOf(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(ClassId.topLevel(new FqName(str)));
        }
        return arrayList;
    }

    public static void implementedWith(ClassId classId, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            pureImplementationsClassIds.put(next, classId);
        }
    }
}
