package androidx.core.view;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import androidx.paging.HintHandler;
import coil3.util.UtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class WindowInsetsControllerCompat$Impl30 extends UtilsKt {
    public final WindowInsetsController mInsetsController;
    public final HintHandler mSoftwareKeyboardControllerCompat;
    public final Window mWindow;

    public WindowInsetsControllerCompat$Impl30(Window window, HintHandler hintHandler) {
        this.mInsetsController = window.getInsetsController();
        this.mSoftwareKeyboardControllerCompat = hintHandler;
        this.mWindow = window;
    }

    @Override // coil3.util.UtilsKt
    public final void hide() {
        ((HintHandler) this.mSoftwareKeyboardControllerCompat.state).hide();
        this.mInsetsController.hide(0);
    }

    @Override // coil3.util.UtilsKt
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

    @Override // coil3.util.UtilsKt
    public void setAppearanceLightNavigationBars(boolean z) {
        setAppearanceLight(16, 16, z);
    }

    @Override // coil3.util.UtilsKt
    public void setAppearanceLightStatusBars(boolean z) {
        setAppearanceLight(8192, 8, z);
    }

    @Override // coil3.util.UtilsKt
    public final void show() {
        ((HintHandler) this.mSoftwareKeyboardControllerCompat.state).show();
        this.mInsetsController.show(0);
    }
}
