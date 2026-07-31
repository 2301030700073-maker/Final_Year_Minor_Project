package androidx.datastore.core;

import androidx.datastore.core.SingleProcessDataStore;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SingleProcessDataStore$data$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ SingleProcessDataStore this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SingleProcessDataStore$data$1(SingleProcessDataStore singleProcessDataStore, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        SingleProcessDataStore singleProcessDataStore = this.this$0;
        switch (i) {
            case 0:
                SingleProcessDataStore$data$1 singleProcessDataStore$data$1 = new SingleProcessDataStore$data$1(singleProcessDataStore, continuation, 0);
                singleProcessDataStore$data$1.L$0 = obj;
                return singleProcessDataStore$data$1;
            default:
                SingleProcessDataStore$data$1 singleProcessDataStore$data$12 = new SingleProcessDataStore$data$1(singleProcessDataStore, continuation, 1);
                singleProcessDataStore$data$12.L$0 = obj;
                return singleProcessDataStore$data$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((SingleProcessDataStore$data$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((SingleProcessDataStore$data$1) create((SingleProcessDataStore.Message) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
    
        if (r9 == r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
    
        if (r9 == r0) goto L32;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore$data$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
