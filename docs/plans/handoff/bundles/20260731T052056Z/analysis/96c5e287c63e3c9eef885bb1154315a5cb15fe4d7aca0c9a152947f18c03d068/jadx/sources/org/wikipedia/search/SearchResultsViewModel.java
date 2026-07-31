package org.wikipedia.search;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher$flow$1;
import androidx.paging.PagingSource;
import androidx.paging.PagingState;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__MergeKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultsViewModel extends ViewModel {
    public final StateFlowImpl _hybridSearchResultState;
    public final StateFlowImpl _languageCode;
    public final StateFlowImpl _lexicalResultsForLogging;
    public final StateFlowImpl _refreshSearchResults;
    public final StateFlowImpl _searchTerm;
    public final SharedFlowImpl _searchTermForLogging;
    public final int batchSize = 10;
    public final ArrayList countsPerLanguageCode = new ArrayList();
    public final ReadonlyStateFlow hybridSearchResultState;
    public Constants.InvokeSource invokeSource;
    public final ReadonlyStateFlow languageCode;
    public String lastXSearchIdFullText;
    public String lastXSearchIdPrefix;
    public String lastXSearchIdSemantic;
    public final ReadonlyStateFlow lexicalResultsForLogging;
    public String lexicalResultsTitlesForEvent;
    public final ReadonlySharedFlow searchResultsFlow;
    public final ReadonlyStateFlow searchTerm;
    public final ReadonlySharedFlow searchTermForLogging;
    public String semanticResultsTitlesForEvent;
    public final SemanticSearchService semanticSearchService;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchResultsPagingSource extends PagingSource {
        public final List countsPerLanguageCode;
        public final Constants.InvokeSource invokeSource;
        public final String languageCode;
        public final CallsKt$await$2$1 onFirstPageLoaded;
        public final ByteString.Companion repository;
        public final String searchTerm;

        public SearchResultsPagingSource(String str, String str2, ArrayList arrayList, Constants.InvokeSource invokeSource, ByteString.Companion companion, CallsKt$await$2$1 callsKt$await$2$1) {
            arrayList.getClass();
            this.searchTerm = str;
            this.languageCode = str2;
            this.countsPerLanguageCode = arrayList;
            this.invokeSource = invokeSource;
            this.repository = companion;
            this.onFirstPageLoaded = callsKt$await$2$1;
        }

        @Override // androidx.paging.PagingSource
        public final void getRefreshKey(PagingState pagingState) {
            pagingState.getClass();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x007a A[Catch: Exception -> 0x0091, CancellationException -> 0x0099, TryCatch #2 {CancellationException -> 0x0099, Exception -> 0x0091, blocks: (B:12:0x0028, B:13:0x0072, B:15:0x007a, B:16:0x007f, B:22:0x0035, B:24:0x0039, B:27:0x0040, B:29:0x0044, B:32:0x004b, B:35:0x0065, B:39:0x0089), top: B:8:0x0022 }] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0032  */
        @Override // androidx.paging.PagingSource
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object load(androidx.paging.PagingSource.LoadParams r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
            /*
                r11 = this;
                boolean r0 = r13 instanceof org.wikipedia.search.SearchResultsViewModel$SearchResultsPagingSource$load$1
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == 0) goto L14
                r0 = r13
                org.wikipedia.search.SearchResultsViewModel$SearchResultsPagingSource$load$1 r0 = (org.wikipedia.search.SearchResultsViewModel$SearchResultsPagingSource$load$1) r0
                int r2 = r0.label
                r3 = r2 & r1
                if (r3 == 0) goto L14
                int r2 = r2 - r1
                r0.label = r2
            L12:
                r10 = r0
                goto L1a
            L14:
                org.wikipedia.search.SearchResultsViewModel$SearchResultsPagingSource$load$1 r0 = new org.wikipedia.search.SearchResultsViewModel$SearchResultsPagingSource$load$1
                r0.<init>(r11, r13)
                goto L12
            L1a:
                java.lang.Object r13 = r10.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r10.label
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L32
                if (r2 != r4) goto L2c
                androidx.paging.PagingSource$LoadParams r12 = r10.L$0
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                goto L72
            L2c:
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
                return r3
            L32:
                kotlin.ResultKt.throwOnFailure(r13)
                java.lang.String r13 = r11.searchTerm     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                if (r13 == 0) goto L89
                int r13 = r13.length()     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                if (r13 != 0) goto L40
                goto L89
            L40:
                java.lang.String r13 = r11.languageCode     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                if (r13 == 0) goto L89
                int r13 = r13.length()     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                if (r13 != 0) goto L4b
                goto L89
            L4b:
                okio.ByteString$Companion r2 = r11.repository     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                java.lang.String r3 = r11.searchTerm     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                r13 = r4
                java.lang.String r4 = r11.languageCode     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                org.wikipedia.Constants$InvokeSource r5 = r11.invokeSource     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                java.lang.Object r6 = r12.getKey()     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                int r7 = r12.loadSize     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                java.lang.Object r8 = r12.getKey()     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                if (r8 != 0) goto L64
                r8 = r13
                goto L65
            L64:
                r8 = 0
            L65:
                java.util.List r9 = r11.countsPerLanguageCode     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                r10.L$0 = r12     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                r10.label = r13     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                java.lang.Object r13 = r2.search(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                if (r13 != r0) goto L72
                return r0
            L72:
                org.wikipedia.search.StandardSearchResults r13 = (org.wikipedia.search.StandardSearchResults) r13     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                java.lang.Object r12 = r12.getKey()     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                if (r12 != 0) goto L7f
                coil3.network.okhttp.internal.CallsKt$await$2$1 r11 = r11.onFirstPageLoaded     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                r11.invoke(r13)     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
            L7f:
                androidx.paging.PagingSource$LoadResult$Page r11 = new androidx.paging.PagingSource$LoadResult$Page     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                java.util.ArrayList r12 = r13.results     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                java.lang.Integer r13 = r13.continuation     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                r11.<init>(r12, r13, r1, r1)     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                return r11
            L89:
                androidx.paging.PagingSource$LoadResult$Page r11 = new androidx.paging.PagingSource$LoadResult$Page     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                kotlin.collections.EmptyList r12 = kotlin.collections.EmptyList.INSTANCE     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                r11.<init>(r12, r3, r1, r1)     // Catch: java.lang.Exception -> L91 java.util.concurrent.CancellationException -> L99
                return r11
            L91:
                r0 = move-exception
                r11 = r0
                androidx.paging.PagingSource$LoadResult$Error r12 = new androidx.paging.PagingSource$LoadResult$Error
                r12.<init>(r11)
                return r12
            L99:
                r0 = move-exception
                r11 = r0
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.search.SearchResultsViewModel.SearchResultsPagingSource.load(androidx.paging.PagingSource$LoadParams, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }
    }

    public SearchResultsViewModel() {
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._searchTerm = MutableStateFlow;
        this.searchTerm = new ReadonlyStateFlow(MutableStateFlow);
        SharedFlowImpl MutableSharedFlow$default = StateFlowKt.MutableSharedFlow$default(0, 7, null);
        this._searchTermForLogging = MutableSharedFlow$default;
        this.searchTermForLogging = new ReadonlySharedFlow(MutableSharedFlow$default);
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(null);
        this._lexicalResultsForLogging = MutableStateFlow2;
        this.lexicalResultsForLogging = new ReadonlyStateFlow(MutableStateFlow2);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        StateFlowImpl MutableStateFlow3 = StateFlowKt.MutableStateFlow(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
        this._languageCode = MutableStateFlow3;
        this.languageCode = new ReadonlyStateFlow(MutableStateFlow3);
        StateFlowImpl MutableStateFlow4 = StateFlowKt.MutableStateFlow(UiState.Loading.INSTANCE);
        this._hybridSearchResultState = MutableStateFlow4;
        this.hybridSearchResultState = new ReadonlyStateFlow(MutableStateFlow4);
        StateFlowImpl MutableStateFlow5 = StateFlowKt.MutableStateFlow(0);
        this._refreshSearchResults = MutableStateFlow5;
        this.semanticSearchService = (SemanticSearchService) ServiceFactory.INSTANCE.get(new WikiSite("https://semantic-search.wmcloud.org/"), "https://semantic-search.wmcloud.org/", SemanticSearchService.class);
        this.lastXSearchIdPrefix = "";
        this.lastXSearchIdFullText = "";
        this.lastXSearchIdSemantic = "";
        this.semanticResultsTitlesForEvent = "";
        this.lexicalResultsTitlesForEvent = "";
        this.searchResultsFlow = FlowExtKt.cachedIn(FlowKt__MergeKt.transformLatest(new Prefs$observeKeys$$inlined$filter$1(6, new Flow[]{new SafeFlow(6, new PageFetcher$flow$1.AnonymousClass2(new Data$$ExternalSyntheticLambda0(29), MutableStateFlow, null)), MutableStateFlow3, MutableStateFlow5}, new SearchResultsViewModel$searchResultsFlow$1(4, null)), new PageFetcher$flow$1.AnonymousClass2((Continuation) null, this)), ViewModelKt.getViewModelScope(this));
    }

    public final MapBuilder getHybridEventActionContext(SearchResult searchResult) {
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put("search_id_pre", this.lastXSearchIdPrefix);
        mapBuilder.put("search_id_ful", this.lastXSearchIdFullText);
        mapBuilder.put("search_id_sem", this.lastXSearchIdSemantic);
        if (searchResult != null) {
            mapBuilder.put("position", Integer.valueOf(searchResult.indexInApiCall));
            mapBuilder.put("type", searchResult.type);
        }
        return mapBuilder.build();
    }

    public final Constants.InvokeSource getInvokeSource() {
        Constants.InvokeSource invokeSource = this.invokeSource;
        if (invokeSource != null) {
            return invokeSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
        throw null;
    }

    public final MapBuilder getStandardEventActionContext(SearchResult searchResult) {
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put("search_id_pre", this.lastXSearchIdPrefix);
        mapBuilder.put("search_id_ful", this.lastXSearchIdFullText);
        if (searchResult != null) {
            mapBuilder.put("position", Integer.valueOf(searchResult.indexInApiCall));
            mapBuilder.put("type", searchResult.type);
        }
        return mapBuilder.build();
    }

    public final boolean isHybridSearchExperimentOn() {
        return new HybridSearchAbCTest().isHybridSearchEnabled((String) this.languageCode.$$delegate_0.getValue());
    }

    public final void refreshSearchResults() {
        StateFlowImpl stateFlowImpl = this._refreshSearchResults;
        stateFlowImpl.updateState(null, Integer.valueOf(((Number) stateFlowImpl.getValue()).intValue() + 1));
    }
}
