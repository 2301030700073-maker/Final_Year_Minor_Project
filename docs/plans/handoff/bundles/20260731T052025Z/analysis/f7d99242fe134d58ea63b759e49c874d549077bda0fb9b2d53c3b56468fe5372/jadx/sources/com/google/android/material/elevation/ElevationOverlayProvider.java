package com.google.android.material.elevation;

import android.content.Context;
import androidx.work.Data;
import androidx.work.OperationKt;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ElevationOverlayProvider {
    public static final int OVERLAY_ACCENT_COLOR_ALPHA = (int) Math.round(5.1000000000000005d);
    public final int colorSurface;
    public final float displayDensity;
    public final int elevationOverlayAccentColor;
    public final int elevationOverlayColor;
    public final boolean elevationOverlayEnabled;

    public ElevationOverlayProvider(Context context) {
        boolean resolveBoolean = OperationKt.resolveBoolean(context, R.attr.elevationOverlayEnabled, false);
        Integer colorOrNull = Data.Companion.getColorOrNull(context, R.attr.elevationOverlayColor);
        int intValue = colorOrNull != null ? colorOrNull.intValue() : 0;
        Integer colorOrNull2 = Data.Companion.getColorOrNull(context, R.attr.elevationOverlayAccentColor);
        int intValue2 = colorOrNull2 != null ? colorOrNull2.intValue() : 0;
        Integer colorOrNull3 = Data.Companion.getColorOrNull(context, R.attr.colorSurface);
        int intValue3 = colorOrNull3 != null ? colorOrNull3.intValue() : 0;
        float f = context.getResources().getDisplayMetrics().density;
        this.elevationOverlayEnabled = resolveBoolean;
        this.elevationOverlayColor = intValue;
        this.elevationOverlayAccentColor = intValue2;
        this.colorSurface = intValue3;
        this.displayDensity = f;
    }
}
