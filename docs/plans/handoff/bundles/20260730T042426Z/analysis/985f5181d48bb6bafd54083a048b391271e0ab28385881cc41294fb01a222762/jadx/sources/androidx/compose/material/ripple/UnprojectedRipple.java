package androidx.compose.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* compiled from: RippleHostView.android.kt */
/* loaded from: classes.dex */
final class UnprojectedRipple extends RippleDrawable {
    public static final Companion Companion = new Companion(null);
    private final boolean bounded;
    private boolean projected;
    private Color rippleColor;
    private Integer rippleRadius;

    public UnprojectedRipple(boolean z) {
        super(ColorStateList.valueOf(-16777216), null, z ? new ColorDrawable(-1) : null);
        this.bounded = z;
    }

    /* renamed from: setColor-DxMtmZc, reason: not valid java name */
    public final void m604setColorDxMtmZc(long j, float f) {
        long m603calculateRippleColor5vOe2sY = m603calculateRippleColor5vOe2sY(j, f);
        Color color = this.rippleColor;
        if (color == null ? false : Color.m1304equalsimpl0(color.m1312unboximpl(), m603calculateRippleColor5vOe2sY)) {
            return;
        }
        this.rippleColor = Color.m1298boximpl(m603calculateRippleColor5vOe2sY);
        setColor(ColorStateList.valueOf(ColorKt.m1324toArgb8_81llA(m603calculateRippleColor5vOe2sY)));
    }

    @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean isProjected() {
        return this.projected;
    }

    @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        if (!this.bounded) {
            this.projected = true;
        }
        Rect dirtyBounds = super.getDirtyBounds();
        this.projected = false;
        return dirtyBounds;
    }

    public final void trySetRadius(int i) {
        Integer num = this.rippleRadius;
        if (num != null && num.intValue() == i) {
            return;
        }
        this.rippleRadius = Integer.valueOf(i);
        MRadiusHelper.INSTANCE.setRadius(this, i);
    }

    /* renamed from: calculateRippleColor-5vOe2sY, reason: not valid java name */
    private final long m603calculateRippleColor5vOe2sY(long j, float f) {
        if (Build.VERSION.SDK_INT < 28) {
            f *= 2;
        }
        return Color.m1302copywmQWz5c$default(j, RangesKt.coerceAtMost(f, 1.0f), 0.0f, 0.0f, 0.0f, 14, null);
    }

    /* compiled from: RippleHostView.android.kt */
    private static final class MRadiusHelper {
        public static final MRadiusHelper INSTANCE = new MRadiusHelper();

        private MRadiusHelper() {
        }

        public final void setRadius(RippleDrawable rippleDrawable, int i) {
            rippleDrawable.setRadius(i);
        }
    }

    /* compiled from: RippleHostView.android.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
