package androidx.compose.animation;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.recyclerview.widget.RecyclerView;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class EnterExitTransitionKt {
    public static final SpringSpec DefaultOffsetAnimationSpec;
    public static final SpringSpec DefaultSizeAnimationSpec;
    public static final TwoWayConverterImpl TransformOriginVectorConverter = new TwoWayConverterImpl(CrossfadeKt$Crossfade$3$1.INSTANCE$6, CrossfadeKt$Crossfade$3$1.INSTANCE$7);
    public static final SpringSpec DefaultAlphaAndScaleSpring = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5);

    static {
        ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5);
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        DefaultOffsetAnimationSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, new IntOffset(4294967297L), 1);
        DefaultSizeAnimationSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, new IntSize(4294967297L), 1);
    }

    public static EnterTransitionImpl expandHorizontally$default(SpringSpec springSpec, BiasAlignment.Horizontal horizontal, int i) {
        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.End;
        int i2 = 1;
        if ((i & 1) != 0) {
            Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
            springSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, new IntSize(4294967297L), 1);
        }
        if ((i & 2) != 0) {
            horizontal = horizontal2;
        }
        return new EnterTransitionImpl(new TransitionData((Fade) null, new ChangeSize(Intrinsics.areEqual(horizontal, Alignment.Companion.Start) ? Alignment.Companion.CenterStart : Intrinsics.areEqual(horizontal, horizontal2) ? Alignment.Companion.CenterEnd : Alignment.Companion.Center, new CrossfadeKt$Crossfade$3$1(i2, 10), springSpec), (Scale) null, (LinkedHashMap) null, 123));
    }

    public static EnterTransitionImpl fadeIn$default(FiniteAnimationSpec finiteAnimationSpec, int i) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5);
        }
        return new EnterTransitionImpl(new TransitionData(new Fade(finiteAnimationSpec), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 126));
    }

    public static ExitTransitionImpl fadeOut$default(FiniteAnimationSpec finiteAnimationSpec, int i) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5);
        }
        return new ExitTransitionImpl(new TransitionData(new Fade(finiteAnimationSpec), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 126));
    }

    /* renamed from: scaleIn-L8ZKh-E$default, reason: not valid java name */
    public static EnterTransitionImpl m17scaleInL8ZKhE$default(TweenSpec tweenSpec, int i) {
        int i2 = i & 1;
        float f = RecyclerView.DECELERATION_RATE;
        FiniteAnimationSpec finiteAnimationSpec = tweenSpec;
        if (i2 != 0) {
            finiteAnimationSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5);
        }
        if ((i & 2) == 0) {
            f = 0.92f;
        }
        return new EnterTransitionImpl(new TransitionData((Fade) null, (ChangeSize) null, new Scale(f, TransformOrigin.Center, finiteAnimationSpec), (LinkedHashMap) null, 119));
    }

    public static ExitTransitionImpl shrinkHorizontally$default(SpringSpec springSpec, BiasAlignment.Horizontal horizontal, int i) {
        BiasAlignment.Horizontal horizontal2 = Alignment.Companion.End;
        int i2 = 1;
        if ((i & 1) != 0) {
            Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
            springSpec = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, new IntSize(4294967297L), 1);
        }
        if ((i & 2) != 0) {
            horizontal = horizontal2;
        }
        return new ExitTransitionImpl(new TransitionData((Fade) null, new ChangeSize(Intrinsics.areEqual(horizontal, Alignment.Companion.Start) ? Alignment.Companion.CenterStart : Intrinsics.areEqual(horizontal, horizontal2) ? Alignment.Companion.CenterEnd : Alignment.Companion.Center, new CrossfadeKt$Crossfade$3$1(i2, 11), springSpec), (Scale) null, (LinkedHashMap) null, 123));
    }
}
