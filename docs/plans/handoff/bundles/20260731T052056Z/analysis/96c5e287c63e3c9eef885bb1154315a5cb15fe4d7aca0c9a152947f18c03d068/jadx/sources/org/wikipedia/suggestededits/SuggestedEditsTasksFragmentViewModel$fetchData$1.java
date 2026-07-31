package org.wikipedia.suggestededits;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsTasksFragmentViewModel$fetchData$1 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object L$0;
    public DeferredCoroutine L$2;
    public Deferred L$3;
    public MwQueryResponse L$4;
    public MwQueryResponse L$5;
    public MwQueryResponse L$6;
    public SuggestedEditsTasksFragmentViewModel L$8;
    public int label;
    public final /* synthetic */ SuggestedEditsTasksFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestedEditsTasksFragmentViewModel$fetchData$1(SuggestedEditsTasksFragmentViewModel suggestedEditsTasksFragmentViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = suggestedEditsTasksFragmentViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SuggestedEditsTasksFragmentViewModel$fetchData$1 suggestedEditsTasksFragmentViewModel$fetchData$1 = new SuggestedEditsTasksFragmentViewModel$fetchData$1(this.this$0, continuation);
        suggestedEditsTasksFragmentViewModel$fetchData$1.L$0 = obj;
        return suggestedEditsTasksFragmentViewModel$fetchData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SuggestedEditsTasksFragmentViewModel$fetchData$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0094, code lost:
    
        if (r15 == r2) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x010f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.SuggestedEditsTasksFragmentViewModel$fetchData$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
