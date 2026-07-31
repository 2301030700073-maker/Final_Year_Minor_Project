package coil3.size;

import android.view.View;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewSizeResolverKt {
    public static final <T extends View> ViewSizeResolver<T> ViewSizeResolver(T t) {
        return ViewSizeResolver$default(t, false, 2, null);
    }

    public static /* synthetic */ ViewSizeResolver ViewSizeResolver$default(View view, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return ViewSizeResolver(view, z);
    }

    public static final <T extends View> ViewSizeResolver<T> ViewSizeResolver(T t, boolean z) {
        return new RealViewSizeResolver(t, z);
    }
}
