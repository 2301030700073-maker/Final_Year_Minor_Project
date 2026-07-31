package androidx.activity;

import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import net.newpipe.app.AppKt;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class EdgeToEdgeApi26 extends EdgeToEdgeBase {
    @Override // androidx.activity.EdgeToEdgeBase
    public void setUp(SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, Window window, View view, boolean z, boolean z2) {
        systemBarStyle.getClass();
        systemBarStyle2.getClass();
        window.getClass();
        view.getClass();
        AppKt.setDecorFitsSystemWindows(window, false);
        window.setStatusBarColor(z ? systemBarStyle.darkScrim : systemBarStyle.lightScrim);
        window.setNavigationBarColor(z2 ? systemBarStyle2.darkScrim : systemBarStyle2.lightScrim);
        int i = Build.VERSION.SDK_INT;
        Okio windowInsetsControllerCompat$Impl35 = i >= 35 ? new WindowInsetsControllerCompat$Impl35(window) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window) : new WindowInsetsControllerCompat$Impl23(window);
        windowInsetsControllerCompat$Impl35.setAppearanceLightStatusBars(!z);
        windowInsetsControllerCompat$Impl35.setAppearanceLightNavigationBars(!z2);
    }
}
