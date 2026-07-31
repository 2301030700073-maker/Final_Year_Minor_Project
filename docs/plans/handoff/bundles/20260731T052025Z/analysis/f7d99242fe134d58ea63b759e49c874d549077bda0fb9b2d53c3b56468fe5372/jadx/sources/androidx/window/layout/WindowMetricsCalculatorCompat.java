package androidx.window.layout;

import android.os.Build;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.window.layout.util.BoundsHelperApi16Impl;
import androidx.window.layout.util.DensityCompatHelper;
import androidx.window.layout.util.DensityCompatHelperApi34Impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {
    public final DensityCompatHelper densityCompatHelper;

    public WindowMetricsCalculatorCompat() {
        this.densityCompatHelper = Build.VERSION.SDK_INT >= 34 ? DensityCompatHelperApi34Impl.INSTANCE : BoundsHelperApi16Impl.INSTANCE$4;
        IntOffsetKt.arrayListOf(1, 2, 4, 8, 16, 32, 64, 128);
    }
}
