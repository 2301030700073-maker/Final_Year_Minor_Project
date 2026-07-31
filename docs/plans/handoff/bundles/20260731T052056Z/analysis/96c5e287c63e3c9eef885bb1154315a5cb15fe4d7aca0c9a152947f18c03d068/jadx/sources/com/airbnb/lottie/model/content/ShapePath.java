package com.airbnb.lottie.model.content;

import androidx.compose.animation.core.Animation;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ShapeContent;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.layer.BaseLayer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShapePath implements ContentModel {
    public final boolean hidden;
    public final int index;
    public final String name;
    public final AnimatableTextFrame shapePath;

    public ShapePath(String str, int i, AnimatableTextFrame animatableTextFrame, boolean z) {
        this.name = str;
        this.index = i;
        this.shapePath = animatableTextFrame;
        this.hidden = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new ShapeContent(lottieDrawable, baseLayer, this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShapePath{name=");
        sb.append(this.name);
        sb.append(", index=");
        return Animation.CC.m(sb, this.index, '}');
    }
}
