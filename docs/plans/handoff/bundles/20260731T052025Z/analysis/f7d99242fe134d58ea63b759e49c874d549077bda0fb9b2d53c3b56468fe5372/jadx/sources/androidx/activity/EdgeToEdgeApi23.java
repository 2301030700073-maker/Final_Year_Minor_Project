package androidx.activity;

import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.datastore.preferences.protobuf.Utf8;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EdgeToEdgeApi23 extends EdgeToEdgeBase {
    @Override // androidx.activity.EdgeToEdgeBase
    public void setUp(SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, Window window, View view, boolean z, boolean z2) {
        systemBarStyle.getClass();
        systemBarStyle2.getClass();
        window.getClass();
        view.getClass();
        Utf8.SafeProcessor.setDecorFitsSystemWindows(window, false);
        window.setStatusBarColor(z ? systemBarStyle.darkScrim : systemBarStyle.lightScrim);
        window.setNavigationBarColor(systemBarStyle2.darkScrim);
        int i = Build.VERSION.SDK_INT;
        (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window) : new WindowInsetsControllerCompat$Impl23(window)).setAppearanceLightStatusBars(!z);
    }
}
