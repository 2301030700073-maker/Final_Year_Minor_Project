package org.wikipedia.feed;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$placesModule$2 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ FlowCollector L$0;
    public FlowCollector L$1;
    public int label;
    public final /* synthetic */ HomeViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeViewModel$placesModule$2(HomeViewModel homeViewModel, Continuation continuation, int i) {
        super(3, continuation);
        this.$r8$classId = i;
        this.this$0 = homeViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        HomeViewModel homeViewModel = this.this$0;
        FlowCollector flowCollector = (FlowCollector) obj;
        Continuation continuation = (Continuation) obj3;
        switch (i) {
            case 0:
                HomeViewModel$placesModule$2 homeViewModel$placesModule$2 = new HomeViewModel$placesModule$2(homeViewModel, continuation, 0);
                homeViewModel$placesModule$2.L$0 = flowCollector;
                return homeViewModel$placesModule$2.invokeSuspend(unit);
            default:
                HomeViewModel$placesModule$2 homeViewModel$placesModule$22 = new HomeViewModel$placesModule$2(homeViewModel, continuation, 1);
                homeViewModel$placesModule$22.L$0 = flowCollector;
                return homeViewModel$placesModule$22.invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005d, code lost:
    
        if (r3 == r9) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0050, code lost:
    
        if (r1.emit(r4, r16) == r9) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ca, code lost:
    
        if (r3 == r9) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00bd, code lost:
    
        if (r1.emit(r10, r16) == r9) goto L46;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeViewModel$placesModule$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
