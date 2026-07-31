package androidx.window.layout;

import android.os.Build;
import androidx.window.layout.util.BoundsHelperApi16Impl;
import androidx.window.layout.util.DensityCompatHelper;
import androidx.window.layout.util.DensityCompatHelperApi34Impl;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {
    public final DensityCompatHelper densityCompatHelper;

    public WindowMetricsCalculatorCompat() {
        this.densityCompatHelper = Build.VERSION.SDK_INT >= 34 ? DensityCompatHelperApi34Impl.INSTANCE : BoundsHelperApi16Impl.INSTANCE$4;
        Jsoup.arrayListOf(1, 2, 4, 8, 16, 32, 64, 128);
    }
}
