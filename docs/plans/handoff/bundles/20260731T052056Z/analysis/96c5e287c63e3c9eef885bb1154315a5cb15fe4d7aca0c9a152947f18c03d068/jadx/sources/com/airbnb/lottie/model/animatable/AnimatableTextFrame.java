package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ShapeKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import java.util.List;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatableTextFrame extends BasePreferenceLoader {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AnimatableTextFrame(List list, int i) {
        super(5, list);
        this.$r8$classId = i;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public final BaseKeyframeAnimation createAnimation() {
        switch (this.$r8$classId) {
            case 0:
                return new TextKeyframeAnimation((List) this.fragment, 0);
            case 1:
                return new TextKeyframeAnimation((List) this.fragment, 1);
            case 2:
                return new PointKeyframeAnimation((List) this.fragment, 1);
            case 3:
                return new TextKeyframeAnimation((List) this.fragment, 3);
            case 4:
                return new PointKeyframeAnimation((List) this.fragment, 0);
            case 5:
                return new PointKeyframeAnimation((List) this.fragment, 2);
            default:
                return new ShapeKeyframeAnimation((List) this.fragment);
        }
    }
}
