package org.wikipedia.search;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultsViewModel$loadHybridSearchResults$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public int I$0;
    public int I$1;
    public Object L$0;
    public Object L$5;
    public Object L$6;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultsViewModel$loadHybridSearchResults$2(String str, int i, Continuation continuation) {
        super(2, continuation);
        this.label = i;
        this.this$0 = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                SearchResultsViewModel$loadHybridSearchResults$2 searchResultsViewModel$loadHybridSearchResults$2 = new SearchResultsViewModel$loadHybridSearchResults$2(continuation, (SearchResultsViewModel) obj2);
                searchResultsViewModel$loadHybridSearchResults$2.L$0 = obj;
                return searchResultsViewModel$loadHybridSearchResults$2;
            default:
                return new SearchResultsViewModel$loadHybridSearchResults$2((String) obj2, this.label, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((SearchResultsViewModel$loadHybridSearchResults$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a0, code lost:
    
        if (org.wikipedia.dataclient.Service.CC.deleteList$default(r10, r8, r23) == r1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005f, code lost:
    
        if (r5 == r1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0172, code lost:
    
        if (r0 == r14) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0074  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00a0 -> B:8:0x00a4). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.search.SearchResultsViewModel$loadHybridSearchResults$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultsViewModel$loadHybridSearchResults$2(Continuation continuation, SearchResultsViewModel searchResultsViewModel) {
        super(2, continuation);
        this.this$0 = searchResultsViewModel;
    }
}
