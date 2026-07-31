package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.ui.geometry.Size;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import kotlin.Lazy;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DrawablePainter$callback$2$1 implements Drawable.Callback {
    public final /* synthetic */ int $r8$classId;
    public Object this$0;

    public /* synthetic */ DrawablePainter$callback$2$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        long j;
        switch (this.$r8$classId) {
            case 0:
                drawable.getClass();
                DrawablePainter drawablePainter = (DrawablePainter) this.this$0;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = drawablePainter.drawInvalidateTick$delegate;
                parcelableSnapshotMutableState.setValue(Integer.valueOf(((Number) parcelableSnapshotMutableState.getValue()).intValue() + 1));
                Drawable drawable2 = drawablePainter.drawable;
                Lazy lazy = DrawablePainterKt.MAIN_HANDLER$delegate;
                if (drawable2.getIntrinsicWidth() < 0 || drawable2.getIntrinsicHeight() < 0) {
                    j = 9205357640488583168L;
                } else {
                    float intrinsicWidth = drawable2.getIntrinsicWidth();
                    float intrinsicHeight = drawable2.getIntrinsicHeight();
                    j = (Float.floatToRawIntBits(intrinsicWidth) << 32) | (Float.floatToRawIntBits(intrinsicHeight) & 4294967295L);
                }
                drawablePainter.drawableIntrinsicSize$delegate.setValue(new Size(j));
                break;
            case 1:
                break;
            default:
                ((AnimatedVectorDrawableCompat) this.this$0).invalidateSelf();
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        switch (this.$r8$classId) {
            case 0:
                drawable.getClass();
                runnable.getClass();
                ((Handler) DrawablePainterKt.MAIN_HANDLER$delegate.getValue()).postAtTime(runnable, j);
                break;
            case 1:
                Drawable.Callback callback = (Drawable.Callback) this.this$0;
                if (callback != null) {
                    callback.scheduleDrawable(drawable, runnable, j);
                    break;
                }
                break;
            default:
                ((AnimatedVectorDrawableCompat) this.this$0).scheduleSelf(runnable, j);
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        switch (this.$r8$classId) {
            case 0:
                drawable.getClass();
                runnable.getClass();
                ((Handler) DrawablePainterKt.MAIN_HANDLER$delegate.getValue()).removeCallbacks(runnable);
                break;
            case 1:
                Drawable.Callback callback = (Drawable.Callback) this.this$0;
                if (callback != null) {
                    callback.unscheduleDrawable(drawable, runnable);
                    break;
                }
                break;
            default:
                ((AnimatedVectorDrawableCompat) this.this$0).unscheduleSelf(runnable);
                break;
        }
    }

    private final void invalidateDrawable$androidx$appcompat$graphics$drawable$DrawableContainerCompat$BlockInvalidateCallback(Drawable drawable) {
    }
}
