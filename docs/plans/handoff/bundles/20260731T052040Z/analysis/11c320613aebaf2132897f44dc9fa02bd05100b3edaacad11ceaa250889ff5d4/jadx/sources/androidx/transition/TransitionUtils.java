package androidx.transition;

import android.os.Build;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TransitionUtils {
    public static final boolean HAS_PICTURE_BITMAP;

    static {
        HAS_PICTURE_BITMAP = Build.VERSION.SDK_INT >= 28;
    }
}
