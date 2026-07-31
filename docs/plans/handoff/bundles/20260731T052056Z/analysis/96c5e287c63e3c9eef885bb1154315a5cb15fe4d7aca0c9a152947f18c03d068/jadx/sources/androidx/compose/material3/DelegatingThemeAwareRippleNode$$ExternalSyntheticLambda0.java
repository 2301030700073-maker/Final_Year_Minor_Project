package androidx.compose.material3;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.ui.node.HitTestResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DelegatingThemeAwareRippleNode f$0;

    public /* synthetic */ DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0(DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode, int i) {
        this.$r8$classId = i;
        this.f$0 = delegatingThemeAwareRippleNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode = this.f$0;
        switch (i) {
            case 0:
                RippleConfiguration rippleConfiguration = (RippleConfiguration) HitTestResultKt.currentValueOf(delegatingThemeAwareRippleNode, RippleKt.LocalRippleConfiguration);
                AndroidRippleNode androidRippleNode = delegatingThemeAwareRippleNode.rippleNode;
                if (rippleConfiguration == null) {
                    if (androidRippleNode != null) {
                        delegatingThemeAwareRippleNode.undelegate(androidRippleNode);
                    }
                    delegatingThemeAwareRippleNode.rippleNode = null;
                } else if (androidRippleNode == null) {
                    RippleNodeFactory$create$colorProducer$1 rippleNodeFactory$create$colorProducer$1 = new RippleNodeFactory$create$colorProducer$1(delegatingThemeAwareRippleNode);
                    DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 delegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 = new DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0(delegatingThemeAwareRippleNode, 1);
                    MutableInteractionSourceImpl mutableInteractionSourceImpl = delegatingThemeAwareRippleNode.interactionSource;
                    boolean z = delegatingThemeAwareRippleNode.bounded;
                    float f = delegatingThemeAwareRippleNode.radius;
                    TweenSpec tweenSpec = androidx.compose.material.ripple.RippleKt.DefaultTweenSpec;
                    AndroidRippleNode androidRippleNode2 = new AndroidRippleNode(mutableInteractionSourceImpl, z, f, rippleNodeFactory$create$colorProducer$1, delegatingThemeAwareRippleNode$$ExternalSyntheticLambda0);
                    delegatingThemeAwareRippleNode.delegate(androidRippleNode2);
                    delegatingThemeAwareRippleNode.rippleNode = androidRippleNode2;
                }
                return Unit.INSTANCE;
            default:
                return CardKt.RippleAlpha;
        }
    }
}
