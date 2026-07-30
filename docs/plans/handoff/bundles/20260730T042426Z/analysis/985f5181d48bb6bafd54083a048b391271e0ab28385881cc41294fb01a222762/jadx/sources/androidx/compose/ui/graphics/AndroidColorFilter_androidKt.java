package androidx.compose.ui.graphics;

import android.graphics.PorterDuffColorFilter;
import android.os.Build;

/* compiled from: AndroidColorFilter.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidColorFilter_androidKt {
    public static final android.graphics.ColorFilter asAndroidColorFilter(ColorFilter colorFilter) {
        return colorFilter.getNativeColorFilter$ui_graphics_release();
    }

    /* renamed from: actualTintColorFilter-xETnrds, reason: not valid java name */
    public static final android.graphics.ColorFilter m1224actualTintColorFilterxETnrds(long j, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return BlendModeColorFilterHelper.INSTANCE.m1287BlendModeColorFilterxETnrds(j, i);
        }
        return new PorterDuffColorFilter(ColorKt.m1324toArgb8_81llA(j), AndroidBlendMode_androidKt.m1214toPorterDuffModes9anfk8(i));
    }
}
