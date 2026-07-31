package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import java.util.List;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatableFloatValue extends BasePreferenceLoader {
    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final TextKeyframeAnimation createAnimation() {
        return new TextKeyframeAnimation((List) this.fragment, 2);
    }
}
