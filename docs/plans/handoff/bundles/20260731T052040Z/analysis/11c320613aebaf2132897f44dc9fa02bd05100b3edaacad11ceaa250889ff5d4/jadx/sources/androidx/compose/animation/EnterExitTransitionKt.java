package androidx.compose.animation;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.LinkedHashMap;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class EnterExitTransitionKt {
    public static final SpringSpec DefaultOffsetAnimationSpec;
    public static final SpringSpec DefaultSizeAnimationSpec;
    public static final TwoWayConverterImpl TransformOriginVectorConverter = new TwoWayConverterImpl(AnimatedContentKt$AnimatedContent$4$1.INSTANCE$3, AnimatedContentKt$AnimatedContent$4$1.INSTANCE$4);
    public static final SpringSpec DefaultAlphaAndScaleSpring = ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);

    static {
        ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);
        LinkedHashMap linkedHashMap = VisibilityThresholdsKt.VisibilityThresholdMap;
        DefaultOffsetAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1);
        DefaultSizeAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, new IntSize(4294967297L), 1);
    }

    public static EnterTransitionImpl fadeIn$default(FiniteAnimationSpec finiteAnimationSpec) {
        return new EnterTransitionImpl(new TransitionData(new Fade(finiteAnimationSpec), (Scale) null, (LinkedHashMap) null, Token.ELSE));
    }

    public static ExitTransitionImpl fadeOut$default(TweenSpec tweenSpec) {
        return new ExitTransitionImpl(new TransitionData(new Fade(tweenSpec), (Scale) null, (LinkedHashMap) null, Token.ELSE));
    }
}
