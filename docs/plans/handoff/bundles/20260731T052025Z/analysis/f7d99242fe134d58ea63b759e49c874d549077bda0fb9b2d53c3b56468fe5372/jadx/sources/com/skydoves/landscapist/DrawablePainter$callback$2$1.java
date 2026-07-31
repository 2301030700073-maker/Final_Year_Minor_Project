package com.skydoves.landscapist;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.geometry.Size;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        switch (this.$r8$classId) {
            case 0:
                drawable.getClass();
                DrawablePainter drawablePainter = (DrawablePainter) this.this$0;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = drawablePainter.drawInvalidateTick$delegate;
                parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() + 1);
                drawablePainter.drawableIntrinsicSize$delegate.setValue(new Size(DrawablePainterKt.access$getIntrinsicSize(drawablePainter.drawable)));
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
