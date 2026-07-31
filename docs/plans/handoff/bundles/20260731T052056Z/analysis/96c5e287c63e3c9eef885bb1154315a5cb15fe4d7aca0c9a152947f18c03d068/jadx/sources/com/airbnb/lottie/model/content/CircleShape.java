package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.EllipseContent;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CircleShape implements ContentModel {
    public final boolean hidden;
    public final boolean isReversed;
    public final AnimatableValue position;
    public final AnimatableTextFrame size;

    public CircleShape(String str, AnimatableValue animatableValue, AnimatableTextFrame animatableTextFrame, boolean z, boolean z2) {
        this.position = animatableValue;
        this.size = animatableTextFrame;
        this.isReversed = z;
        this.hidden = z2;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new EllipseContent(lottieDrawable, baseLayer, this);
    }
}
