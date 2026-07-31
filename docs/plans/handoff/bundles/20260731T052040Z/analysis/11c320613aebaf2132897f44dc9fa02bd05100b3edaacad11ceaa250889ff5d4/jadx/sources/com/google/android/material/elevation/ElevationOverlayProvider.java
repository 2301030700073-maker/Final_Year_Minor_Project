package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import androidx.core.graphics.ColorUtils;
import kotlin.io.CloseableKt;
import kotlin.math.MathKt;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ElevationOverlayProvider {
    public static final int OVERLAY_ACCENT_COLOR_ALPHA = (int) Math.round(5.1000000000000005d);
    public final int colorSurface;
    public final float displayDensity;
    public final int elevationOverlayAccentColor;
    public final int elevationOverlayColor;
    public final boolean elevationOverlayEnabled;

    public ElevationOverlayProvider(Context context) {
        Integer num;
        Integer num2;
        boolean resolveBoolean = MathKt.resolveBoolean(context, R.attr.elevationOverlayEnabled, false);
        TypedValue resolve = MathKt.resolve(context, R.attr.elevationOverlayColor);
        Integer num3 = null;
        if (resolve != null) {
            int i = resolve.resourceId;
            num = Integer.valueOf(i != 0 ? context.getColor(i) : resolve.data);
        } else {
            num = null;
        }
        int intValue = num != null ? num.intValue() : 0;
        TypedValue resolve2 = MathKt.resolve(context, R.attr.elevationOverlayAccentColor);
        if (resolve2 != null) {
            int i2 = resolve2.resourceId;
            num2 = Integer.valueOf(i2 != 0 ? context.getColor(i2) : resolve2.data);
        } else {
            num2 = null;
        }
        int intValue2 = num2 != null ? num2.intValue() : 0;
        TypedValue resolve3 = MathKt.resolve(context, R.attr.colorSurface);
        if (resolve3 != null) {
            int i3 = resolve3.resourceId;
            num3 = Integer.valueOf(i3 != 0 ? context.getColor(i3) : resolve3.data);
        }
        int intValue3 = num3 != null ? num3.intValue() : 0;
        float f = context.getResources().getDisplayMetrics().density;
        this.elevationOverlayEnabled = resolveBoolean;
        this.elevationOverlayColor = intValue;
        this.elevationOverlayAccentColor = intValue2;
        this.colorSurface = intValue3;
        this.displayDensity = f;
    }

    public final int compositeOverlayIfNeeded(float f, int i) {
        int i2;
        if (!this.elevationOverlayEnabled || ColorUtils.setAlphaComponent(i, 255) != this.colorSurface) {
            return i;
        }
        float min = (this.displayDensity <= 0.0f || f <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f / r1)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int alpha = Color.alpha(i);
        int layer = CloseableKt.layer(min, ColorUtils.setAlphaComponent(i, 255), this.elevationOverlayColor);
        if (min > 0.0f && (i2 = this.elevationOverlayAccentColor) != 0) {
            layer = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i2, OVERLAY_ACCENT_COLOR_ALPHA), layer);
        }
        return ColorUtils.setAlphaComponent(layer, alpha);
    }
}
