package coil3.transform;

import android.graphics.Bitmap;
import coil3.size.Size;
import coil3.size.ViewSizeResolver;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Transformation {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Transformation) && Intrinsics.areEqual(getCacheKey(), ((Transformation) obj).getCacheKey());
    }

    public abstract String getCacheKey();

    public int hashCode() {
        return getCacheKey().hashCode();
    }

    public String toString() {
        return ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(getClass()).getSimpleName(), "(cacheKey=", getCacheKey(), ")");
    }

    public abstract Object transform(Bitmap bitmap, Size size, Continuation continuation);
}
