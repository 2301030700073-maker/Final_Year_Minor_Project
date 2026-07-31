package com.bumptech.glide.load.model;

import java.util.ArrayDeque;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModelCache$ModelKey {
    public static final ArrayDeque KEY_QUEUE = new ArrayDeque(0);
    public Object model;

    public static ModelCache$ModelKey get(Object obj) {
        ModelCache$ModelKey modelCache$ModelKey;
        ArrayDeque arrayDeque = KEY_QUEUE;
        synchronized (arrayDeque) {
            modelCache$ModelKey = (ModelCache$ModelKey) arrayDeque.poll();
        }
        if (modelCache$ModelKey == null) {
            modelCache$ModelKey = new ModelCache$ModelKey();
        }
        modelCache$ModelKey.model = obj;
        return modelCache$ModelKey;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ModelCache$ModelKey) && this.model.equals(((ModelCache$ModelKey) obj).model);
    }

    public final int hashCode() {
        return this.model.hashCode();
    }
}
