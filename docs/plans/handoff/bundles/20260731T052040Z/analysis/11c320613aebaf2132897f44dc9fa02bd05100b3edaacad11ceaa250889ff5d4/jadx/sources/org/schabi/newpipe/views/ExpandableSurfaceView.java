package org.schabi.newpipe.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceView;
import android.view.View;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ExpandableSurfaceView extends SurfaceView {
    public int baseHeight;
    public int maxHeight;
    public int resizeMode;
    public float scaleX;
    public float scaleY;
    public float videoAspectRatio;

    public ExpandableSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.resizeMode = 0;
        this.baseHeight = 0;
        this.maxHeight = 0;
        this.videoAspectRatio = 0.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
    }

    public int getResizeMode() {
        return this.resizeMode;
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        setScaleX(this.scaleX);
        setScaleY(this.scaleY);
    }

    @Override // android.view.SurfaceView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.videoAspectRatio == 0.0f) {
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        float f = this.videoAspectRatio;
        boolean z = f < 1.0f;
        int i3 = this.maxHeight;
        if (i3 == 0 || this.resizeMode == 0 || !z) {
            i3 = this.baseHeight;
        }
        if (size == 0 || i3 == 0) {
            return;
        }
        float f2 = size;
        float f3 = i3;
        float f4 = f2 / f3;
        float f5 = (f / f4) - 1.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        int i4 = this.resizeMode;
        if (i4 == 0) {
            if (f5 > 0.0f) {
                i3 = (int) (f2 / f);
            } else {
                size = (int) (f3 * f);
            }
        } else if (i4 == 4) {
            if (f5 < 0.0f) {
                this.scaleY = f4 / f;
            } else {
                this.scaleX = f / f4;
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
    }

    public void setAspectRatio(float f) {
        if (this.videoAspectRatio == f || f == 0.0f || Float.isInfinite(f) || Float.isNaN(f)) {
            return;
        }
        this.videoAspectRatio = f;
        requestLayout();
    }

    public final void setHeights(int i, int i2) {
        if (this.baseHeight == i && this.maxHeight == i2) {
            return;
        }
        this.baseHeight = i;
        this.maxHeight = i2;
        requestLayout();
    }

    public void setResizeMode(int i) {
        if (this.resizeMode == i) {
            return;
        }
        this.resizeMode = i;
        requestLayout();
    }
}
