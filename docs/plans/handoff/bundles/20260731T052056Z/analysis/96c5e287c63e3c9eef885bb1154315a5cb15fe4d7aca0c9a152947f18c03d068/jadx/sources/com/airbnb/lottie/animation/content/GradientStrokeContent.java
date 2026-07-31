package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.utils.DropShadow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GradientStrokeContent extends BaseStrokeContent {
    public final RectF boundsRect;
    public final int cacheSteps;
    public final PointKeyframeAnimation colorAnimation;
    public final PointKeyframeAnimation endPointAnimation;
    public final boolean hidden;
    public final LongSparseArray linearGradientCache;
    public final LongSparseArray radialGradientCache;
    public final PointKeyframeAnimation startPointAnimation;
    public final GradientType type;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GradientStrokeContent(com.airbnb.lottie.LottieDrawable r12, com.airbnb.lottie.model.layer.BaseLayer r13, com.airbnb.lottie.model.content.GradientStroke r14) {
        /*
            r11 = this;
            com.airbnb.lottie.model.content.ShapeStroke$LineCapType r0 = r14.capType
            r0.getClass()
            int[] r1 = com.airbnb.lottie.model.content.ShapeStroke.AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 2
            r2 = 1
            if (r0 == r2) goto L1a
            if (r0 == r1) goto L17
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.SQUARE
        L15:
            r3 = r0
            goto L1d
        L17:
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.ROUND
            goto L15
        L1a:
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.BUTT
            goto L15
        L1d:
            com.airbnb.lottie.model.content.ShapeStroke$LineJoinType r0 = r14.joinType
            r0.getClass()
            int[] r4 = com.airbnb.lottie.model.content.ShapeStroke.AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType
            int r0 = r0.ordinal()
            r0 = r4[r0]
            r10 = 0
            if (r0 == r2) goto L3b
            if (r0 == r1) goto L38
            r1 = 3
            if (r0 == r1) goto L34
            r4 = r10
            goto L3e
        L34:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.ROUND
        L36:
            r4 = r0
            goto L3e
        L38:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.MITER
            goto L36
        L3b:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.BEVEL
            goto L36
        L3e:
            float r5 = r14.miterLimit
            com.airbnb.lottie.model.animatable.AnimatableTextFrame r6 = r14.opacity
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r7 = r14.width
            java.util.ArrayList r8 = r14.lineDashPattern
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r9 = r14.dashOffset
            r0 = r11
            r1 = r12
            r2 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            androidx.collection.LongSparseArray r1 = new androidx.collection.LongSparseArray
            r1.<init>(r10)
            r11.linearGradientCache = r1
            androidx.collection.LongSparseArray r1 = new androidx.collection.LongSparseArray
            r1.<init>(r10)
            r11.radialGradientCache = r1
            android.graphics.RectF r1 = new android.graphics.RectF
            r1.<init>()
            r11.boundsRect = r1
            com.airbnb.lottie.model.content.GradientType r1 = r14.gradientType
            r11.type = r1
            boolean r1 = r14.hidden
            r11.hidden = r1
            com.airbnb.lottie.LottieComposition r1 = r12.composition
            float r1 = r1.getDuration()
            r3 = 1107296256(0x42000000, float:32.0)
            float r1 = r1 / r3
            int r1 = (int) r1
            r11.cacheSteps = r1
            com.airbnb.lottie.model.animatable.AnimatableTextFrame r1 = r14.gradientColor
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r1 = r1.createAnimation()
            r3 = r1
            com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation r3 = (com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation) r3
            r11.colorAnimation = r3
            r1.addUpdateListener(r11)
            r13.addAnimation(r1)
            com.airbnb.lottie.model.animatable.AnimatableTextFrame r1 = r14.startPoint
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r1 = r1.createAnimation()
            r3 = r1
            com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation r3 = (com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation) r3
            r11.startPointAnimation = r3
            r1.addUpdateListener(r11)
            r13.addAnimation(r1)
            com.airbnb.lottie.model.animatable.AnimatableTextFrame r1 = r14.endPoint
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r1 = r1.createAnimation()
            r3 = r1
            com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation r3 = (com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation) r3
            r11.endPointAnimation = r3
            r1.addUpdateListener(r11)
            r13.addAnimation(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.GradientStrokeContent.<init>(com.airbnb.lottie.LottieDrawable, com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.content.GradientStroke):void");
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    public final void draw(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        Shader shader;
        if (this.hidden) {
            return;
        }
        getBounds(this.boundsRect, matrix, false);
        GradientType gradientType = this.type;
        GradientType gradientType2 = GradientType.LINEAR;
        PointKeyframeAnimation pointKeyframeAnimation = this.colorAnimation;
        PointKeyframeAnimation pointKeyframeAnimation2 = this.endPointAnimation;
        PointKeyframeAnimation pointKeyframeAnimation3 = this.startPointAnimation;
        if (gradientType == gradientType2) {
            long gradientHash = getGradientHash();
            LongSparseArray longSparseArray = this.linearGradientCache;
            shader = (LinearGradient) longSparseArray.get(gradientHash);
            if (shader == null) {
                PointF pointF = (PointF) pointKeyframeAnimation3.getValue();
                PointF pointF2 = (PointF) pointKeyframeAnimation2.getValue();
                GradientColor gradientColor = (GradientColor) pointKeyframeAnimation.getValue();
                shader = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, gradientColor.colors, gradientColor.positions, Shader.TileMode.CLAMP);
                longSparseArray.put(gradientHash, shader);
            }
        } else {
            long gradientHash2 = getGradientHash();
            LongSparseArray longSparseArray2 = this.radialGradientCache;
            shader = (RadialGradient) longSparseArray2.get(gradientHash2);
            if (shader == null) {
                PointF pointF3 = (PointF) pointKeyframeAnimation3.getValue();
                PointF pointF4 = (PointF) pointKeyframeAnimation2.getValue();
                GradientColor gradientColor2 = (GradientColor) pointKeyframeAnimation.getValue();
                int[] iArr = gradientColor2.colors;
                float[] fArr = gradientColor2.positions;
                shader = new RadialGradient(pointF3.x, pointF3.y, (float) Math.hypot(pointF4.x - r9, pointF4.y - r10), iArr, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.put(gradientHash2, shader);
            }
        }
        this.paint.setShader(shader);
        super.draw(canvas, matrix, i, dropShadow);
    }

    public final int getGradientHash() {
        float f = this.startPointAnimation.progress;
        float f2 = this.cacheSteps;
        int round = Math.round(f * f2);
        int round2 = Math.round(this.endPointAnimation.progress * f2);
        int round3 = Math.round(this.colorAnimation.progress * f2);
        int i = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i = i * 31 * round2;
        }
        return round3 != 0 ? i * 31 * round3 : i;
    }
}
