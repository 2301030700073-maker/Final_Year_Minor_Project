package kotlinx.coroutines.flow;

import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.paging.PageFetcher;
import kotlin.Function;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import org.wikipedia.feed.HomeViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowKt__ZipKt$combine$1$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $transform;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowKt__ZipKt$combine$1$1(int i, Object obj, Continuation continuation) {
        super(3, continuation);
        this.$r8$classId = i;
        this.$transform = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.$transform;
        switch (i) {
            case 0:
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$1 = new FlowKt__ZipKt$combine$1$1((Function3) obj4, (Continuation) obj3, 0);
                flowKt__ZipKt$combine$1$1.L$0 = (FlowCollector) obj;
                flowKt__ZipKt$combine$1$1.L$1 = (Object[]) obj2;
                return flowKt__ZipKt$combine$1$1.invokeSuspend(unit);
            case 1:
                int i2 = 1;
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$12 = new FlowKt__ZipKt$combine$1$1(i2, (CloseableCoroutineScope) obj4, (Continuation) obj3);
                flowKt__ZipKt$combine$1$12.L$0 = (FlowCollector) obj;
                flowKt__ZipKt$combine$1$12.L$1 = obj2;
                return flowKt__ZipKt$combine$1$12.invokeSuspend(unit);
            case 2:
                int i3 = 2;
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$13 = new FlowKt__ZipKt$combine$1$1(i3, (PageFetcher) obj4, (Continuation) obj3);
                flowKt__ZipKt$combine$1$13.L$0 = (FlowCollector) obj;
                flowKt__ZipKt$combine$1$13.L$1 = obj2;
                return flowKt__ZipKt$combine$1$13.invokeSuspend(unit);
            case 3:
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$14 = new FlowKt__ZipKt$combine$1$1((Function3) obj4, (Continuation) obj3, 3);
                flowKt__ZipKt$combine$1$14.L$0 = obj;
                flowKt__ZipKt$combine$1$14.L$1 = obj2;
                return flowKt__ZipKt$combine$1$14.invokeSuspend(unit);
            case 4:
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$15 = new FlowKt__ZipKt$combine$1$1((Function2) obj4, (Continuation) obj3, 4);
                flowKt__ZipKt$combine$1$15.L$0 = (FlowCollector) obj;
                flowKt__ZipKt$combine$1$15.L$1 = obj2;
                return flowKt__ZipKt$combine$1$15.invokeSuspend(unit);
            case 5:
                int i4 = 5;
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$16 = new FlowKt__ZipKt$combine$1$1(i4, (Function4) obj4, (Continuation) obj3);
                flowKt__ZipKt$combine$1$16.L$0 = (FlowCollector) obj;
                flowKt__ZipKt$combine$1$16.L$1 = (Object[]) obj2;
                return flowKt__ZipKt$combine$1$16.invokeSuspend(unit);
            case 6:
                int i5 = 6;
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$17 = new FlowKt__ZipKt$combine$1$1(i5, (Function5) obj4, (Continuation) obj3);
                flowKt__ZipKt$combine$1$17.L$0 = (FlowCollector) obj;
                flowKt__ZipKt$combine$1$17.L$1 = (Object[]) obj2;
                return flowKt__ZipKt$combine$1$17.invokeSuspend(unit);
            default:
                int i6 = 7;
                FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$18 = new FlowKt__ZipKt$combine$1$1(i6, (HomeViewModel) obj4, (Continuation) obj3);
                flowKt__ZipKt$combine$1$18.L$0 = (FlowCollector) obj;
                flowKt__ZipKt$combine$1$18.L$1 = obj2;
                return flowKt__ZipKt$combine$1$18.invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:0x0281, code lost:
    
        if (r2 == r0) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010b, code lost:
    
        if (r0 == r10) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0152, code lost:
    
        if (r2 == r0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0191, code lost:
    
        if (r2 == r0) goto L70;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowKt__ZipKt$combine$1$1(Function function, Continuation continuation, int i) {
        super(3, continuation);
        this.$r8$classId = i;
        this.$transform = function;
    }
}
