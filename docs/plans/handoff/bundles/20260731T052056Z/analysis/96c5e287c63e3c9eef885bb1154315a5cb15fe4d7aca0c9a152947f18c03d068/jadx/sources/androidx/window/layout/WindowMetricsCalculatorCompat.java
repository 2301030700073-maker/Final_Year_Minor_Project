package androidx.window.layout;

import android.os.Build;
import androidx.room.Room;
import androidx.window.layout.util.BoundsHelperApi16Impl;
import androidx.window.layout.util.DensityCompatHelper;
import androidx.window.layout.util.DensityCompatHelperApi34Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {
    public final DensityCompatHelper densityCompatHelper;

    public WindowMetricsCalculatorCompat() {
        this.densityCompatHelper = Build.VERSION.SDK_INT >= 34 ? DensityCompatHelperApi34Impl.INSTANCE : BoundsHelperApi16Impl.INSTANCE$4;
        Room.arrayListOf(1, 2, 4, 8, 16, 32, 64, 128);
    }
}
