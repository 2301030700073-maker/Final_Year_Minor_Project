package com.skydoves.landscapist;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import kotlin.SynchronizedLazyImpl;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawablePainter extends Painter implements RememberObserver {
    public final Drawable drawable;
    public final ParcelableSnapshotMutableState drawableIntrinsicSize$delegate;
    public final ParcelableSnapshotMutableIntState drawInvalidateTick$delegate = new ParcelableSnapshotMutableIntState(0);
    public final SynchronizedLazyImpl callback$delegate = new SynchronizedLazyImpl(new K9$$ExternalSyntheticLambda0(21, this));

    public DrawablePainter(Drawable drawable) {
        this.drawable = drawable;
        this.drawableIntrinsicSize$delegate = Updater.mutableStateOf$default(new Size(DrawablePainterKt.access$getIntrinsicSize(drawable)));
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.drawable.setAlpha(RangesKt.coerceIn(MathKt.roundToInt(f * 255.0f), 0, 255));
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(ColorFilter colorFilter) {
        this.drawable.setColorFilter(colorFilter != null ? colorFilter.nativeColorFilter : null);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void applyLayoutDirection(LayoutDirection layoutDirection) {
        int i;
        layoutDirection.getClass();
        int ordinal = layoutDirection.ordinal();
        if (ordinal != 0) {
            i = 1;
            if (ordinal != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        } else {
            i = 0;
        }
        this.drawable.setLayoutDirection(i);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo550getIntrinsicSizeNHjbRc() {
        return ((Size) this.drawableIntrinsicSize$delegate.getValue()).packedValue;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        onForgotten();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(LayoutNodeDrawScope layoutNodeDrawScope) {
        Canvas canvas = layoutNodeDrawScope.canvasDrawScope.drawContext.getCanvas();
        this.drawInvalidateTick$delegate.getIntValue();
        int roundToInt = MathKt.roundToInt(Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() >> 32)));
        int roundToInt2 = MathKt.roundToInt(Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() & 4294967295L)));
        Drawable drawable = this.drawable;
        drawable.setBounds(0, 0, roundToInt, roundToInt2);
        try {
            canvas.save();
            android.graphics.Canvas canvas2 = AndroidCanvas_androidKt.EmptyCanvas;
            drawable.draw(((AndroidCanvas) canvas).internalCanvas);
        } finally {
            canvas.restore();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        Drawable drawable = this.drawable;
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        drawable.setVisible(false, false);
        drawable.setCallback(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        Drawable.Callback callback = (Drawable.Callback) this.callback$delegate.getValue();
        Drawable drawable = this.drawable;
        drawable.setCallback(callback);
        drawable.setVisible(true, true);
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }
}
