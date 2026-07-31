package kotlin.collections;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.Log;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Pair;
import kotlin.ranges.RangesKt;
import org.acra.collector.ConfigurationCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MapsKt__MapsKt extends RangesKt {
    public static Object getValue(Object obj, Map map) {
        SparseArray valueArrays$lambda$11;
        map.getClass();
        if (map instanceof MutableMapWithDefaultImpl) {
            EnumMap enumMap = ((MutableMapWithDefaultImpl) map).map;
            Object obj2 = enumMap.get(obj);
            if (obj2 != null || enumMap.containsKey(obj)) {
                return obj2;
            }
            valueArrays$lambda$11 = ConfigurationCollector.getValueArrays$lambda$11((ConfigurationCollector.Prefix) obj);
            return valueArrays$lambda$11;
        }
        Object obj3 = map.get(obj);
        if (obj3 != null || map.containsKey(obj)) {
            return obj3;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static int mapCapacity(int i) {
        return i < 0 ? i : i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Log.LOG_LEVEL_OFF;
    }

    public static Map mapOf(Pair pair) {
        pair.getClass();
        Map singletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        singletonMap.getClass();
        return singletonMap;
    }

    public static final void putAll(HashMap hashMap, Pair[] pairArr) {
        for (Pair pair : pairArr) {
            hashMap.put(pair.component1(), pair.component2());
        }
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

    public static Map toMap(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return EmptyMap.INSTANCE;
        }
        if (size != 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity(arrayList.size()));
            toMap(arrayList, linkedHashMap);
            return linkedHashMap;
        }
        return mapOf((Pair) arrayList.get(0));
    }

    public static void toMap(ArrayList arrayList, AbstractMap abstractMap) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            abstractMap.put(pair.component1(), pair.component2());
        }
    }
}
