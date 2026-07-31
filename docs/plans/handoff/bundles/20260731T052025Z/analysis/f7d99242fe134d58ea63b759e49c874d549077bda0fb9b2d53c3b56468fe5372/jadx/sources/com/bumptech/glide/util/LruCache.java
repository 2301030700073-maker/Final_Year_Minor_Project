package com.bumptech.glide.util;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class LruCache {
    public final LinkedHashMap cache = new LinkedHashMap(100, 0.75f, true);
    public long currentSize;
    public final long maxSize;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Entry {
        public final int size;
        public final Object value;

        public Entry(int i, Object obj) {
            this.value = obj;
            this.size = i;
        }
    }

    public LruCache(long j) {
        this.maxSize = j;
    }

    public final synchronized Object get(Object obj) {
        Entry entry;
        entry = (Entry) this.cache.get(obj);
        return entry != null ? entry.value : null;
    }

    public int getSize(Object obj) {
        return 1;
    }

    public final synchronized Object put(Object obj, Object obj2) {
        int size = getSize(obj2);
        long j = size;
        if (j >= this.maxSize) {
            onItemEvicted(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.currentSize += j;
        }
        Entry entry = (Entry) this.cache.put(obj, obj2 == null ? null : new Entry(size, obj2));
        if (entry != null) {
            this.currentSize -= entry.size;
            if (!entry.value.equals(obj2)) {
                onItemEvicted(obj, entry.value);
            }
        }
        trimToSize(this.maxSize);
        return entry != null ? entry.value : null;
    }

    public final synchronized void trimToSize(long j) {
        while (this.currentSize > j) {
            Iterator it = this.cache.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            Entry entry2 = (Entry) entry.getValue();
            this.currentSize -= entry2.size;
            Object key = entry.getKey();
            it.remove();
            onItemEvicted(key, entry2.value);
        }
    }

    public void onItemEvicted(Object obj, Object obj2) {
    }
}
