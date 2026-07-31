package androidx.core.view;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class WindowInsetsControllerCompat$Impl30 extends MathKt {
    public final WindowInsetsController mInsetsController;
    public final Window mWindow;

    public WindowInsetsControllerCompat$Impl30(Window window) {
        this.mInsetsController = window.getInsetsController();
        this.mWindow = window;
    }

    @Override // kotlin.math.MathKt
    public boolean isAppearanceLightStatusBars() {
        Window window = this.mWindow;
        if (window == null) {
            this.mInsetsController.setSystemBarsAppearance(0, 0);
            if ((this.mInsetsController.getSystemBarsAppearance() & 8) != 0) {
                return true;
            }
        } else if ((window.getDecorView().getSystemUiVisibility() & 8192) != 0) {
            return true;
        }
        return false;
    }

    public final void setAppearanceLight(int i, int i2, boolean z) {
        Window window = this.mWindow;
        if (window == null) {
            WindowInsetsController windowInsetsController = this.mInsetsController;
            if (z) {
                windowInsetsController.setSystemBarsAppearance(i2, i2);
                return;
            } else {
                windowInsetsController.setSystemBarsAppearance(0, i2);
                return;
            }
        }
        if (z) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        } else {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility((~i) & decorView2.getSystemUiVisibility());
        }
    }

    @Override // kotlin.math.MathKt
    public void setAppearanceLightNavigationBars(boolean z) {
        setAppearanceLight(16, 16, z);
    }

    @Override // kotlin.math.MathKt
    public void setAppearanceLightStatusBars(boolean z) {
        setAppearanceLight(8192, 8, z);
    }
}
