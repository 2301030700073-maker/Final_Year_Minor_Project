package coil3.memory;

import coil3.memory.MemoryCache;
import java.util.LinkedHashSet;
import java.util.Set;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealMemoryCache implements MemoryCache {
    private final Object lock = new Object();
    private final StrongMemoryCache strongMemoryCache;
    private final WeakMemoryCache weakMemoryCache;

    public RealMemoryCache(StrongMemoryCache strongMemoryCache, WeakMemoryCache weakMemoryCache) {
        this.strongMemoryCache = strongMemoryCache;
        this.weakMemoryCache = weakMemoryCache;
    }

    @Override // coil3.memory.MemoryCache
    public void clear() {
        synchronized (this.lock) {
            this.strongMemoryCache.clear();
            this.weakMemoryCache.clear();
        }
    }

    @Override // coil3.memory.MemoryCache
    public MemoryCache.Value get(MemoryCache.Key key) {
        MemoryCache.Value value;
        synchronized (this.lock) {
            try {
                value = this.strongMemoryCache.get(key);
                if (value == null) {
                    value = this.weakMemoryCache.get(key);
                }
                if (value != null && !value.getImage().getShareable()) {
                    remove(key);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return value;
    }

    @Override // coil3.memory.MemoryCache
    public long getInitialMaxSize() {
        long initialMaxSize;
        synchronized (this.lock) {
            initialMaxSize = this.strongMemoryCache.getInitialMaxSize();
        }
        return initialMaxSize;
    }

    @Override // coil3.memory.MemoryCache
    public Set<MemoryCache.Key> getKeys() {
        LinkedHashSet plus;
        synchronized (this.lock) {
            plus = Validate.plus((Set) this.strongMemoryCache.getKeys(), (Iterable) this.weakMemoryCache.getKeys());
        }
        return plus;
    }

    @Override // coil3.memory.MemoryCache
    public long getMaxSize() {
        long maxSize;
        synchronized (this.lock) {
            maxSize = this.strongMemoryCache.getMaxSize();
        }
        return maxSize;
    }

    @Override // coil3.memory.MemoryCache
    public long getSize() {
        long size;
        synchronized (this.lock) {
            size = this.strongMemoryCache.getSize();
        }
        return size;
    }

    @Override // coil3.memory.MemoryCache
    public boolean remove(MemoryCache.Key key) {
        boolean z;
        synchronized (this.lock) {
            z = this.strongMemoryCache.remove(key) || this.weakMemoryCache.remove(key);
        }
        return z;
    }

    @Override // coil3.memory.MemoryCache
    public void set(MemoryCache.Key key, MemoryCache.Value value) {
        synchronized (this.lock) {
            long size = value.getImage().getSize();
            if (size < 0) {
                throw new IllegalStateException(("Image size must be non-negative: " + size).toString());
            }
            this.strongMemoryCache.set(key, value.getImage(), value.getExtras(), size);
        }
    }

    @Override // coil3.memory.MemoryCache
    public void setMaxSize(long j) {
        synchronized (this.lock) {
            this.strongMemoryCache.setMaxSize(j);
        }
    }

    @Override // coil3.memory.MemoryCache
    public void trimToSize(long j) {
        synchronized (this.lock) {
            this.strongMemoryCache.trimToSize(j);
        }
    }
}
