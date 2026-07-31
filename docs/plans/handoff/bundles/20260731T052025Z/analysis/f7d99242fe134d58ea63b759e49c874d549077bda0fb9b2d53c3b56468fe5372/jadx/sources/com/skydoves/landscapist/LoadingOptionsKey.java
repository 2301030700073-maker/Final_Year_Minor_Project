package com.skydoves.landscapist;

import androidx.compose.ui.unit.IntSize;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoadingOptionsKey {
    public final long requestSize;
    public final String tag;

    public LoadingOptionsKey(long j, String str) {
        str.getClass();
        this.requestSize = j;
        this.tag = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoadingOptionsKey)) {
            return false;
        }
        LoadingOptionsKey loadingOptionsKey = (LoadingOptionsKey) obj;
        return IntSize.m768equalsimpl0(this.requestSize, loadingOptionsKey.requestSize) && Intrinsics.areEqual(this.tag, loadingOptionsKey.tag);
    }

    public final int hashCode() {
        return this.tag.hashCode() + (IntSize.m769hashCodeimpl(this.requestSize) * 31);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("LoadingOptionsKey(requestSize=", IntSize.m770toStringimpl(this.requestSize), ", tag=", this.tag, ")");
    }
}
