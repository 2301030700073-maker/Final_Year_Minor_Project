package coil3.memory;

import androidx.compose.ui.input.pointer.util.VelocityTracker1D$Strategy;
import coil3.Image;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import java.util.LinkedHashMap;
import java.util.Map;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealStrongMemoryCache {
    public final Object cache;
    public long initialMaxSize;
    public final Object weakMemoryCache;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        VelocityTracker1D$Strategy velocityTracker1D$Strategy = VelocityTracker1D$Strategy.Lsq2;
        this.weakMemoryCache = new JsonWriteContext(false, velocityTracker1D$Strategy);
        this.cache = new JsonWriteContext(false, velocityTracker1D$Strategy);
    }

    /* renamed from: addPosition-Uv8p0NA, reason: not valid java name */
    public void m782addPositionUv8p0NA(long j, long j2) {
        ((JsonWriteContext) this.weakMemoryCache).addDataPoint(Float.intBitsToFloat((int) (j2 >> 32)), j);
        ((JsonWriteContext) this.cache).addDataPoint(Float.intBitsToFloat((int) (j2 & 4294967295L)), j);
    }

    public void set(MemoryCache$Key memoryCache$Key, Image image, Map map, long j) {
        RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = (RealStrongMemoryCache$cache$1) this.cache;
        long j2 = realStrongMemoryCache$cache$1.maxSize;
        LinkedHashMap linkedHashMap = (LinkedHashMap) realStrongMemoryCache$cache$1.map;
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
