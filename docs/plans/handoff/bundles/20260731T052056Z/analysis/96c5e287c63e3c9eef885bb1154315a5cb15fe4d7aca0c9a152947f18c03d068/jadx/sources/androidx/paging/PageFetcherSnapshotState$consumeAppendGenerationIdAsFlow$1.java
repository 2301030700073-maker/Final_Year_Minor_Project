package androidx.paging;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PageFetcherSnapshotState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1(PageFetcherSnapshotState pageFetcherSnapshotState, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = pageFetcherSnapshotState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PageFetcherSnapshotState pageFetcherSnapshotState = this.this$0;
        switch (i) {
            case 0:
                return new PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1(pageFetcherSnapshotState, continuation, 0);
            default:
                return new PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1(pageFetcherSnapshotState, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        FlowCollector flowCollector = (FlowCollector) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1) create(flowCollector, continuation)).invokeSuspend(unit);
                break;
            default:
                ((PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1) create(flowCollector, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        PageFetcherSnapshotState pageFetcherSnapshotState = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                pageFetcherSnapshotState.appendGenerationIdCh.mo757trySendJP2dKIU(new Integer(0));
                break;
            default:
                ResultKt.throwOnFailure(obj);
                pageFetcherSnapshotState.prependGenerationIdCh.mo757trySendJP2dKIU(new Integer(0));
                break;
        }
        return unit;
    }
}
