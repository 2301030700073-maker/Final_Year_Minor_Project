package org.wikipedia.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.TuplesKt;
import org.wikipedia.R$styleable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lorg/wikipedia/views/DiscreteSeekBar;", "Landroidx/appcompat/widget/AppCompatSeekBar;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "value", "getValue", "()I", "setValue", "(I)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DiscreteSeekBar extends AppCompatSeekBar {
    public final Drawable centerDrawable;
    public final boolean isRtl;
    public final int minNumber;
    public final Drawable tickDrawable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscreteSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DiscreteSeekBar, 0, 0);
            int integer = obtainStyledAttributes.getInteger(1, 0);
            this.minNumber = integer;
            setMax(getMax() - integer);
            int resourceId = obtainStyledAttributes.getResourceId(2, 0);
            if (resourceId != 0) {
                this.tickDrawable = TuplesKt.getDrawable(context, resourceId);
            }
            int resourceId2 = obtainStyledAttributes.getResourceId(0, 0);
            if (resourceId2 != 0) {
                this.centerDrawable = TuplesKt.getDrawable(context, resourceId2);
            }
            obtainStyledAttributes.recycle();
        }
        this.isRtl = getResources().getConfiguration().getLayoutDirection() == 1;
        setWillNotDraw(false);
    }

    public final void drawTickMarks(Canvas canvas, boolean z, boolean z2) {
        int max = getMax();
        int i = this.minNumber;
        int i2 = max + i;
        Drawable drawable = this.tickDrawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth() >= 0 ? drawable.getIntrinsicWidth() / 2 : 1;
            int intrinsicHeight = drawable.getIntrinsicHeight() >= 0 ? drawable.getIntrinsicHeight() / 2 : 1;
            drawable.setBounds(-intrinsicWidth, -intrinsicHeight, intrinsicWidth, intrinsicHeight);
        }
        Drawable drawable2 = this.centerDrawable;
        if (drawable2 != null) {
            int intrinsicWidth2 = drawable2.getIntrinsicWidth() >= 0 ? drawable2.getIntrinsicWidth() / 2 : 1;
            int intrinsicHeight2 = drawable2.getIntrinsicHeight() >= 0 ? drawable2.getIntrinsicHeight() / 2 : 1;
            drawable2.setBounds(-intrinsicWidth2, -intrinsicHeight2, intrinsicWidth2, intrinsicHeight2);
        }
        float width = ((getWidth() - getPaddingLeft()) - getPaddingRight()) / (i2 - i);
        int save = canvas.save();
        try {
            if (this.isRtl) {
                canvas.scale(-1.0f, 1.0f, canvas.getWidth() / 2, canvas.getHeight() / 2);
            }
            canvas.translate(getPaddingLeft(), canvas.getHeight() / 2);
            if (i <= i2) {
                while (true) {
                    if (z2) {
                        if (i > getValue() && drawable != null) {
                            drawable.draw(canvas);
                        }
                    }
                    if (z && i == 0 && drawable2 != null) {
                        drawable2.draw(canvas);
                    }
                    canvas.translate(width, RecyclerView.DECELERATION_RATE);
                    if (i == i2) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            canvas.restoreToCount(save);
        } catch (Throwable th) {
            canvas.restoreToCount(save);
            throw th;
        }
    }

    public final int getValue() {
        return getProgress() + this.minNumber;
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            canvas.getClass();
            if (getValue() >= 0) {
                drawTickMarks(canvas, true, false);
                super.onDraw(canvas);
                drawTickMarks(canvas, false, true);
            } else {
                super.onDraw(canvas);
                drawTickMarks(canvas, true, true);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void setValue(int i) {
        setProgress(i - this.minNumber);
    }
}
