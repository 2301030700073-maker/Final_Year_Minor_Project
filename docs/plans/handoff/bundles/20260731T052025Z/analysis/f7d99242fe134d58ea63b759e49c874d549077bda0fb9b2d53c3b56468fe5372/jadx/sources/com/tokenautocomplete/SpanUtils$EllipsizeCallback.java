package com.tokenautocomplete;

import android.text.TextUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpanUtils$EllipsizeCallback implements TextUtils.EllipsizeCallback {
    public int end;
    public int start;

    @Override // android.text.TextUtils.EllipsizeCallback
    public final void ellipsized(int i, int i2) {
        this.start = i;
        this.end = i2;
    }
}
