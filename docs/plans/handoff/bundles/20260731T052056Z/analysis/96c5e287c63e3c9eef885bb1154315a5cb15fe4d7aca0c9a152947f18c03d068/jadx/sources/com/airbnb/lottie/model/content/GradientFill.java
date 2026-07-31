package com.airbnb.lottie.model.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientFillContent;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.layer.BaseLayer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GradientFill implements ContentModel {
    public final AnimatableTextFrame endPoint;
    public final Path.FillType fillType;
    public final AnimatableTextFrame gradientColor;
    public final GradientType gradientType;
    public final boolean hidden;
    public final AnimatableTextFrame opacity;
    public final AnimatableTextFrame startPoint;

    public GradientFill(String str, GradientType gradientType, Path.FillType fillType, AnimatableTextFrame animatableTextFrame, AnimatableTextFrame animatableTextFrame2, AnimatableTextFrame animatableTextFrame3, AnimatableTextFrame animatableTextFrame4, boolean z) {
        this.gradientType = gradientType;
        this.fillType = fillType;
        this.gradientColor = animatableTextFrame;
        this.opacity = animatableTextFrame2;
        this.startPoint = animatableTextFrame3;
        this.endPoint = animatableTextFrame4;
        this.hidden = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new GradientFillContent(lottieDrawable, lottieComposition, baseLayer, this);
    }
}
