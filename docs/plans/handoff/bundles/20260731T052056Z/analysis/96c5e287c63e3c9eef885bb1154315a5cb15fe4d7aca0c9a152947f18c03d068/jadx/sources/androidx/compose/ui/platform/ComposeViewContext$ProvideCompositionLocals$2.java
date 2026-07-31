package androidx.compose.ui.platform;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposeViewContext$ProvideCompositionLocals$2 extends Lambda implements Function2 {
    public final /* synthetic */ ComposableLambdaImpl $content;
    public final /* synthetic */ AndroidComposeView $owner;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ ComposeViewContext this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeViewContext$ProvideCompositionLocals$2(AndroidComposeView androidComposeView, ComposeViewContext composeViewContext, ComposableLambdaImpl composableLambdaImpl) {
        super(2);
        this.$owner = androidComposeView;
        this.this$0 = composeViewContext;
        this.$content = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ComposableLambdaImpl composableLambdaImpl = this.$content;
        AndroidComposeView androidComposeView = this.$owner;
        ComposeViewContext composeViewContext = this.this$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    gapComposer.startReplaceGroup(866651995);
                    CompositionLocalsKt.ProvideCommonCompositionLocals(androidComposeView, composeViewContext.uriHandler, composableLambdaImpl, gapComposer, 0);
                    gapComposer.end(false);
                    break;
                }
            default:
                ((Number) obj2).intValue();
                composeViewContext.ProvideCompositionLocals$ui(androidComposeView, composableLambdaImpl, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeViewContext$ProvideCompositionLocals$2(ComposeViewContext composeViewContext, AndroidComposeView androidComposeView, ComposableLambdaImpl composableLambdaImpl, int i) {
        super(2);
        this.this$0 = composeViewContext;
        this.$owner = androidComposeView;
        this.$content = composableLambdaImpl;
    }
}
