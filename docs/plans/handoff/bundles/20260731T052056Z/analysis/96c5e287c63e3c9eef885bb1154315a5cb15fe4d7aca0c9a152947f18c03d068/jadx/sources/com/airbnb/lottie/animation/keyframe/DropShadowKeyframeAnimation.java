package com.airbnb.lottie.animation.keyframe;

import android.graphics.Color;
import android.graphics.Matrix;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.DropShadow;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DropShadowKeyframeAnimation implements BaseKeyframeAnimation.AnimationListener {
    public final TextKeyframeAnimation color;
    public final TextKeyframeAnimation direction;
    public final TextKeyframeAnimation distance;
    public final BaseLayer layer;
    public Matrix layerInvMatrix;
    public final BaseLayer listener;
    public final TextKeyframeAnimation opacity;
    public final TextKeyframeAnimation radius;

    public DropShadowKeyframeAnimation(BaseLayer baseLayer, BaseLayer baseLayer2, Request.Builder builder) {
        this.listener = baseLayer;
        this.layer = baseLayer2;
        BaseKeyframeAnimation createAnimation = ((AnimatableTextFrame) builder.url).createAnimation();
        this.color = (TextKeyframeAnimation) createAnimation;
        createAnimation.addUpdateListener(this);
        baseLayer2.addAnimation(createAnimation);
        TextKeyframeAnimation createAnimation2 = ((AnimatableFloatValue) builder.method).createAnimation();
        this.opacity = createAnimation2;
        createAnimation2.addUpdateListener(this);
        baseLayer2.addAnimation(createAnimation2);
        TextKeyframeAnimation createAnimation3 = ((AnimatableFloatValue) builder.headers).createAnimation();
        this.direction = createAnimation3;
        createAnimation3.addUpdateListener(this);
        baseLayer2.addAnimation(createAnimation3);
        TextKeyframeAnimation createAnimation4 = ((AnimatableFloatValue) builder.body).createAnimation();
        this.distance = createAnimation4;
        createAnimation4.addUpdateListener(this);
        baseLayer2.addAnimation(createAnimation4);
        TextKeyframeAnimation createAnimation5 = ((AnimatableFloatValue) builder.tags).createAnimation();
        this.radius = createAnimation5;
        createAnimation5.addUpdateListener(this);
        baseLayer2.addAnimation(createAnimation5);
    }

    public final DropShadow evaluate(Matrix matrix, int i) {
        float floatValue = this.direction.getFloatValue() * 0.017453292f;
        float floatValue2 = ((Float) this.distance.getValue()).floatValue();
        double d = floatValue;
        float sin = ((float) Math.sin(d)) * floatValue2;
        float cos = ((float) Math.cos(d + 3.141592653589793d)) * floatValue2;
        float floatValue3 = ((Float) this.radius.getValue()).floatValue();
        int intValue = ((Integer) this.color.getValue()).intValue();
        int argb = Color.argb(Math.round((((Float) this.opacity.getValue()).floatValue() * i) / 255.0f), Color.red(intValue), Color.green(intValue), Color.blue(intValue));
        DropShadow dropShadow = new DropShadow();
        dropShadow.radius = floatValue3 * 0.33f;
        dropShadow.dx = sin;
        dropShadow.dy = cos;
        dropShadow.color = argb;
        dropShadow.vecs = null;
        dropShadow.transformBy(matrix);
        if (this.layerInvMatrix == null) {
            this.layerInvMatrix = new Matrix();
        }
        this.layer.transform.getMatrix().invert(this.layerInvMatrix);
        dropShadow.transformBy(this.layerInvMatrix);
        return dropShadow;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        this.listener.onValueChanged();
    }
}
