package coil3.util;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class LruCache<K, V> {
    private final Map<K, V> map = Collections_jvmCommonKt.LruMutableMap$default(0, 0.0f, 3, null);
    private long maxSize;
    private long size;

    public LruCache(long j) {
        this.maxSize = j;
        if (j > 0) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("maxSize <= 0");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long recomputeSize() {
        Iterator<T> it = this.map.entrySet().iterator();
        long j = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            j += safeSizeOf(entry.getKey(), entry.getValue());
        }
        return j;
    }

    private final long safeSizeOf(K k, V v) {
        try {
            long sizeOf = sizeOf(k, v);
            if (sizeOf >= 0) {
                return sizeOf;
            }
            throw new IllegalStateException(("sizeOf(" + k + ", " + v + ") returned a negative value: " + sizeOf).toString());
        } catch (Exception e) {
            this.size = -1L;
            throw e;
        }
    }

    public final void clear() {
        trimToSize(-1L);
    }

    public final V get(K k) {
        return this.map.get(k);
    }

    public final Set<K> getKeys() {
        return kotlin.collections.CollectionsKt.toSet(this.map.keySet());
    }

    public final long getMaxSize() {
        return this.maxSize;
    }

    public final long getSize() {
        if (this.size == -1) {
            this.size = recomputeSize();
        }
        return this.size;
    }

    public final V put(K k, V v) {
        V put = this.map.put(k, v);
        this.size = getSize() + safeSizeOf(k, v);
        if (put != null) {
            this.size = getSize() - safeSizeOf(k, put);
            entryRemoved(k, put, v);
        }
        trimToSize(this.maxSize);
        return put;
    }

    public final V remove(K k) {
        V remove = this.map.remove(k);
        if (remove != null) {
            this.size = getSize() - safeSizeOf(k, remove);
            entryRemoved(k, remove, null);
        }
        return remove;
    }

    public final void setMaxSize(long j) {
        this.maxSize = j;
        trimToSize(j);
    }

    public long sizeOf(K k, V v) {
        return 1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void trimToSize(long j) {
        while (getSize() > j) {
            if (this.map.isEmpty()) {
                if (getSize() == 0) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("sizeOf() is returning inconsistent values");
                return;
            } else {
                Map.Entry entry = (Map.Entry) kotlin.collections.CollectionsKt.first(this.map.entrySet());
                Object key = entry.getKey();
                Object value = entry.getValue();
                this.map.remove(key);
                this.size = getSize() - safeSizeOf(key, value);
                entryRemoved(key, value, null);
            }
        }
    }

    public void entryRemoved(K k, V v, V v2) {
    }
}
