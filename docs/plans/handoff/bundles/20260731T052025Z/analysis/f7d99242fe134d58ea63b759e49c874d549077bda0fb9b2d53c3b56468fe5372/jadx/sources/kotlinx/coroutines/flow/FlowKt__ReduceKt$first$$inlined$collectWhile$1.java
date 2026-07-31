package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowKt__ReduceKt$first$$inlined$collectWhile$1 implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Ref$ObjectRef $result$inlined;

    public /* synthetic */ FlowKt__ReduceKt$first$$inlined$collectWhile$1(int i, Ref$ObjectRef ref$ObjectRef) {
        this.$r8$classId = i;
        this.$result$inlined = ref$ObjectRef;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Ref$ObjectRef ref$ObjectRef = this.$result$inlined;
        switch (i) {
            case 0:
                ref$ObjectRef.element = obj;
                throw new AbortFlowException(this);
            default:
                ref$ObjectRef.element = obj;
                throw new AbortFlowException(this);
        }
    }
}
