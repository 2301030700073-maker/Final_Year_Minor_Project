package coil3.memory;

import coil3.Image;
import coil3.memory.MemoryCache;
import java.util.Map;
import java.util.Set;
import kotlin.collections.EmptySet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmptyWeakMemoryCache implements WeakMemoryCache {
    @Override // coil3.memory.WeakMemoryCache
    public MemoryCache.Value get(MemoryCache.Key key) {
        return null;
    }

    @Override // coil3.memory.WeakMemoryCache
    public Set<MemoryCache.Key> getKeys() {
        return EmptySet.INSTANCE;
    }

    @Override // coil3.memory.WeakMemoryCache
    public boolean remove(MemoryCache.Key key) {
        return false;
    }

    @Override // coil3.memory.WeakMemoryCache
    public void clear() {
    }

    @Override // coil3.memory.WeakMemoryCache
    public void set(MemoryCache.Key key, Image image, Map<String, ? extends Object> map, long j) {
    }
}
