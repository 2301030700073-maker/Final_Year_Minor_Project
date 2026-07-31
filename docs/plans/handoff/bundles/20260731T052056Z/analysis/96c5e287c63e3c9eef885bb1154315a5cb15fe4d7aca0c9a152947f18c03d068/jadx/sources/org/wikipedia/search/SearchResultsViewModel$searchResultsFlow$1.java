package org.wikipedia.search;

import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultsViewModel$searchResultsFlow$1 extends SuspendLambda implements Function4 {
    public /* synthetic */ String L$0;
    public /* synthetic */ String L$1;

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        ((Number) obj3).intValue();
        SearchResultsViewModel$searchResultsFlow$1 searchResultsViewModel$searchResultsFlow$1 = new SearchResultsViewModel$searchResultsFlow$1(4, (Continuation) obj4);
        searchResultsViewModel$searchResultsFlow$1.L$0 = (String) obj;
        searchResultsViewModel$searchResultsFlow$1.L$1 = (String) obj2;
        return searchResultsViewModel$searchResultsFlow$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str = this.L$0;
        String str2 = this.L$1;
        ResultKt.throwOnFailure(obj);
        return new Pair(str, str2);
    }
}
