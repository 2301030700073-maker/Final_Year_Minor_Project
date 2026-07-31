package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$9 extends Lambda implements Function2 {
    public final /* synthetic */ int $$changed;
    public final /* synthetic */ ComposableLambdaImpl $content;
    public final /* synthetic */ Object $contentAlignment;
    public final /* synthetic */ Object $contentKey;
    public final /* synthetic */ Modifier $modifier;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Transition $this_AnimatedContent;
    public final /* synthetic */ Function1 $transitionSpec;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentKt$AnimatedContent$9(Transition transition, Modifier modifier, Function1 function1, Alignment alignment, Function1 function12, ComposableLambdaImpl composableLambdaImpl, int i) {
        super(2);
        this.$this_AnimatedContent = transition;
        this.$modifier = modifier;
        this.$transitionSpec = function1;
        this.$contentAlignment = alignment;
        this.$contentKey = function12;
        this.$content = composableLambdaImpl;
        this.$$changed = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.$$changed;
        Object obj3 = this.$contentAlignment;
        Object obj4 = this.$contentKey;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Transition transition = this.$this_AnimatedContent;
                Modifier modifier = this.$modifier;
                Function1 function1 = this.$transitionSpec;
                CrossfadeKt.AnimatedContent(transition, modifier, function1, (Alignment) obj3, (Function1) obj4, this.$content, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Number) obj2).intValue();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                Transition transition2 = this.$this_AnimatedContent;
                Function1 function12 = this.$transitionSpec;
                Modifier modifier2 = this.$modifier;
                CrossfadeKt.AnimatedVisibilityImpl(transition2, function12, modifier2, (EnterTransitionImpl) obj4, (ExitTransitionImpl) obj3, this.$content, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentKt$AnimatedContent$9(Transition transition, Function1 function1, Modifier modifier, EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, ComposableLambdaImpl composableLambdaImpl, int i) {
        super(2);
        this.$this_AnimatedContent = transition;
        this.$transitionSpec = function1;
        this.$modifier = modifier;
        this.$contentKey = enterTransitionImpl;
        this.$contentAlignment = exitTransitionImpl;
        this.$content = composableLambdaImpl;
        this.$$changed = i;
    }
}
