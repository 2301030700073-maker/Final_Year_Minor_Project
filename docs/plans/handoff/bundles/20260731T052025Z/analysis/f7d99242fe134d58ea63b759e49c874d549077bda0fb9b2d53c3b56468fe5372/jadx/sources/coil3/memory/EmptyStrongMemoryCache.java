package coil3.memory;

import coil3.Image;
import coil3.memory.MemoryCache;
import java.util.Map;
import java.util.Set;
import kotlin.collections.EmptySet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmptyStrongMemoryCache implements StrongMemoryCache {
    private long maxSize;
    private final WeakMemoryCache weakMemoryCache;

    public EmptyStrongMemoryCache(WeakMemoryCache weakMemoryCache) {
        this.weakMemoryCache = weakMemoryCache;
    }

    @Override // coil3.memory.StrongMemoryCache
    public MemoryCache.Value get(MemoryCache.Key key) {
        return null;
    }

    @Override // coil3.memory.StrongMemoryCache
    public long getInitialMaxSize() {
        return 0L;
    }

    @Override // coil3.memory.StrongMemoryCache
    public Set<MemoryCache.Key> getKeys() {
        return EmptySet.INSTANCE;
    }

    @Override // coil3.memory.StrongMemoryCache
    public long getMaxSize() {
        return this.maxSize;
    }

    @Override // coil3.memory.StrongMemoryCache
    public long getSize() {
        return 0L;
    }

    @Override // coil3.memory.StrongMemoryCache
    public boolean remove(MemoryCache.Key key) {
        return false;
    }

    @Override // coil3.memory.StrongMemoryCache
    public void set(MemoryCache.Key key, Image image, Map<String, ? extends Object> map, long j) {
        this.weakMemoryCache.set(key, image, map, j);
    }

    @Override // coil3.memory.StrongMemoryCache
    public void setMaxSize(long j) {
        this.maxSize = j;
    }

    @Override // coil3.memory.StrongMemoryCache
    public void clear() {
    }

    @Override // coil3.memory.StrongMemoryCache
    public void trimToSize(long j) {
    }
}
