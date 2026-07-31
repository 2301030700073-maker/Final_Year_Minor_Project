package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TintContextWrapper extends ContextWrapper {
    public static final Object CACHE_LOCK = null;

    public static void wrap(Context context) {
        if (context.getResources() instanceof TintResources) {
            return;
        }
        context.getResources();
        int i = VectorEnabledTintResources.$r8$clinit;
    }
}
