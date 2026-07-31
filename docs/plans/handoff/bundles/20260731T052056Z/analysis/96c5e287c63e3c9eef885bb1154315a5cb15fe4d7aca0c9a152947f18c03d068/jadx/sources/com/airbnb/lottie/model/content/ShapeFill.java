package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.compose.animation.core.Animation;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.FillContent;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.layer.BaseLayer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShapeFill implements ContentModel {
    public final AnimatableTextFrame color;
    public final boolean fillEnabled;
    public final Path.FillType fillType;
    public final boolean hidden;
    public final AnimatableTextFrame opacity;

    public ShapeFill(String str, boolean z, Path.FillType fillType, AnimatableTextFrame animatableTextFrame, AnimatableTextFrame animatableTextFrame2, boolean z2) {
        this.fillEnabled = z;
        this.fillType = fillType;
        this.color = animatableTextFrame;
        this.opacity = animatableTextFrame2;
        this.hidden = z2;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new FillContent(lottieDrawable, baseLayer, this);
    }

    public final String toString() {
        return Animation.CC.m(new StringBuilder("ShapeFill{color=, fillEnabled="), this.fillEnabled, '}');
    }
}
