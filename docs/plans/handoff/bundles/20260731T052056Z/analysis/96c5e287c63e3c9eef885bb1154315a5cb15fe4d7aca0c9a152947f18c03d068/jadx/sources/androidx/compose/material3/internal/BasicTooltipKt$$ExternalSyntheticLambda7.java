package androidx.compose.material3.internal;

import androidx.compose.material3.TooltipStateImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicTooltipKt$$ExternalSyntheticLambda7 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CoroutineScope f$0;
    public final /* synthetic */ TooltipStateImpl f$1;

    public /* synthetic */ BasicTooltipKt$$ExternalSyntheticLambda7(CoroutineScope coroutineScope, TooltipStateImpl tooltipStateImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = coroutineScope;
        this.f$1 = tooltipStateImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Continuation continuation = null;
        TooltipStateImpl tooltipStateImpl = this.f$1;
        CoroutineScope coroutineScope = this.f$0;
        switch (i) {
            case 0:
                AwaitKt.launch$default(coroutineScope, null, null, new BasicTooltipKt$anchorSemantics$1$1$1(tooltipStateImpl, continuation, 0), 3);
                return Boolean.TRUE;
            default:
                AwaitKt.launch$default(coroutineScope, null, null, new BasicTooltipKt$anchorSemantics$1$1$1(tooltipStateImpl, continuation, 2), 3);
                return Unit.INSTANCE;
        }
    }
}
