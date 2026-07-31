package coil3.memory;

import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import coil3.Image;
import java.util.LinkedHashMap;
import java.util.Map;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealStrongMemoryCache {
    public final Object cache;
    public long initialMaxSize;
    public final Object weakMemoryCache;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InternalValue {
        public final Map extras;
        public final Image image;
        public final long size;

        public InternalValue(Image image, Map map, long j) {
            this.image = image;
            this.extras = map;
            this.size = j;
        }
    }

    public RealStrongMemoryCache() {
        this.weakMemoryCache = new VelocityTracker1D();
        this.cache = new VelocityTracker1D();
    }

    /* renamed from: addPosition-Uv8p0NA, reason: not valid java name */
    public void m477addPositionUv8p0NA(long j, long j2) {
        ((VelocityTracker1D) this.weakMemoryCache).addDataPoint(j, Float.intBitsToFloat((int) (j2 >> 32)));
        ((VelocityTracker1D) this.cache).addDataPoint(j, Float.intBitsToFloat((int) (j2 & 4294967295L)));
    }

    public void set(MemoryCache$Key memoryCache$Key, Image image, Map map, long j) {
        RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = (RealStrongMemoryCache$cache$1) this.cache;
        long j2 = realStrongMemoryCache$cache$1.maxSize;
        LinkedHashMap linkedHashMap = realStrongMemoryCache$cache$1.map;
        if (j > j2) {
            Object remove = linkedHashMap.remove(memoryCache$Key);
            if (remove != null) {
                realStrongMemoryCache$cache$1.size = realStrongMemoryCache$cache$1.getSize() - realStrongMemoryCache$cache$1.safeSizeOf(memoryCache$Key, remove);
                realStrongMemoryCache$cache$1.entryRemoved(memoryCache$Key, remove, null);
            }
            ((PriorityQueue) this.weakMemoryCache).set(memoryCache$Key, image, map, j);
            return;
        }
        InternalValue internalValue = new InternalValue(image, map, j);
        Object put = linkedHashMap.put(memoryCache$Key, internalValue);
        realStrongMemoryCache$cache$1.size = realStrongMemoryCache$cache$1.safeSizeOf(memoryCache$Key, internalValue) + realStrongMemoryCache$cache$1.getSize();
        if (put != null) {
            realStrongMemoryCache$cache$1.size = realStrongMemoryCache$cache$1.getSize() - realStrongMemoryCache$cache$1.safeSizeOf(memoryCache$Key, put);
            realStrongMemoryCache$cache$1.entryRemoved(memoryCache$Key, put, internalValue);
        }
        realStrongMemoryCache$cache$1.trimToSize(realStrongMemoryCache$cache$1.maxSize);
    }

    public RealStrongMemoryCache(long j, PriorityQueue priorityQueue) {
        this.initialMaxSize = j;
        this.weakMemoryCache = priorityQueue;
        this.cache = new RealStrongMemoryCache$cache$1(this, j);
    }
}
