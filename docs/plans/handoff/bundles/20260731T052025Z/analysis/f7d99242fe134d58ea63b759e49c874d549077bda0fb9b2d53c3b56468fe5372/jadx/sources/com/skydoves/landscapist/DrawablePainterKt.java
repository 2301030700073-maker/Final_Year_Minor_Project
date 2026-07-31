package com.skydoves.landscapist;

import android.graphics.drawable.Drawable;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DrawablePainterKt {
    public static final Lazy MAIN_HANDLER$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new UtcOffsetJvmKt$$ExternalSyntheticLambda0(1));

    public static final long access$getIntrinsicSize(Drawable drawable) {
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            return 9205357640488583168L;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        return (Float.floatToRawIntBits(intrinsicWidth) << 32) | (Float.floatToRawIntBits(intrinsicHeight) & 4294967295L);
    }
}
