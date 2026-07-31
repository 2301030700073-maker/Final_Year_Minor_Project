package com.bumptech.glide.util.pool;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StateVerifier$DefaultStateVerifier {
    public volatile boolean isReleased;

    public final void throwIfRecycled() {
        if (this.isReleased) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Already released");
        }
    }
}
