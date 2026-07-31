package coil3.memory;

import coil3.memory.RealStrongMemoryCache;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealStrongMemoryCache$cache$1 {
    public final LinkedHashMap map = new LinkedHashMap(0, 0.75f, true);
    public long maxSize;
    public long size;
    public final /* synthetic */ RealStrongMemoryCache this$0;

    public RealStrongMemoryCache$cache$1(RealStrongMemoryCache realStrongMemoryCache, long j) {
        this.this$0 = realStrongMemoryCache;
        this.maxSize = j;
        if (j > 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("maxSize <= 0");
        throw null;
    }

    public final void entryRemoved(Object obj, Object obj2, RealStrongMemoryCache.InternalValue internalValue) {
        RealStrongMemoryCache.InternalValue internalValue2 = (RealStrongMemoryCache.InternalValue) obj2;
        ((PriorityQueue) this.this$0.weakMemoryCache).set((MemoryCache$Key) obj, internalValue2.image, internalValue2.extras, internalValue2.size);
    }

    public final long getSize() {
        if (this.size == -1) {
            long j = 0;
            for (Map.Entry entry : this.map.entrySet()) {
                j += safeSizeOf(entry.getKey(), entry.getValue());
            }
            this.size = j;
        }
        return this.size;
    }

    public final long safeSizeOf(Object obj, Object obj2) {
        try {
            long j = ((RealStrongMemoryCache.InternalValue) obj2).size;
            if (j >= 0) {
                return j;
            }
            throw new IllegalStateException(("sizeOf(" + obj + ", " + obj2 + ") returned a negative value: " + j).toString());
        } catch (Exception e) {
            this.size = -1L;
            throw e;
        }
    }

    public final void trimToSize(long j) {
        while (getSize() > j) {
            LinkedHashMap linkedHashMap = this.map;
            if (linkedHashMap.isEmpty()) {
                if (getSize() == 0) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("sizeOf() is returning inconsistent values");
                return;
            } else {
                Map.Entry entry = (Map.Entry) CollectionsKt.first(linkedHashMap.entrySet());
                Object key = entry.getKey();
                Object value = entry.getValue();
                linkedHashMap.remove(key);
                this.size = getSize() - safeSizeOf(key, value);
                entryRemoved(key, value, null);
            }
        }
    }
}
