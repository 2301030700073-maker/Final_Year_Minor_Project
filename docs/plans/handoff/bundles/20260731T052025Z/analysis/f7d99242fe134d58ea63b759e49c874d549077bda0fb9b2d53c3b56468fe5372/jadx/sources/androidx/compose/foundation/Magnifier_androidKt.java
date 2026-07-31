package androidx.compose.foundation;

import android.os.Build;
import androidx.compose.ui.semantics.SemanticsPropertyKey;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Magnifier_androidKt {
    public static final SemanticsPropertyKey MagnifierPositionInRoot = new SemanticsPropertyKey("MagnifierPositionInRoot");

    public static boolean isPlatformMagnifierSupported$default() {
        return Build.VERSION.SDK_INT >= 28;
    }
}
