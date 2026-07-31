package kotlin.collections;

import androidx.compose.ui.unit.IntRectKt;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Pair;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MapsKt__MapsKt extends IntRectKt {
    public static Object getValue(Map map, Object obj) {
        map.getClass();
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
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

    public static LinkedHashMap mutableMapOf(Pair... pairArr) {
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

    public static final void putAll(java.util.AbstractMap abstractMap, Pair[] pairArr) {
        for (Pair pair : pairArr) {
            abstractMap.put(pair.first, pair.second);
        }
    }

    public static Map toMap(List list) {
        list.getClass();
        int size = list.size();
        if (size == 0) {
            return EmptyMap.INSTANCE;
        }
        if (size == 1) {
            Pair pair = (Pair) list.get(0);
            pair.getClass();
            Map singletonMap = Collections.singletonMap(pair.first, pair.second);
            singletonMap.getClass();
            return singletonMap;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity(list.size()));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Pair pair2 = (Pair) it.next();
            linkedHashMap.put(pair2.first, pair2.second);
        }
        return linkedHashMap;
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
