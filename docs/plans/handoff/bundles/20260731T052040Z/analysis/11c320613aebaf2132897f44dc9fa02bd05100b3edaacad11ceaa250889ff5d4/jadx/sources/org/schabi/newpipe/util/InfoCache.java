package org.schabi.newpipe.util;

import androidx.collection.LruCache;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.transition.Transition;
import androidx.work.Data;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.extractor.Info;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InfoCache {
    public static final InfoCache INSTANCE;
    public static final LruCache LRU_CACHE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes3.dex */
    public final class CacheData {
        public final long expireTimestamp;
        public final Info info;

        public CacheData(Info info, long j) {
            this.expireTimestamp = System.currentTimeMillis() + j;
            this.info = info;
        }
    }

    static {
        int i = MainActivity.$r8$clinit;
        INSTANCE = new InfoCache();
        LRU_CACHE = new LruCache(60);
    }

    public static void clearCache() {
        LruCache lruCache = LRU_CACHE;
        synchronized (lruCache) {
            lruCache.trimToSize(-1);
        }
    }

    public static String keyOf(int i, int i2, String str) {
        return i + ":" + SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i2) + ":" + str;
    }

    public static void removeStaleCache() {
        LinkedHashMap linkedHashMap;
        LruCache lruCache = LRU_CACHE;
        synchronized (((Transition.AnonymousClass1) lruCache.lock)) {
            Set entrySet = ((Data.Builder) lruCache.map).values.entrySet();
            entrySet.getClass();
            linkedHashMap = new LinkedHashMap(entrySet.size());
            Set<Map.Entry> entrySet2 = ((Data.Builder) lruCache.map).values.entrySet();
            entrySet2.getClass();
            for (Map.Entry entry : entrySet2) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            CacheData cacheData = (CacheData) entry2.getValue();
            if (cacheData != null && System.currentTimeMillis() > cacheData.expireTimestamp) {
                LRU_CACHE.remove((String) entry2.getKey());
            }
        }
    }
}
