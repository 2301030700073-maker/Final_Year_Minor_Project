package androidx.core.view;

import android.view.View;
import android.view.Window;
import com.google.android.exoplayer2.C;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WindowInsetsControllerCompat$Impl26 extends WindowInsetsControllerCompat$Impl23 {
    @Override // okio.Okio
    public final void setAppearanceLightNavigationBars(boolean z) {
        Window window = this.mWindow;
        if (!z) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-17));
        } else {
            window.clearFlags(C.BUFFER_FLAG_FIRST_SAMPLE);
            window.addFlags(Integer.MIN_VALUE);
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() | 16);
        }
    }
}
