package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Util;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActiveResources$ResourceWeakReference extends WeakReference {
    public final boolean isCacheable;
    public final Key key;
    public Resource resource;

    public ActiveResources$ResourceWeakReference(Key key, EngineResource engineResource, ReferenceQueue referenceQueue) {
        super(engineResource, referenceQueue);
        Util.checkNotNull(key, "Argument must not be null");
        this.key = key;
        boolean z = engineResource.isMemoryCacheable;
        this.resource = null;
        this.isCacheable = z;
    }
}
