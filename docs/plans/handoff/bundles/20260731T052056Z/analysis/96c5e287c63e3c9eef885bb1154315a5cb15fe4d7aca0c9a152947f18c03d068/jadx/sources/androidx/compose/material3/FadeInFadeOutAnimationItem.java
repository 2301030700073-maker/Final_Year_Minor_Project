package androidx.compose.material3;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FadeInFadeOutAnimationItem {
    public final Object key;
    public final ComposableLambdaImpl transition;

    public FadeInFadeOutAnimationItem(SnackbarHostState.SnackbarDataImpl snackbarDataImpl, ComposableLambdaImpl composableLambdaImpl) {
        this.key = snackbarDataImpl;
        this.transition = composableLambdaImpl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FadeInFadeOutAnimationItem) {
            FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) obj;
            return Intrinsics.areEqual(this.key, fadeInFadeOutAnimationItem.key) && this.transition == fadeInFadeOutAnimationItem.transition;
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.key;
        return this.transition.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "FadeInFadeOutAnimationItem(key=" + this.key + ", transition=" + this.transition + ')';
    }
}
