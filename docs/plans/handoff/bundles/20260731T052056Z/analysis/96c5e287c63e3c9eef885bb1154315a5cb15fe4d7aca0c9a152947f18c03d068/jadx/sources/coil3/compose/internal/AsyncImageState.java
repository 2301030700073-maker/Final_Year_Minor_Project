package coil3.compose.internal;

import coil3.RealImageLoader;
import coil3.compose.AsyncImageModelEqualityDelegate$Companion$Default$1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AsyncImageState {
    public final RealImageLoader imageLoader;
    public final Object model;
    public final AsyncImageModelEqualityDelegate$Companion$Default$1 modelEqualityDelegate;

    public AsyncImageState(Object obj, AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1, RealImageLoader realImageLoader) {
        this.model = obj;
        this.modelEqualityDelegate = asyncImageModelEqualityDelegate$Companion$Default$1;
        this.imageLoader = realImageLoader;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AsyncImageState)) {
            return false;
        }
        AsyncImageState asyncImageState = (AsyncImageState) obj;
        AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1 = asyncImageState.modelEqualityDelegate;
        AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$12 = this.modelEqualityDelegate;
        return Intrinsics.areEqual(asyncImageModelEqualityDelegate$Companion$Default$12, asyncImageModelEqualityDelegate$Companion$Default$1) && asyncImageModelEqualityDelegate$Companion$Default$12.equals(this.model, asyncImageState.model) && this.imageLoader == asyncImageState.imageLoader;
    }

    public final int hashCode() {
        AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1 = this.modelEqualityDelegate;
        return this.imageLoader.hashCode() + ((asyncImageModelEqualityDelegate$Companion$Default$1.hashCode(this.model) + (asyncImageModelEqualityDelegate$Companion$Default$1.hashCode() * 31)) * 31);
    }
}
