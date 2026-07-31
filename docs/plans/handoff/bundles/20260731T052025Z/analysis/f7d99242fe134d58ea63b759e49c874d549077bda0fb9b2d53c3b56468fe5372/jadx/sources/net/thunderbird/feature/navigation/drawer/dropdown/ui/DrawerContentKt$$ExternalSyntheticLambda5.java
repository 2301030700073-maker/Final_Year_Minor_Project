package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.ChangeSize;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterExitTransitionKt$slideInVertically$2;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.Fade;
import androidx.compose.animation.Scale;
import androidx.compose.animation.Slide;
import androidx.compose.animation.TransitionData;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.SnapSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Operation$State;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DrawerContentKt$$ExternalSyntheticLambda5 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;

    public /* synthetic */ DrawerContentKt$$ExternalSyntheticLambda5(boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        boolean z = this.f$0;
        switch (i) {
            case 0:
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) obj;
                animatedContentTransitionScopeImpl.getClass();
                if (!z) {
                    SnapSpec snap$default = ArcSplineKt.snap$default();
                    KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda0 = new KoinModuleKt$$ExternalSyntheticLambda0(18);
                    TwoWayConverterImpl twoWayConverterImpl = EnterExitTransitionKt.TransformOriginVectorConverter;
                    return CrossfadeKt.togetherWith(new EnterTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(0, koinModuleKt$$ExternalSyntheticLambda0), snap$default), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)), new ExitTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(3, new KoinModuleKt$$ExternalSyntheticLambda0(18)), ArcSplineKt.snap$default()), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)));
                }
                TweenSpec tween$default = ArcSplineKt.tween$default(300, 0, EasingKt.FastOutSlowInEasing, 2);
                if (((Boolean) animatedContentTransitionScopeImpl.getTargetState()).booleanValue()) {
                    KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda02 = new KoinModuleKt$$ExternalSyntheticLambda0(16);
                    TwoWayConverterImpl twoWayConverterImpl2 = EnterExitTransitionKt.TransformOriginVectorConverter;
                    return CrossfadeKt.togetherWith(new EnterTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(0, koinModuleKt$$ExternalSyntheticLambda02), tween$default), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)), new ExitTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(3, new Data$$ExternalSyntheticLambda0(25)), tween$default), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)));
                }
                Data$$ExternalSyntheticLambda0 data$$ExternalSyntheticLambda0 = new Data$$ExternalSyntheticLambda0(25);
                TwoWayConverterImpl twoWayConverterImpl3 = EnterExitTransitionKt.TransformOriginVectorConverter;
                return CrossfadeKt.togetherWith(new EnterTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(0, data$$ExternalSyntheticLambda0), tween$default), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)), new ExitTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(3, new KoinModuleKt$$ExternalSyntheticLambda0(17)), tween$default), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)));
            case 1:
                ((AnimatedContentTransitionScopeImpl) obj).getClass();
                if (z) {
                    return CrossfadeKt.togetherWith(EnterExitTransitionKt.slideInHorizontally$default(new Data$$ExternalSyntheticLambda0(25)).plus(EnterExitTransitionKt.fadeIn$default(null, 3)), EnterExitTransitionKt.slideOutHorizontally$default(new KoinModuleKt$$ExternalSyntheticLambda0(20)).plus(EnterExitTransitionKt.fadeOut$default(null, 3)));
                }
                SnapSpec snap$default2 = ArcSplineKt.snap$default();
                KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda03 = new KoinModuleKt$$ExternalSyntheticLambda0(18);
                TwoWayConverterImpl twoWayConverterImpl4 = EnterExitTransitionKt.TransformOriginVectorConverter;
                return CrossfadeKt.togetherWith(new EnterTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(1, koinModuleKt$$ExternalSyntheticLambda03), snap$default2), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)).plus(EnterExitTransitionKt.fadeIn$default(ArcSplineKt.snap$default(), 2)), new ExitTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(2, new KoinModuleKt$$ExternalSyntheticLambda0(18)), ArcSplineKt.snap$default()), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)).plus(EnterExitTransitionKt.fadeOut$default(ArcSplineKt.snap$default(), 2)));
            case 2:
                ((LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl) obj).getClass();
                return new GridItemSpan(z ? Operation$State.GridItemSpan(1) : Operation$State.GridItemSpan(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.maxLineSpan));
            case 3:
                ((LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl) obj).getClass();
                return new GridItemSpan(z ? Operation$State.GridItemSpan(1) : Operation$State.GridItemSpan(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.maxLineSpan));
            case 4:
                ((LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl) obj).getClass();
                return new GridItemSpan(z ? Operation$State.GridItemSpan(1) : Operation$State.GridItemSpan(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.maxLineSpan));
            case 5:
                ((LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl) obj).getClass();
                return new GridItemSpan(z ? Operation$State.GridItemSpan(1) : Operation$State.GridItemSpan(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.maxLineSpan));
            case 6:
                ((LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl) obj).getClass();
                return new GridItemSpan(z ? Operation$State.GridItemSpan(1) : Operation$State.GridItemSpan(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.maxLineSpan));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl) obj).getClass();
                return new GridItemSpan(z ? Operation$State.GridItemSpan(1) : Operation$State.GridItemSpan(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.maxLineSpan));
            default:
                ((LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl) obj).getClass();
                return new GridItemSpan(z ? Operation$State.GridItemSpan(1) : Operation$State.GridItemSpan(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.maxLineSpan));
        }
    }
}
