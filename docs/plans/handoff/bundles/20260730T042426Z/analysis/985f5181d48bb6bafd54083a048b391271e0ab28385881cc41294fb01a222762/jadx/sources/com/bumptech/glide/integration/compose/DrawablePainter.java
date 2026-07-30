package com.bumptech.glide.integration.compose;

import android.graphics.drawable.Drawable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidColorFilter_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import org.bouncycastle.pqc.crypto.rainbow.util.GF2Field;

/* compiled from: Painter.kt */
/* loaded from: classes.dex */
final class DrawablePainter extends Painter {
    private final Drawable drawable;
    private long drawableIntrinsicSize;

    /* compiled from: Painter.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DrawablePainter(Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        this.drawable = drawable;
        if (isIntrinsicSizeValid(drawable)) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        this.drawableIntrinsicSize = m2584getIntrinsicSize7Ah8Wj8(drawable);
    }

    private final boolean isIntrinsicSizeValid(Drawable drawable) {
        return drawable.getIntrinsicWidth() >= 0 && drawable.getIntrinsicHeight() >= 0;
    }

    /* renamed from: getIntrinsicSize-7Ah8Wj8, reason: not valid java name */
    private final long m2584getIntrinsicSize7Ah8Wj8(Drawable drawable) {
        if (isIntrinsicSizeValid(drawable)) {
            return IntSizeKt.m2491toSizeozmzZPI(IntSizeKt.IntSize(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()));
        }
        return Size.Companion.m1209getUnspecifiedNHjbRc();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f) {
        this.drawable.setAlpha(RangesKt.coerceIn(MathKt.roundToInt(f * GF2Field.MASK), 0, GF2Field.MASK));
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(ColorFilter colorFilter) {
        this.drawable.setColorFilter(colorFilter != null ? AndroidColorFilter_androidKt.asAndroidColorFilter(colorFilter) : null);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyLayoutDirection(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Drawable drawable = this.drawable;
        int i = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return drawable.setLayoutDirection(i2);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo1556getIntrinsicSizeNHjbRc() {
        return this.drawableIntrinsicSize;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void onDraw(DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Canvas canvas = drawScope.getDrawContext().getCanvas();
        this.drawable.setBounds(0, 0, MathKt.roundToInt(Size.m1204getWidthimpl(drawScope.mo1491getSizeNHjbRc())), MathKt.roundToInt(Size.m1202getHeightimpl(drawScope.mo1491getSizeNHjbRc())));
        try {
            canvas.save();
            this.drawable.draw(AndroidCanvas_androidKt.getNativeCanvas(canvas));
        } finally {
            canvas.restore();
        }
    }
}
