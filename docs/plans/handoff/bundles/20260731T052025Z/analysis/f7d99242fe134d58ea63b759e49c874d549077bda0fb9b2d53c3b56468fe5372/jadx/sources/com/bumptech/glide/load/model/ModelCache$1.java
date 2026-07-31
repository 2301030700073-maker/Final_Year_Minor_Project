package com.bumptech.glide.load.model;

import com.bumptech.glide.util.LruCache;
import java.util.ArrayDeque;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModelCache$1 extends LruCache {
    @Override // com.bumptech.glide.util.LruCache
    public final void onItemEvicted(Object obj, Object obj2) {
        ModelCache$ModelKey modelCache$ModelKey = (ModelCache$ModelKey) obj;
        modelCache$ModelKey.getClass();
        ArrayDeque arrayDeque = ModelCache$ModelKey.KEY_QUEUE;
        synchronized (arrayDeque) {
            arrayDeque.offer(modelCache$ModelKey);
        }
    }
}
