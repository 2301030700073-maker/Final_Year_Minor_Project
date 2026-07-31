package androidx.paging;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MulticastedPagingData$asPagingData$2 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MulticastedPagingData$asPagingData$2(int i, Object obj, Continuation continuation) {
        super(3, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.this$0;
        Continuation continuation = (Continuation) obj3;
        switch (i) {
            case 0:
                new MulticastedPagingData$asPagingData$2(0, (MulticastedPagingData) obj4, continuation).invokeSuspend(unit);
                break;
            default:
                new MulticastedPagingData$asPagingData$2(1, (Ref$BooleanRef) obj4, continuation).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                ((Ref$BooleanRef) this.this$0).element = true;
                break;
        }
        return unit;
    }
}
