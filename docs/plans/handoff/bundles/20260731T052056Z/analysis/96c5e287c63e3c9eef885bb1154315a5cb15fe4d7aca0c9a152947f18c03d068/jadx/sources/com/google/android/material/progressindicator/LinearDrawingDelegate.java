package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.progressindicator.DrawingDelegate;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinearDrawingDelegate extends DrawingDelegate {
    public float adjustedWavelength;
    public int cachedWavelength;
    public float displayedAmplitude;
    public float displayedCornerRadius;
    public float displayedInnerCornerRadius;
    public float displayedTrackThickness;
    public boolean drawingDeterminateIndicator;
    public Pair endPoints;
    public float totalTrackLengthFraction;
    public float trackLength;

    public final void drawLine(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3, float f3, float f4, boolean z) {
        float f5;
        float f6;
        float f7;
        Canvas canvas2;
        Pair pair = this.endPoints;
        float clamp = RegexKt.clamp(f, RecyclerView.DECELERATION_RATE, 1.0f);
        float clamp2 = RegexKt.clamp(f2, RecyclerView.DECELERATION_RATE, 1.0f);
        float lerp = UuidKt.lerp(1.0f - this.totalTrackLengthFraction, 1.0f, clamp);
        float lerp2 = UuidKt.lerp(1.0f - this.totalTrackLengthFraction, 1.0f, clamp2);
        int clamp3 = (int) ((RegexKt.clamp(lerp, RecyclerView.DECELERATION_RATE, 0.01f) * i2) / 0.01f);
        int clamp4 = (int) (((1.0f - RegexKt.clamp(lerp2, 0.99f, 1.0f)) * i3) / 0.01f);
        float f8 = this.trackLength;
        int i4 = (int) ((lerp * f8) + clamp3);
        int i5 = (int) ((lerp2 * f8) - clamp4);
        float f9 = this.displayedCornerRadius;
        float f10 = this.displayedInnerCornerRadius;
        if (f9 != f10) {
            float max = Math.max(f9, f10);
            float f11 = this.trackLength;
            float f12 = max / f11;
            f5 = UuidKt.lerp(this.displayedCornerRadius, this.displayedInnerCornerRadius, RegexKt.clamp(i4 / f11, RecyclerView.DECELERATION_RATE, f12) / f12);
            float f13 = this.displayedCornerRadius;
            float f14 = this.displayedInnerCornerRadius;
            float f15 = this.trackLength;
            f6 = UuidKt.lerp(f13, f14, RegexKt.clamp((f15 - i5) / f15, RecyclerView.DECELERATION_RATE, f12) / f12);
        } else {
            f5 = f9;
            f6 = f5;
        }
        float f16 = (-this.trackLength) / 2.0f;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        boolean z2 = linearProgressIndicatorSpec.hasWavyEffect(this.drawingDeterminateIndicator) && z && f3 > RecyclerView.DECELERATION_RATE;
        if (i4 <= i5) {
            float f17 = i4 + f5;
            float f18 = i5 - f6;
            float f19 = f5 * 2.0f;
            float f20 = f6 * 2.0f;
            paint.setColor(i);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.displayedTrackThickness);
            ((DrawingDelegate.PathPoint) pair.first).reset();
            ((DrawingDelegate.PathPoint) pair.second).reset();
            ((DrawingDelegate.PathPoint) pair.first).translate(f17 + f16);
            ((DrawingDelegate.PathPoint) pair.second).translate(f18 + f16);
            if (i4 == 0 && f18 + f6 < f17 + f5) {
                DrawingDelegate.PathPoint pathPoint = (DrawingDelegate.PathPoint) pair.first;
                float f21 = this.displayedTrackThickness;
                drawRoundedBlock(canvas, paint, pathPoint, f19, f21, f5, (DrawingDelegate.PathPoint) pair.second, f20, f21, f6, true);
                return;
            }
            if (f17 - f5 > f18 - f6) {
                DrawingDelegate.PathPoint pathPoint2 = (DrawingDelegate.PathPoint) pair.second;
                float f22 = this.displayedTrackThickness;
                drawRoundedBlock(canvas, paint, pathPoint2, f20, f22, f6, (DrawingDelegate.PathPoint) pair.first, f19, f22, f5, false);
                return;
            }
            float f23 = f6;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap((linearProgressIndicatorSpec.useRelativeTrackCornerRadius && linearProgressIndicatorSpec.trackCornerRadiusFraction == 0.5f && linearProgressIndicatorSpec.getTrackInnerCornerRadiusInPx() == linearProgressIndicatorSpec.getTrackCornerRadiusInPx()) ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            if (z2) {
                float f24 = this.trackLength;
                float f25 = f17 / f24;
                float f26 = f18 / f24;
                int i6 = this.drawingDeterminateIndicator ? linearProgressIndicatorSpec.wavelengthDeterminate : linearProgressIndicatorSpec.wavelengthIndeterminate;
                if (i6 != this.cachedWavelength) {
                    this.cachedWavelength = i6;
                    invalidateCachedPaths();
                }
                Path path = this.displayedActivePath;
                path.rewind();
                float f27 = (-this.trackLength) / 2.0f;
                boolean hasWavyEffect = linearProgressIndicatorSpec.hasWavyEffect(this.drawingDeterminateIndicator);
                if (hasWavyEffect) {
                    float f28 = this.trackLength;
                    f7 = 0.5f;
                    float f29 = this.adjustedWavelength;
                    float f30 = f28 / f29;
                    float f31 = f4 / f30;
                    float f32 = f30 / (f30 + 1.0f);
                    f25 = (f25 + f31) * f32;
                    f26 = (f26 + f31) * f32;
                    f27 -= f29 * f4;
                } else {
                    f7 = 0.5f;
                }
                PathMeasure pathMeasure = this.activePathMeasure;
                float length = pathMeasure.getLength() * f25;
                float length2 = pathMeasure.getLength() * f26;
                pathMeasure.getSegment(length, length2, path, true);
                DrawingDelegate.PathPoint pathPoint3 = (DrawingDelegate.PathPoint) pair.first;
                pathPoint3.reset();
                pathMeasure.getPosTan(length, pathPoint3.posVec, pathPoint3.tanVec);
                DrawingDelegate.PathPoint pathPoint4 = (DrawingDelegate.PathPoint) pair.second;
                pathPoint4.reset();
                pathMeasure.getPosTan(length2, pathPoint4.posVec, pathPoint4.tanVec);
                Matrix matrix = this.transform;
                matrix.reset();
                matrix.setTranslate(f27, RecyclerView.DECELERATION_RATE);
                pathPoint3.translate(f27);
                pathPoint4.translate(f27);
                if (hasWavyEffect) {
                    float f33 = this.displayedAmplitude * f3;
                    matrix.postScale(1.0f, f33);
                    pathPoint3.scale(f33);
                    pathPoint4.scale(f33);
                }
                path.transform(matrix);
                canvas2 = canvas;
                canvas2.drawPath(path, paint);
            } else {
                float[] fArr = ((DrawingDelegate.PathPoint) pair.first).posVec;
                float f34 = fArr[0];
                float f35 = fArr[1];
                float[] fArr2 = ((DrawingDelegate.PathPoint) pair.second).posVec;
                canvas.drawLine(f34, f35, fArr2[0], fArr2[1], paint);
                canvas2 = canvas;
                f7 = 0.5f;
            }
            if (linearProgressIndicatorSpec.useRelativeTrackCornerRadius && linearProgressIndicatorSpec.trackCornerRadiusFraction == f7 && linearProgressIndicatorSpec.getTrackInnerCornerRadiusInPx() == linearProgressIndicatorSpec.getTrackCornerRadiusInPx()) {
                return;
            }
            if (f17 > RecyclerView.DECELERATION_RATE && f5 > RecyclerView.DECELERATION_RATE) {
                drawRoundedBlock(canvas2, paint, (DrawingDelegate.PathPoint) pair.first, f19, this.displayedTrackThickness, f5, null, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, false);
            }
            if (f18 >= this.trackLength || f23 <= RecyclerView.DECELERATION_RATE) {
                return;
            }
            drawRoundedBlock(canvas, paint, (DrawingDelegate.PathPoint) pair.second, f20, this.displayedTrackThickness, f23, null, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, false);
        }
    }

    public final void drawRoundedBlock(Canvas canvas, Paint paint, DrawingDelegate.PathPoint pathPoint, float f, float f2, float f3, DrawingDelegate.PathPoint pathPoint2, float f4, float f5, float f6, boolean z) {
        float f7;
        float f8;
        float min = Math.min(f2, this.displayedTrackThickness);
        float f9 = (-f) / 2.0f;
        float f10 = (-min) / 2.0f;
        float f11 = f / 2.0f;
        float f12 = min / 2.0f;
        RectF rectF = new RectF(f9, f10, f11, f12);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (pathPoint2 != null) {
            float[] fArr = pathPoint2.tanVec;
            float[] fArr2 = pathPoint2.posVec;
            float min2 = Math.min(f5, this.displayedTrackThickness);
            float min3 = Math.min(f4 / 2.0f, (f6 * min2) / this.displayedTrackThickness);
            RectF rectF2 = new RectF();
            if (z) {
                float f13 = (fArr2[0] - min3) - (pathPoint.posVec[0] - f3);
                if (f13 > RecyclerView.DECELERATION_RATE) {
                    pathPoint2.translate((-f13) / 2.0f);
                    f8 = f4 + f13;
                } else {
                    f8 = f4;
                }
                rectF2.set(RecyclerView.DECELERATION_RATE, f10, f11, f12);
            } else {
                float f14 = (fArr2[0] + min3) - (pathPoint.posVec[0] + f3);
                if (f14 < RecyclerView.DECELERATION_RATE) {
                    pathPoint2.translate((-f14) / 2.0f);
                    f7 = f4 - f14;
                } else {
                    f7 = f4;
                }
                rectF2.set(f9, f10, RecyclerView.DECELERATION_RATE, f12);
                f8 = f7;
            }
            RectF rectF3 = new RectF((-f8) / 2.0f, (-min2) / 2.0f, f8 / 2.0f, min2 / 2.0f);
            canvas.translate(fArr2[0], fArr2[1]);
            canvas.rotate(DrawingDelegate.vectorToCanvasRotation(fArr));
            Path path = new Path();
            path.addRoundRect(rectF3, min3, min3, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.rotate(-DrawingDelegate.vectorToCanvasRotation(fArr));
            canvas.translate(-fArr2[0], -fArr2[1]);
            float[] fArr3 = pathPoint.posVec;
            canvas.translate(fArr3[0], fArr3[1]);
            canvas.rotate(DrawingDelegate.vectorToCanvasRotation(pathPoint.tanVec));
            canvas.drawRect(rectF2, paint);
            canvas.drawRoundRect(rectF, f3, f3, paint);
        } else {
            float[] fArr4 = pathPoint.posVec;
            canvas.translate(fArr4[0], fArr4[1]);
            canvas.rotate(DrawingDelegate.vectorToCanvasRotation(pathPoint.tanVec));
            canvas.drawRoundRect(rectF, f3, f3, paint);
        }
        canvas.restore();
    }

    public final void fillTrack(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3) {
        int compositeARGBWithAlpha = UStringsKt.compositeARGBWithAlpha(i, i2);
        this.drawingDeterminateIndicator = false;
        drawLine(canvas, paint, f, f2, compositeARGBWithAlpha, i3, i3, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, false);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final int getPreferredHeight() {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        return (linearProgressIndicatorSpec.waveAmplitude * 2) + linearProgressIndicatorSpec.trackThickness;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void invalidateCachedPaths() {
        Path path = this.cachedActivePath;
        path.rewind();
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.hasWavyEffect(this.drawingDeterminateIndicator)) {
            int i = this.drawingDeterminateIndicator ? linearProgressIndicatorSpec.wavelengthDeterminate : linearProgressIndicatorSpec.wavelengthIndeterminate;
            float f = this.trackLength;
            int i2 = (int) (f / i);
            this.adjustedWavelength = f / i2;
            for (int i3 = 0; i3 <= i2; i3++) {
                int i4 = i3 * 2;
                float f2 = i4 + 1;
                path.cubicTo(i4 + 0.48f, RecyclerView.DECELERATION_RATE, f2 - 0.48f, 1.0f, f2, 1.0f);
                float f3 = f2 + 0.48f;
                float f4 = i4 + 2;
                path.cubicTo(f3, 1.0f, f4 - 0.48f, RecyclerView.DECELERATION_RATE, f4, RecyclerView.DECELERATION_RATE);
            }
            Matrix matrix = this.transform;
            matrix.reset();
            matrix.setScale(this.adjustedWavelength / 2.0f, -2.0f);
            matrix.postTranslate(RecyclerView.DECELERATION_RATE, 1.0f);
            path.transform(matrix);
        } else {
            path.lineTo(this.trackLength, RecyclerView.DECELERATION_RATE);
        }
        this.activePathMeasure.setPath(path, false);
    }
}
