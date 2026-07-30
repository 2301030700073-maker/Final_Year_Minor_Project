package androidx.room.util;

import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.room.RoomDatabase;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RelationUtil.kt */
/* loaded from: classes.dex */
public abstract class RelationUtil {
    public static final void recursiveFetchHashMap(HashMap map, boolean z, Function1 fetchBlock) {
        int i;
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(fetchBlock, "fetchBlock");
        HashMap hashMap = new HashMap(RoomDatabase.MAX_BIND_PARAMETER_CNT);
        loop0: while (true) {
            i = 0;
            for (Object key : map.keySet()) {
                if (z) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    hashMap.put(key, map.get(key));
                } else {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    hashMap.put(key, null);
                }
                i++;
                if (i == 999) {
                    fetchBlock.invoke(hashMap);
                    if (!z) {
                        map.putAll(hashMap);
                    }
                    hashMap.clear();
                }
            }
            break loop0;
        }
        if (i > 0) {
            fetchBlock.invoke(hashMap);
            if (z) {
                return;
            }
            map.putAll(hashMap);
        }
    }

    public static final void recursiveFetchLongSparseArray(LongSparseArray map, boolean z, Function1 fetchBlock) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(fetchBlock, "fetchBlock");
        LongSparseArray longSparseArray = new LongSparseArray(RoomDatabase.MAX_BIND_PARAMETER_CNT);
        int size = map.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (z) {
                longSparseArray.put(map.keyAt(i), map.valueAt(i));
            } else {
                longSparseArray.put(map.keyAt(i), null);
            }
            i++;
            i2++;
            if (i2 == 999) {
                fetchBlock.invoke(longSparseArray);
                if (!z) {
                    map.putAll(longSparseArray);
                }
                longSparseArray.clear();
                i2 = 0;
            }
        }
        if (i2 > 0) {
            fetchBlock.invoke(longSparseArray);
            if (z) {
                return;
            }
            map.putAll(longSparseArray);
        }
    }

    public static final void recursiveFetchArrayMap(ArrayMap map, boolean z, Function1 fetchBlock) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(fetchBlock, "fetchBlock");
        ArrayMap arrayMap = new ArrayMap(RoomDatabase.MAX_BIND_PARAMETER_CNT);
        int size = map.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (z) {
                arrayMap.put(map.keyAt(i), map.valueAt(i));
            } else {
                arrayMap.put(map.keyAt(i), null);
            }
            i++;
            i2++;
            if (i2 == 999) {
                fetchBlock.invoke(arrayMap);
                if (!z) {
                    map.putAll((Map) arrayMap);
                }
                arrayMap.clear();
                i2 = 0;
            }
        }
        if (i2 > 0) {
            fetchBlock.invoke(arrayMap);
            if (z) {
                return;
            }
            map.putAll((Map) arrayMap);
        }
    }
}
