package androidx.core.view;

import android.view.Window;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WindowInsetsControllerCompat$Impl26 extends WindowInsetsControllerCompat$Impl23 {
    @Override // coil3.util.UtilsKt
    public final void setAppearanceLightNavigationBars(boolean z) {
        if (!z) {
            unsetSystemUiFlag(16);
            return;
        }
        Window window = this.mWindow;
        window.clearFlags(134217728);
        window.addFlags(Integer.MIN_VALUE);
        setSystemUiFlag(16);
    }
}
