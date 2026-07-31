package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.LruCache;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LruResourceCache extends LruCache {
    public Engine listener;

    @Override // com.bumptech.glide.util.LruCache
    public final int getSize(Object obj) {
        Resource resource = (Resource) obj;
        if (resource == null) {
            return 1;
        }
        return resource.getSize();
    }

    @Override // com.bumptech.glide.util.LruCache
    public final void onItemEvicted(Object obj, Object obj2) {
        Resource resource = (Resource) obj2;
        Engine engine = this.listener;
        if (engine == null || resource == null) {
            return;
        }
        engine.resourceRecycler.recycle(resource, true);
    }

    public final void trimMemory(int i) {
        long j;
        if (i >= 40) {
            trimToSize(0L);
        } else if (i >= 20 || i == 15) {
            synchronized (this) {
                j = this.maxSize;
            }
            trimToSize(j / 2);
        }
    }
}
