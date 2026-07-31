package androidx.lifecycle.compose;

import androidx.compose.runtime.ProduceStateScope;
import androidx.compose.runtime.ProduceStateScopeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowExtKt$collectAsStateWithLifecycle$1$1$1$1 implements FlowCollector {
    public final /* synthetic */ ProduceStateScope $$this$produceState;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FlowExtKt$collectAsStateWithLifecycle$1$1$1$1(ProduceStateScope produceStateScope, int i) {
        this.$r8$classId = i;
        this.$$this$produceState = produceStateScope;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ProduceStateScope produceStateScope = this.$$this$produceState;
        switch (i) {
            case 0:
                ((ProduceStateScopeImpl) produceStateScope).setValue(obj);
                break;
            case 1:
                ((ProduceStateScopeImpl) produceStateScope).setValue(obj);
                break;
            case 2:
                ((ProduceStateScopeImpl) produceStateScope).setValue(obj);
                break;
            default:
                ((ProduceStateScopeImpl) produceStateScope).setValue(obj);
                break;
        }
        return unit;
    }
}
