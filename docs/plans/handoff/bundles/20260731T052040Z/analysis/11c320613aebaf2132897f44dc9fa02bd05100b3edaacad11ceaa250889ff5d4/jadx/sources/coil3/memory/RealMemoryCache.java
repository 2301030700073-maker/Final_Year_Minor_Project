package coil3.memory;

import coil3.Image;
import coil3.memory.RealStrongMemoryCache;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    public final MemoryCache$Value get(MemoryCache$Key memoryCache$Key) {
        MemoryCache$Value memoryCache$Value;
        synchronized (this.lock) {
            try {
                RealStrongMemoryCache.InternalValue internalValue = (RealStrongMemoryCache.InternalValue) ((RealStrongMemoryCache$cache$1) this.strongMemoryCache.cache).map.get(memoryCache$Key);
                MemoryCache$Value memoryCache$Value2 = null;
                memoryCache$Value = internalValue != null ? new MemoryCache$Value(internalValue.image, internalValue.extras) : null;
                if (memoryCache$Value == null) {
                    PriorityQueue priorityQueue = this.weakMemoryCache;
                    ArrayList arrayList = (ArrayList) ((LinkedHashMap) priorityQueue.array).get(memoryCache$Key);
                    if (arrayList != null) {
                        int size = arrayList.size();
                        int i = 0;
                        while (true) {
                            if (i >= size) {
                                break;
                            }
                            RealWeakMemoryCache$InternalValue realWeakMemoryCache$InternalValue = (RealWeakMemoryCache$InternalValue) arrayList.get(i);
                            Image image = (Image) realWeakMemoryCache$InternalValue.image.get();
                            MemoryCache$Value memoryCache$Value3 = image != null ? new MemoryCache$Value(image, realWeakMemoryCache$InternalValue.extras) : null;
                            if (memoryCache$Value3 != null) {
                                memoryCache$Value2 = memoryCache$Value3;
                                break;
                            }
                            i++;
                        }
                        priorityQueue.cleanUpIfNecessary();
                    }
                    memoryCache$Value = memoryCache$Value2;
                }
                if (memoryCache$Value != null && !memoryCache$Value.image.getShareable()) {
                    remove(memoryCache$Key);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return memoryCache$Value;
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
            Object remove = realStrongMemoryCache$cache$1.map.remove(memoryCache$Key);
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
