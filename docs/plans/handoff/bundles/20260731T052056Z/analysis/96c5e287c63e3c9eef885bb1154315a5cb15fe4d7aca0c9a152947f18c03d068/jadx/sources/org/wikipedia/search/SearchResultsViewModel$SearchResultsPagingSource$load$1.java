package org.wikipedia.search;

import androidx.paging.PagingSource;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.search.SearchResultsViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultsViewModel$SearchResultsPagingSource$load$1 extends ContinuationImpl {
    public PagingSource.LoadParams L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SearchResultsViewModel.SearchResultsPagingSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultsViewModel$SearchResultsPagingSource$load$1(SearchResultsViewModel.SearchResultsPagingSource searchResultsPagingSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = searchResultsPagingSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.load(null, this);
    }
}
