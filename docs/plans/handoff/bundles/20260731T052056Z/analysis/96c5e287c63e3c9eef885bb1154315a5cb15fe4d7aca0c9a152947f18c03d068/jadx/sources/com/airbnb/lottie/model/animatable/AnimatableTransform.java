package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.layer.BaseLayer;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatableTransform implements ContentModel {
    public final Headers.Builder anchorPoint;
    public boolean autoOrient;
    public final AnimatableFloatValue endOpacity;
    public final AnimatableTextFrame opacity;
    public final AnimatableValue position;
    public final AnimatableFloatValue rotation;
    public final AnimatableFloatValue rotationX;
    public final AnimatableFloatValue rotationY;
    public final AnimatableFloatValue rotationZ;
    public final AnimatableTextFrame scale;
    public final AnimatableFloatValue skew;
    public final AnimatableFloatValue skewAngle;
    public final AnimatableFloatValue startOpacity;

    public AnimatableTransform(Headers.Builder builder, AnimatableValue animatableValue, AnimatableTextFrame animatableTextFrame, AnimatableFloatValue animatableFloatValue, AnimatableTextFrame animatableTextFrame2, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, AnimatableFloatValue animatableFloatValue4, AnimatableFloatValue animatableFloatValue5, AnimatableFloatValue animatableFloatValue6, AnimatableFloatValue animatableFloatValue7, AnimatableFloatValue animatableFloatValue8) {
        this.autoOrient = false;
        this.anchorPoint = builder;
        this.position = animatableValue;
        this.scale = animatableTextFrame;
        this.rotation = animatableFloatValue;
        this.opacity = animatableTextFrame2;
        this.startOpacity = animatableFloatValue2;
        this.endOpacity = animatableFloatValue3;
        this.skew = animatableFloatValue4;
        this.skewAngle = animatableFloatValue5;
        this.rotationX = animatableFloatValue6;
        this.rotationY = animatableFloatValue7;
        this.rotationZ = animatableFloatValue8;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return null;
    }

    public AnimatableTransform() {
        this(null, null, null, null, null, null, null, null, null, null, null, null);
    }
}
