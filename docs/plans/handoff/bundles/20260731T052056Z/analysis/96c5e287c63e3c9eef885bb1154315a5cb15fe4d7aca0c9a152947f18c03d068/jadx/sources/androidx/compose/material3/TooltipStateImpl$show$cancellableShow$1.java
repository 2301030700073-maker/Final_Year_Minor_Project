package androidx.compose.material3;

import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TooltipStateImpl$show$cancellableShow$1 extends SuspendLambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TooltipStateImpl$show$cancellableShow$1(int i, Object obj, Continuation continuation) {
        super(1, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.this$0;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                return new TooltipStateImpl$show$cancellableShow$1(0, (TooltipStateImpl) obj2, continuation).invokeSuspend(unit);
            case 1:
                return new TooltipStateImpl$show$cancellableShow$1(1, (SelectionManager) obj2, continuation).invokeSuspend(unit);
            default:
                return new TooltipStateImpl$show$cancellableShow$1(2, (TextFieldSelectionManager) obj2, continuation).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        if (r10 == r0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002f, code lost:
    
        if (r3.updateClipboardEntry$foundation(r10) == r0) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TooltipStateImpl$show$cancellableShow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
