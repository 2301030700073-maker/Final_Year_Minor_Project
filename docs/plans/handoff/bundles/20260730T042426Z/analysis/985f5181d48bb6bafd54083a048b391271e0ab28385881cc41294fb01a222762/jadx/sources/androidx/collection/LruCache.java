package androidx.collection;

import androidx.collection.internal.Lock;
import androidx.collection.internal.LruHashMap;
import androidx.collection.internal.RuntimeHelpersKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LruCache.kt */
/* loaded from: classes.dex */
public class LruCache {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final Lock lock;
    private final LruHashMap map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    protected Object create(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return null;
    }

    protected void entryRemoved(boolean z, Object key, Object oldValue, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
    }

    protected int sizeOf(Object key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return 1;
    }

    public LruCache(int i) {
        this.maxSize = i;
        if (!(i > 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("maxSize <= 0");
        }
        this.map = new LruHashMap(0, 0.75f);
        this.lock = new Lock();
    }

    public final Object get(Object key) {
        Object put;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            Object obj = this.map.get(key);
            if (obj != null) {
                this.hitCount++;
                return obj;
            }
            this.missCount++;
            Object create = create(key);
            if (create == null) {
                return null;
            }
            synchronized (this.lock) {
                try {
                    this.createCount++;
                    put = this.map.put(key, create);
                    if (put != null) {
                        this.map.put(key, put);
                    } else {
                        this.size += safeSizeOf(key, create);
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (put != null) {
                entryRemoved(false, key, create, put);
                return put;
            }
            trimToSize(this.maxSize);
            return create;
        }
    }

    public final Object put(Object key, Object value) {
        Object put;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this.lock) {
            try {
                this.putCount++;
                this.size += safeSizeOf(key, value);
                put = this.map.put(key, value);
                if (put != null) {
                    this.size -= safeSizeOf(key, put);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (put != null) {
            entryRemoved(false, key, put, value);
        }
        trimToSize(this.maxSize);
        return put;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0062, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001c A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:4:0x0003, B:6:0x0008, B:8:0x0010, B:13:0x001c, B:14:0x0021, B:16:0x0025, B:18:0x002e, B:20:0x0040), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040 A[Catch: all -> 0x0015, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0015, blocks: (B:4:0x0003, B:6:0x0008, B:8:0x0010, B:13:0x001c, B:14:0x0021, B:16:0x0025, B:18:0x002e, B:20:0x0040), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r7) {
        /*
            r6 = this;
        L0:
            androidx.collection.internal.Lock r0 = r6.lock
            monitor-enter(r0)
            int r1 = r6.size     // Catch: java.lang.Throwable -> L15
            r2 = 1
            if (r1 < 0) goto L19
            androidx.collection.internal.LruHashMap r1 = r6.map     // Catch: java.lang.Throwable -> L15
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L15
            if (r1 == 0) goto L17
            int r1 = r6.size     // Catch: java.lang.Throwable -> L15
            if (r1 != 0) goto L19
            goto L17
        L15:
            r7 = move-exception
            goto L63
        L17:
            r1 = r2
            goto L1a
        L19:
            r1 = 0
        L1a:
            if (r1 != 0) goto L21
            java.lang.String r1 = "LruCache.sizeOf() is reporting inconsistent results!"
            androidx.collection.internal.RuntimeHelpersKt.throwIllegalStateException(r1)     // Catch: java.lang.Throwable -> L15
        L21:
            int r1 = r6.size     // Catch: java.lang.Throwable -> L15
            if (r1 <= r7) goto L61
            androidx.collection.internal.LruHashMap r1 = r6.map     // Catch: java.lang.Throwable -> L15
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L15
            if (r1 == 0) goto L2e
            goto L61
        L2e:
            androidx.collection.internal.LruHashMap r1 = r6.map     // Catch: java.lang.Throwable -> L15
            java.util.Set r1 = r1.getEntries()     // Catch: java.lang.Throwable -> L15
            java.lang.Iterable r1 = (java.lang.Iterable) r1     // Catch: java.lang.Throwable -> L15
            java.lang.Object r1 = kotlin.collections.CollectionsKt.firstOrNull(r1)     // Catch: java.lang.Throwable -> L15
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L15
            if (r1 != 0) goto L40
            monitor-exit(r0)
            return
        L40:
            java.lang.Object r3 = r1.getKey()     // Catch: java.lang.Throwable -> L15
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L15
            androidx.collection.internal.LruHashMap r4 = r6.map     // Catch: java.lang.Throwable -> L15
            r4.remove(r3)     // Catch: java.lang.Throwable -> L15
            int r4 = r6.size     // Catch: java.lang.Throwable -> L15
            int r5 = r6.safeSizeOf(r3, r1)     // Catch: java.lang.Throwable -> L15
            int r4 = r4 - r5
            r6.size = r4     // Catch: java.lang.Throwable -> L15
            int r4 = r6.evictionCount     // Catch: java.lang.Throwable -> L15
            int r4 = r4 + r2
            r6.evictionCount = r4     // Catch: java.lang.Throwable -> L15
            monitor-exit(r0)
            r0 = 0
            r6.entryRemoved(r2, r3, r1, r0)
            goto L0
        L61:
            monitor-exit(r0)
            return
        L63:
            monitor-exit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }

    private final int safeSizeOf(Object obj, Object obj2) {
        int sizeOf = sizeOf(obj, obj2);
        if (!(sizeOf >= 0)) {
            RuntimeHelpersKt.throwIllegalStateException("Negative size: " + obj + '=' + obj2);
        }
        return sizeOf;
    }

    public String toString() {
        String str;
        synchronized (this.lock) {
            try {
                int i = this.hitCount;
                int i2 = this.missCount + i;
                str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
