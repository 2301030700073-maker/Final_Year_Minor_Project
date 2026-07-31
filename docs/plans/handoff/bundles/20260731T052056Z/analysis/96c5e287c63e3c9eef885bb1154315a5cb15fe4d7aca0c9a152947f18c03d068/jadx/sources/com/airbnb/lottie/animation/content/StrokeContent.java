package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.utils.DropShadow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StrokeContent extends BaseStrokeContent {
    public final TextKeyframeAnimation colorAnimation;
    public final boolean hidden;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StrokeContent(com.airbnb.lottie.LottieDrawable r11, com.airbnb.lottie.model.layer.BaseLayer r12, com.airbnb.lottie.model.content.ShapeStroke r13) {
        /*
            r10 = this;
            com.airbnb.lottie.model.content.ShapeStroke$LineCapType r0 = r13.capType
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
            com.airbnb.lottie.model.content.ShapeStroke$LineJoinType r0 = r13.joinType
            r0.getClass()
            int[] r4 = com.airbnb.lottie.model.content.ShapeStroke.AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType
            int r0 = r0.ordinal()
            r0 = r4[r0]
            if (r0 == r2) goto L3a
            if (r0 == r1) goto L37
            r1 = 3
            if (r0 == r1) goto L34
            r0 = 0
        L32:
            r4 = r0
            goto L3d
        L34:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.ROUND
            goto L32
        L37:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.MITER
            goto L32
        L3a:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.BEVEL
            goto L32
        L3d:
            float r5 = r13.miterLimit
            com.airbnb.lottie.model.animatable.AnimatableTextFrame r6 = r13.opacity
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r7 = r13.width
            java.util.ArrayList r8 = r13.lineDashPattern
            com.airbnb.lottie.model.animatable.AnimatableFloatValue r9 = r13.offset
            r0 = r10
            r1 = r11
            r2 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            boolean r1 = r13.hidden
            r10.hidden = r1
            com.airbnb.lottie.model.animatable.AnimatableTextFrame r1 = r13.color
            com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation r1 = r1.createAnimation()
            r2 = r1
            com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation r2 = (com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation) r2
            r10.colorAnimation = r2
            r1.addUpdateListener(r10)
            r12.addAnimation(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.StrokeContent.<init>(com.airbnb.lottie.LottieDrawable, com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.content.ShapeStroke):void");
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    public final void draw(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        if (this.hidden) {
            return;
        }
        TextKeyframeAnimation textKeyframeAnimation = this.colorAnimation;
        textKeyframeAnimation.getClass();
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        this.paint.setColor(textKeyframeAnimation.getIntValue(textKeyframeAnimation.keyframesWrapper.getCurrentKeyframe(), textKeyframeAnimation.getInterpolatedCurrentKeyframeProgress()));
        super.draw(canvas, matrix, i, dropShadow);
    }
}
