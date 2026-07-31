package kotlin.collections;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Pair;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MapsKt__MapsKt extends UStringsKt {
    public static Object getValue(Object obj, Map map) {
        map.getClass();
        if (map instanceof MutableMapWithDefaultImpl) {
            MutableMapWithDefaultImpl mutableMapWithDefaultImpl = (MutableMapWithDefaultImpl) map;
            LinkedHashMap linkedHashMap = mutableMapWithDefaultImpl.map;
            Object obj2 = linkedHashMap.get(obj);
            return (obj2 != null || linkedHashMap.containsKey(obj)) ? obj2 : mutableMapWithDefaultImpl.f17default.invoke(obj);
        }
        Object obj3 = map.get(obj);
        if (obj3 != null || map.containsKey(obj)) {
            return obj3;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static int mapCapacity(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map mapOf(Pair... pairArr) {
        if (pairArr.length <= 0) {
            return EmptyMap.INSTANCE;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity(pairArr.length));
        putAll(linkedHashMap, pairArr);
        return linkedHashMap;
    }

    public static LinkedHashMap plus(Map map, Map map2) {
        map.getClass();
        map2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    public static final void putAll(HashMap hashMap, Pair[] pairArr) {
        for (Pair pair : pairArr) {
            hashMap.put(pair.first, pair.second);
        }
    }

    public static Map toMap(Iterable iterable) {
        boolean z = iterable instanceof Collection;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (!z) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                linkedHashMap.put(pair.first, pair.second);
            }
            int size = linkedHashMap.size();
            if (size == 0) {
                return emptyMap;
            }
            if (size != 1) {
                return linkedHashMap;
            }
            Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
            Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
            singletonMap.getClass();
            return singletonMap;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return emptyMap;
        }
        if (size2 == 1) {
            Pair pair2 = (Pair) (iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
            pair2.getClass();
            Map singletonMap2 = Collections.singletonMap(pair2.first, pair2.second);
            singletonMap2.getClass();
            return singletonMap2;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity(collection.size()));
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            Pair pair3 = (Pair) it2.next();
            linkedHashMap2.put(pair3.first, pair3.second);
        }
        return linkedHashMap2;
    }

    public static LinkedHashMap toMutableMap(Map map) {
        map.getClass();
        return new LinkedHashMap(map);
    }

    public static Map toMap(Map map) {
        map.getClass();
        int size = map.size();
        if (size == 0) {
            return EmptyMap.INSTANCE;
        }
        if (size != 1) {
            return new LinkedHashMap(map);
        }
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        singletonMap.getClass();
        return singletonMap;
    }
}
