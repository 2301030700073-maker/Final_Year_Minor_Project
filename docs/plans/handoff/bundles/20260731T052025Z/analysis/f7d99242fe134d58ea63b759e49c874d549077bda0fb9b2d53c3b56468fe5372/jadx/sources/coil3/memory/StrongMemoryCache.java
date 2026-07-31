package coil3.memory;

import coil3.Image;
import coil3.memory.MemoryCache;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface StrongMemoryCache {
    void clear();

    MemoryCache.Value get(MemoryCache.Key key);

    long getInitialMaxSize();

    Set<MemoryCache.Key> getKeys();

    long getMaxSize();

    long getSize();

    boolean remove(MemoryCache.Key key);

    void set(MemoryCache.Key key, Image image, Map<String, ? extends Object> map, long j);

    void setMaxSize(long j);

    void trimToSize(long j);
}
