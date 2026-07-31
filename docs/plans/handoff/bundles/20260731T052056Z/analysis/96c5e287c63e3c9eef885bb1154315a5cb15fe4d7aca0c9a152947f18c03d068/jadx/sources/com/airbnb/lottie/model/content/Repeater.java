package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.RectangleContent;
import com.airbnb.lottie.animation.content.RepeaterContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Repeater implements ContentModel {
    public final /* synthetic */ int $r8$classId = 0;
    public final AnimatableFloatValue copies;
    public final boolean hidden;
    public final AnimatableValue offset;
    public final Object transform;

    public Repeater(String str, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableTransform animatableTransform, boolean z) {
        this.copies = animatableFloatValue;
        this.offset = animatableFloatValue2;
        this.transform = animatableTransform;
        this.hidden = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        switch (this.$r8$classId) {
            case 0:
                return new RepeaterContent(lottieDrawable, baseLayer, this);
            default:
                return new RectangleContent(lottieDrawable, baseLayer, this);
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                return "RectangleShape{position=" + this.offset + ", size=" + ((AnimatableValue) this.transform) + '}';
            default:
                return super.toString();
        }
    }

    public Repeater(String str, AnimatableValue animatableValue, AnimatableTextFrame animatableTextFrame, AnimatableFloatValue animatableFloatValue, boolean z) {
        this.offset = animatableValue;
        this.transform = animatableTextFrame;
        this.copies = animatableFloatValue;
        this.hidden = z;
    }
}
