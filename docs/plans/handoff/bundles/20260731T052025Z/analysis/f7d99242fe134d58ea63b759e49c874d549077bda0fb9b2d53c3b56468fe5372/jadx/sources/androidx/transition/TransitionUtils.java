package androidx.transition;

import android.os.Build;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TransitionUtils {
    public static final boolean HAS_PICTURE_BITMAP;

    static {
        HAS_PICTURE_BITMAP = Build.VERSION.SDK_INT >= 28;
    }
}
