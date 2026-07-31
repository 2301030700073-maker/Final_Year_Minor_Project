package androidx.core.view;

import android.view.View;
import android.view.Window;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class WindowInsetsControllerCompat$Impl23 extends MathKt {
    public final Window mWindow;

    public WindowInsetsControllerCompat$Impl23(Window window) {
        this.mWindow = window;
    }

    @Override // kotlin.math.MathKt
    public final boolean isAppearanceLightStatusBars() {
        return (this.mWindow.getDecorView().getSystemUiVisibility() & 8192) != 0;
    }

    @Override // kotlin.math.MathKt
    public final void setAppearanceLightStatusBars(boolean z) {
        Window window = this.mWindow;
        if (!z) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8193));
        } else {
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() | 8192);
        }
    }
}
