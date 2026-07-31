package androidx.core.view;

import android.view.View;
import android.view.Window;
import androidx.paging.HintHandler;
import coil3.util.UtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class WindowInsetsControllerCompat$Impl23 extends UtilsKt {
    public final HintHandler mSoftwareKeyboardControllerCompat;
    public final Window mWindow;

    public WindowInsetsControllerCompat$Impl23(Window window, HintHandler hintHandler) {
        this.mWindow = window;
        this.mSoftwareKeyboardControllerCompat = hintHandler;
    }

    @Override // coil3.util.UtilsKt
    public final void hide() {
        for (int i = 1; i <= 512; i <<= 1) {
            if ((8 & i) != 0) {
                if (i == 1) {
                    setSystemUiFlag(4);
                } else if (i == 2) {
                    setSystemUiFlag(2);
                } else if (i == 8) {
                    ((HintHandler) this.mSoftwareKeyboardControllerCompat.state).hide();
                }
            }
        }
    }

    @Override // coil3.util.UtilsKt
    public final boolean isAppearanceLightStatusBars() {
        return (this.mWindow.getDecorView().getSystemUiVisibility() & 8192) != 0;
    }

    @Override // coil3.util.UtilsKt
    public final void setAppearanceLightStatusBars(boolean z) {
        if (!z) {
            unsetSystemUiFlag(8192);
            return;
        }
        Window window = this.mWindow;
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        setSystemUiFlag(8192);
    }

    public final void setSystemUiFlag(int i) {
        View decorView = this.mWindow.getDecorView();
        decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
    }

    @Override // coil3.util.UtilsKt
    public final void show() {
        for (int i = 1; i <= 512; i <<= 1) {
            if ((8 & i) != 0) {
                if (i == 1) {
                    unsetSystemUiFlag(4);
                    this.mWindow.clearFlags(1024);
                } else if (i == 2) {
                    unsetSystemUiFlag(2);
                } else if (i == 8) {
                    ((HintHandler) this.mSoftwareKeyboardControllerCompat.state).show();
                }
            }
        }
    }

    public final void unsetSystemUiFlag(int i) {
        View decorView = this.mWindow.getDecorView();
        decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
    }
}
