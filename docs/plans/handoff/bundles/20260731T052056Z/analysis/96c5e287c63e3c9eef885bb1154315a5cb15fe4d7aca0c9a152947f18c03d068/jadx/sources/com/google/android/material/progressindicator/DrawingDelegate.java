package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DrawingDelegate {
    public final PathMeasure activePathMeasure;
    public final Path cachedActivePath;
    public final Path displayedActivePath;
    public final LinearProgressIndicatorSpec spec;
    public final Matrix transform;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ActiveIndicator {
        public float amplitudeFraction = 1.0f;
        public int color;
        public float endFraction;
        public int gapSize;
        public boolean isDeterminate;
        public float phaseFraction;
        public float startFraction;
    }

    public DrawingDelegate(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        Path path = new Path();
        this.cachedActivePath = path;
        this.displayedActivePath = new Path();
        this.activePathMeasure = new PathMeasure(path, false);
        this.spec = linearProgressIndicatorSpec;
        this.transform = new Matrix();
    }

    public static float vectorToCanvasRotation(float[] fArr) {
        return (float) Math.toDegrees(Math.atan2(fArr[1], fArr[0]));
    }

    public abstract int getPreferredHeight();

    public abstract void invalidateCachedPaths();

    public final void validateSpecAndAdjustCanvas(Canvas canvas, Rect rect, float f, boolean z, boolean z2) {
        this.spec.validateSpec();
        LinearDrawingDelegate linearDrawingDelegate = (LinearDrawingDelegate) this;
        if (linearDrawingDelegate.trackLength != rect.width()) {
            linearDrawingDelegate.trackLength = rect.width();
            linearDrawingDelegate.invalidateCachedPaths();
        }
        float preferredHeight = linearDrawingDelegate.getPreferredHeight();
        canvas.translate((rect.width() / 2.0f) + rect.left, Math.max(RecyclerView.DECELERATION_RATE, (rect.height() - preferredHeight) / 2.0f) + (rect.height() / 2.0f) + rect.top);
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = linearDrawingDelegate.spec;
        if (linearProgressIndicatorSpec.drawHorizontallyInverse) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f2 = linearDrawingDelegate.trackLength / 2.0f;
        float f3 = preferredHeight / 2.0f;
        canvas.clipRect(-f2, -f3, f2, f3);
        linearDrawingDelegate.displayedTrackThickness = linearProgressIndicatorSpec.trackThickness * f;
        linearDrawingDelegate.displayedCornerRadius = Math.min(r0 / 2, linearProgressIndicatorSpec.getTrackCornerRadiusInPx()) * f;
        linearDrawingDelegate.displayedAmplitude = linearProgressIndicatorSpec.waveAmplitude * f;
        linearDrawingDelegate.displayedInnerCornerRadius = Math.min(linearProgressIndicatorSpec.trackThickness / 2.0f, linearProgressIndicatorSpec.getTrackInnerCornerRadiusInPx()) * f;
        if (z || z2) {
            if ((z && linearProgressIndicatorSpec.showAnimationBehavior == 2) || (z2 && linearProgressIndicatorSpec.hideAnimationBehavior == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z || (z2 && linearProgressIndicatorSpec.hideAnimationBehavior != 3)) {
                canvas.translate(RecyclerView.DECELERATION_RATE, ((1.0f - f) * linearProgressIndicatorSpec.trackThickness) / 2.0f);
            }
        }
        if (z2 && linearProgressIndicatorSpec.hideAnimationBehavior == 3) {
            linearDrawingDelegate.totalTrackLengthFraction = f;
        } else {
            linearDrawingDelegate.totalTrackLengthFraction = 1.0f;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PathPoint {
        public final float[] posVec;
        public final float[] tanVec;
        public final Matrix transform;

        public PathPoint(float[] fArr, float[] fArr2) {
            float[] fArr3 = new float[2];
            this.posVec = fArr3;
            float[] fArr4 = new float[2];
            this.tanVec = fArr4;
            System.arraycopy(fArr, 0, fArr3, 0, 2);
            System.arraycopy(fArr2, 0, fArr4, 0, 2);
            this.transform = new Matrix();
        }

        public final void reset() {
            Arrays.fill(this.posVec, RecyclerView.DECELERATION_RATE);
            float[] fArr = this.tanVec;
            Arrays.fill(fArr, RecyclerView.DECELERATION_RATE);
            fArr[0] = 1.0f;
            this.transform.reset();
        }

        public final void scale(float f) {
            float[] fArr = this.posVec;
            fArr[0] = fArr[0] * 1.0f;
            fArr[1] = fArr[1] * f;
            float[] fArr2 = this.tanVec;
            fArr2[0] = fArr2[0] * 1.0f;
            fArr2[1] = fArr2[1] * f;
        }

        public final void translate(float f) {
            float[] fArr = this.posVec;
            fArr[0] = fArr[0] + f;
            fArr[1] = fArr[1] + RecyclerView.DECELERATION_RATE;
        }

        public PathPoint() {
            this.posVec = new float[2];
            this.tanVec = new float[]{1.0f, 0.0f};
            this.transform = new Matrix();
        }
    }
}
