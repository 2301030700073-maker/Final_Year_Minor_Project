package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientStrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GradientStroke implements ContentModel {
    public final ShapeStroke.LineCapType capType;
    public final AnimatableFloatValue dashOffset;
    public final AnimatableTextFrame endPoint;
    public final AnimatableTextFrame gradientColor;
    public final GradientType gradientType;
    public final boolean hidden;
    public final ShapeStroke.LineJoinType joinType;
    public final ArrayList lineDashPattern;
    public final float miterLimit;
    public final AnimatableTextFrame opacity;
    public final AnimatableTextFrame startPoint;
    public final AnimatableFloatValue width;

    public GradientStroke(String str, GradientType gradientType, AnimatableTextFrame animatableTextFrame, AnimatableTextFrame animatableTextFrame2, AnimatableTextFrame animatableTextFrame3, AnimatableTextFrame animatableTextFrame4, AnimatableFloatValue animatableFloatValue, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f, ArrayList arrayList, AnimatableFloatValue animatableFloatValue2, boolean z) {
        this.gradientType = gradientType;
        this.gradientColor = animatableTextFrame;
        this.opacity = animatableTextFrame2;
        this.startPoint = animatableTextFrame3;
        this.endPoint = animatableTextFrame4;
        this.width = animatableFloatValue;
        this.capType = lineCapType;
        this.joinType = lineJoinType;
        this.miterLimit = f;
        this.lineDashPattern = arrayList;
        this.dashOffset = animatableFloatValue2;
        this.hidden = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new GradientStrokeContent(lottieDrawable, baseLayer, this);
    }
}
