package androidx.transition;

import android.os.Build;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TransitionUtils {
    public static final boolean HAS_PICTURE_BITMAP;

    static {
        HAS_PICTURE_BITMAP = Build.VERSION.SDK_INT >= 28;
    }
}
