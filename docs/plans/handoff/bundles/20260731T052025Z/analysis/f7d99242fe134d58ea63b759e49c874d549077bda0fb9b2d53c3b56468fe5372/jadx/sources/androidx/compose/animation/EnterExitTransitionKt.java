package androidx.compose.animation;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.DurationBasedAnimationSpec;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class EnterExitTransitionKt {
    public static final SpringSpec DefaultOffsetAnimationSpec;
    public static final SpringSpec DefaultSizeAnimationSpec;
    public static final TwoWayConverterImpl TransformOriginVectorConverter = new TwoWayConverterImpl(CrossfadeKt$Crossfade$3$1.INSTANCE$6, CrossfadeKt$Crossfade$3$1.INSTANCE$7);
    public static final SpringSpec DefaultAlphaAndScaleSpring = ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);

    static {
        ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        DefaultOffsetAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1);
        DefaultSizeAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, new IntSize(4294967297L), 1);
    }

    public static EnterTransitionImpl expandVertically$default(int i) {
        BiasAlignment.Vertical vertical = Alignment.Companion.Bottom;
        BiasAlignment.Vertical vertical2 = Alignment.Companion.Top;
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        int i2 = 1;
        SpringSpec spring$default = ArcSplineKt.spring$default(0.0f, 400.0f, new IntSize(4294967297L), 1);
        BiasAlignment.Vertical vertical3 = (i & 2) != 0 ? vertical : vertical2;
        return new EnterTransitionImpl(new TransitionData((Fade) null, (Slide) null, new ChangeSize(Intrinsics.areEqual(vertical3, vertical2) ? Alignment.Companion.TopCenter : Intrinsics.areEqual(vertical3, vertical) ? Alignment.Companion.BottomCenter : Alignment.Companion.Center, new CrossfadeKt$Crossfade$3$1(i2, 10), spring$default), (Scale) null, (LinkedHashMap) null, 123));
    }

    public static EnterTransitionImpl fadeIn$default(FiniteAnimationSpec finiteAnimationSpec, int i) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);
        }
        return new EnterTransitionImpl(new TransitionData(new Fade(finiteAnimationSpec), (Slide) null, (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 126));
    }

    public static ExitTransitionImpl fadeOut$default(DurationBasedAnimationSpec durationBasedAnimationSpec, int i) {
        FiniteAnimationSpec finiteAnimationSpec = durationBasedAnimationSpec;
        if ((i & 1) != 0) {
            finiteAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);
        }
        return new ExitTransitionImpl(new TransitionData(new Fade(finiteAnimationSpec), (Slide) null, (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 126));
    }

    public static ExitTransitionImpl shrinkVertically$default(TweenSpec tweenSpec, int i) {
        BiasAlignment.Vertical vertical = Alignment.Companion.Bottom;
        BiasAlignment.Vertical vertical2 = Alignment.Companion.Top;
        int i2 = 1;
        FiniteAnimationSpec finiteAnimationSpec = tweenSpec;
        if ((i & 1) != 0) {
            Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
            finiteAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, new IntSize(4294967297L), 1);
        }
        BiasAlignment.Vertical vertical3 = (i & 2) != 0 ? vertical : vertical2;
        return new ExitTransitionImpl(new TransitionData((Fade) null, (Slide) null, new ChangeSize(Intrinsics.areEqual(vertical3, vertical2) ? Alignment.Companion.TopCenter : Intrinsics.areEqual(vertical3, vertical) ? Alignment.Companion.BottomCenter : Alignment.Companion.Center, new CrossfadeKt$Crossfade$3$1(i2, 11), finiteAnimationSpec), (Scale) null, (LinkedHashMap) null, 123));
    }

    public static EnterTransitionImpl slideInHorizontally$default(Function1 function1) {
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        return new EnterTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(1, function1), ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1)), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125));
    }

    public static ExitTransitionImpl slideOutHorizontally$default(Function1 function1) {
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        return new ExitTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(2, function1), ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1)), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125));
    }
}
