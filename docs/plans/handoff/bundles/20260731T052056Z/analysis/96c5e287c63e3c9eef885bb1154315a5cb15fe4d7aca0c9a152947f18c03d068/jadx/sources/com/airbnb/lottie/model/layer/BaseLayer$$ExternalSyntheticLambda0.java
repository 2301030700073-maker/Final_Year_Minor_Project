package com.airbnb.lottie.model.layer;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseLayer$$ExternalSyntheticLambda0 implements BaseKeyframeAnimation.AnimationListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ BaseLayer$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void onValueChanged() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                BaseLayer baseLayer = (BaseLayer) obj;
                boolean z = baseLayer.inOutAnimation.getFloatValue() == 1.0f;
                if (z != baseLayer.visible) {
                    baseLayer.visible = z;
                    baseLayer.lottieDrawable.invalidateSelf();
                    break;
                }
                break;
            case 1:
                ((TransformKeyframeAnimation) obj).rotation3DCacheDirty = true;
                break;
            case 2:
                ((TransformKeyframeAnimation) obj).rotation3DCacheDirty = true;
                break;
            default:
                ((TransformKeyframeAnimation) obj).rotation3DCacheDirty = true;
                break;
        }
    }
}
