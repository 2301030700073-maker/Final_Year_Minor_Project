package org.wikipedia.search;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $lang;
    public final /* synthetic */ String $term;
    public final /* synthetic */ WikiSite $wikiSite;
    public int I$0;
    public /* synthetic */ Object L$0;
    public SearchResultsViewModel L$1;
    public WikiSite L$2;
    public SemanticSearchResults L$4;
    public int label;
    public final /* synthetic */ SearchResultsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1(String str, SearchResultsViewModel searchResultsViewModel, String str2, WikiSite wikiSite, Continuation continuation) {
        super(2, continuation);
        this.$lang = str;
        this.this$0 = searchResultsViewModel;
        this.$term = str2;
        this.$wikiSite = wikiSite;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1 searchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1 = new SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1(this.$lang, this.this$0, this.$term, this.$wikiSite, continuation);
        searchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1.L$0 = obj;
        return searchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c1 A[Catch: all -> 0x0154, TryCatch #0 {all -> 0x0154, blocks: (B:8:0x001a, B:10:0x0132, B:13:0x0143, B:20:0x002e, B:22:0x00a2, B:23:0x00bb, B:25:0x00c1, B:27:0x00cb, B:29:0x00cf, B:30:0x00d3, B:32:0x00d9, B:36:0x00f6, B:37:0x00fa, B:39:0x00fe, B:40:0x0104, B:42:0x010a, B:44:0x010e, B:54:0x003b, B:56:0x0072, B:61:0x0047, B:64:0x0059, B:68:0x0111), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a0  */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.search.SearchResultsViewModel$loadHybridSearchResults$2$semanticDeferred$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
