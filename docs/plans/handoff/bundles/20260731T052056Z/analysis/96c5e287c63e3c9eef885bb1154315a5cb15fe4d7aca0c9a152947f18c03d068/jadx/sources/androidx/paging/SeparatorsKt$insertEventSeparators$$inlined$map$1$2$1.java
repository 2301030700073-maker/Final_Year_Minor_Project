package androidx.paging;

import androidx.compose.material3.ThumbNode$onAttach$1;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowCollector;

/* loaded from: classes.dex */
public final class SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1 extends ContinuationImpl {
    public FlowCollector L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ThumbNode$onAttach$1.AnonymousClass1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1(ThumbNode$onAttach$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.this$0 = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit((Object) null, this);
    }
}
