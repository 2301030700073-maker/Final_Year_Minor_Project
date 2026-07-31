package coil3.memory;

import java.util.LinkedHashMap;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealMemoryCache {
    public final Object lock = new Object();
    public final RealStrongMemoryCache strongMemoryCache;
    public final PriorityQueue weakMemoryCache;

    public RealMemoryCache(RealStrongMemoryCache realStrongMemoryCache, PriorityQueue priorityQueue) {
        this.strongMemoryCache = realStrongMemoryCache;
        this.weakMemoryCache = priorityQueue;
    }

    public final void clear() {
        synchronized (this.lock) {
            ((RealStrongMemoryCache$cache$1) this.strongMemoryCache.cache).trimToSize(-1L);
            PriorityQueue priorityQueue = this.weakMemoryCache;
            priorityQueue.size = 0;
            ((LinkedHashMap) priorityQueue.array).clear();
        }
    }

    public final long getSize() {
        long size;
        synchronized (this.lock) {
            size = ((RealStrongMemoryCache$cache$1) this.strongMemoryCache.cache).getSize();
        }
        return size;
    }

    public final void remove(MemoryCache$Key memoryCache$Key) {
        synchronized (this.lock) {
            RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = (RealStrongMemoryCache$cache$1) this.strongMemoryCache.cache;
            Object remove = ((LinkedHashMap) realStrongMemoryCache$cache$1.map).remove(memoryCache$Key);
            if (remove != null) {
                realStrongMemoryCache$cache$1.size = realStrongMemoryCache$cache$1.getSize() - realStrongMemoryCache$cache$1.safeSizeOf(memoryCache$Key, remove);
                realStrongMemoryCache$cache$1.entryRemoved(memoryCache$Key, remove, null);
            }
            if (remove != null) {
            }
            if (((LinkedHashMap) this.weakMemoryCache.array).remove(memoryCache$Key) != null) {
            }
        }
    }

    public final void setMaxSize(long j) {
        synchronized (this.lock) {
            RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = (RealStrongMemoryCache$cache$1) this.strongMemoryCache.cache;
            realStrongMemoryCache$cache$1.maxSize = j;
            realStrongMemoryCache$cache$1.trimToSize(j);
        }
    }

    public final void trimToSize(long j) {
        synchronized (this.lock) {
            ((RealStrongMemoryCache$cache$1) this.strongMemoryCache.cache).trimToSize(j);
        }
    }
}
