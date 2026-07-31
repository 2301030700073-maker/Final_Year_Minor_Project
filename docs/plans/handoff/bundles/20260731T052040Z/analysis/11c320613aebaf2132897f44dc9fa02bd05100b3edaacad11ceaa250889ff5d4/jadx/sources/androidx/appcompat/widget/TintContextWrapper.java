package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
