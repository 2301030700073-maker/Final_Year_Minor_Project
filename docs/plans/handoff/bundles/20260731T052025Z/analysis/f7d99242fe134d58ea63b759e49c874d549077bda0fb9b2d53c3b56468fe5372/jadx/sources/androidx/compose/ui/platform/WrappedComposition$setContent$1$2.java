package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.node.Owner;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WrappedComposition$setContent$1$2 extends Lambda implements Function2 {
    public final /* synthetic */ Object $composeViewContext;
    public final /* synthetic */ Function2 $content;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrappedComposition$setContent$1$2(Owner owner, AndroidUriHandler androidUriHandler, Function2 function2, int i) {
        super(2);
        this.this$0 = owner;
        this.$composeViewContext = androidUriHandler;
        this.$content = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function2 function2 = this.$content;
        Object obj3 = this.$composeViewContext;
        Object obj4 = this.this$0;
        int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                WrappedComposition wrappedComposition = (WrappedComposition) obj4;
                int i3 = 0;
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    AndroidComposeView androidComposeView = wrappedComposition.owner;
                    boolean changedInstance = gapComposer.changedInstance(wrappedComposition);
                    Object rememberedValue = gapComposer.rememberedValue();
                    Continuation continuation = null;
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new WrappedComposition$setContent$1$2$1$1(wrappedComposition, continuation, i3);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Updater.LaunchedEffect(gapComposer, androidComposeView, (Function2) rememberedValue);
                    boolean changedInstance2 = gapComposer.changedInstance(wrappedComposition);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new WrappedComposition$setContent$1$2$1$1(wrappedComposition, continuation, i2);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    Updater.LaunchedEffect(gapComposer, androidComposeView, (Function2) rememberedValue2);
                    ((ComposeViewContext) obj3).ProvideCompositionLocals$ui(androidComposeView, function2, gapComposer, 0);
                    break;
                }
            default:
                ((Number) obj2).intValue();
                CompositionLocalsKt.ProvideCommonCompositionLocals((Owner) obj4, (AndroidUriHandler) obj3, function2, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrappedComposition$setContent$1$2(WrappedComposition wrappedComposition, ComposeViewContext composeViewContext, Function2 function2) {
        super(2);
        this.this$0 = wrappedComposition;
        this.$composeViewContext = composeViewContext;
        this.$content = function2;
    }
}
