package androidx.compose.material3;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FadeInFadeOutAnimationItem {
    public final Object key;
    public final ComposableLambdaImpl transition;

    public FadeInFadeOutAnimationItem(SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl, ComposableLambdaImpl composableLambdaImpl) {
        this.key = snackbarHostState$SnackbarDataImpl;
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
