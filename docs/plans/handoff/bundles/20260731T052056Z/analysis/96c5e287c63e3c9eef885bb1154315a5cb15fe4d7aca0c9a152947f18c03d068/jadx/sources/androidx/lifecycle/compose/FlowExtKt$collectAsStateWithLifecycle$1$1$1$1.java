package androidx.lifecycle.compose;

import androidx.compose.runtime.ProduceStateScopeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowExtKt$collectAsStateWithLifecycle$1$1$1$1 implements FlowCollector {
    public final /* synthetic */ ProduceStateScopeImpl $$this$produceState;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FlowExtKt$collectAsStateWithLifecycle$1$1$1$1(ProduceStateScopeImpl produceStateScopeImpl, int i) {
        this.$r8$classId = i;
        this.$$this$produceState = produceStateScopeImpl;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ProduceStateScopeImpl produceStateScopeImpl = this.$$this$produceState;
        switch (i) {
            case 0:
                produceStateScopeImpl.setValue(obj);
                break;
            case 1:
                produceStateScopeImpl.setValue(obj);
                break;
            case 2:
                produceStateScopeImpl.setValue(obj);
                break;
            default:
                produceStateScopeImpl.setValue(obj);
                break;
        }
        return unit;
    }
}
