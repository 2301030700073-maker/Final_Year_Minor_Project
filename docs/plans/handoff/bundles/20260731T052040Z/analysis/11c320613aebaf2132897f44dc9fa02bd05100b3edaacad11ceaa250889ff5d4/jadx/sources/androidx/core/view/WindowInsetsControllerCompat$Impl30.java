package androidx.core.view;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class WindowInsetsControllerCompat$Impl30 extends Okio {
    public final WindowInsetsController mInsetsController;
    public final Window mWindow;

    public WindowInsetsControllerCompat$Impl30(Window window) {
        this.mInsetsController = window.getInsetsController();
        this.mWindow = window;
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

    @Override // okio.Okio
    public void setAppearanceLightNavigationBars(boolean z) {
        setAppearanceLight(16, 16, z);
    }

    @Override // okio.Okio
    public void setAppearanceLightStatusBars(boolean z) {
        setAppearanceLight(8192, 8, z);
    }
}
