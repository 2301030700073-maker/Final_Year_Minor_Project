package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SplitDimensionPathKeyframeAnimation extends BaseKeyframeAnimation {
    public final PointF point;
    public final PointF pointWithCallbackValues;
    public final TextKeyframeAnimation xAnimation;
    public final TextKeyframeAnimation yAnimation;

    public SplitDimensionPathKeyframeAnimation(TextKeyframeAnimation textKeyframeAnimation, TextKeyframeAnimation textKeyframeAnimation2) {
        super(Collections.EMPTY_LIST);
        this.point = new PointF();
        this.pointWithCallbackValues = new PointF();
        this.xAnimation = textKeyframeAnimation;
        this.yAnimation = textKeyframeAnimation2;
        setProgress(this.progress);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue() {
        PointF pointF = this.point;
        float f = pointF.x;
        PointF pointF2 = this.pointWithCallbackValues;
        pointF2.set(f, RecyclerView.DECELERATION_RATE);
        pointF2.set(pointF2.x, pointF.y);
        return pointF2;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final void setProgress(float f) {
        TextKeyframeAnimation textKeyframeAnimation = this.xAnimation;
        textKeyframeAnimation.setProgress(f);
        TextKeyframeAnimation textKeyframeAnimation2 = this.yAnimation;
        textKeyframeAnimation2.setProgress(f);
        this.point.set(((Float) textKeyframeAnimation.getValue()).floatValue(), ((Float) textKeyframeAnimation2.getValue()).floatValue());
        int i = 0;
        while (true) {
            ArrayList arrayList = this.listeners;
            if (i >= arrayList.size()) {
                return;
            }
            ((BaseKeyframeAnimation.AnimationListener) arrayList.get(i)).onValueChanged();
            i++;
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        PointF pointF = this.point;
        float f2 = pointF.x;
        PointF pointF2 = this.pointWithCallbackValues;
        pointF2.set(f2, RecyclerView.DECELERATION_RATE);
        pointF2.set(pointF2.x, pointF.y);
        return pointF2;
    }
}
